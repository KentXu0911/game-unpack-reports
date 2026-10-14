"""Keep complete legacy chapters, diagrams and interactions on topic pages."""
from dataclasses import dataclass, field
from html.parser import HTMLParser
from pathlib import Path
import re

VOID={'area','base','br','col','embed','hr','img','input','link','meta','param','source','track','wbr'}

@dataclass
class Node:
    tag: str
    attrs: dict
    start: int
    end: int = 0
    parent: object = None
    children: list = field(default_factory=list)

class Tree(HTMLParser):
    def __init__(self, text):
        super().__init__(convert_charrefs=False)
        self.text=text; self.lines=[0]
        for match in re.finditer('\n', text): self.lines.append(match.end())
        self.root=Node('document',{},0,len(text)); self.stack=[self.root]; self.ids={};self.nodes=[]
        self.feed(text)
    def source_position(self):
        line,col=self.getpos();return self.lines[line-1]+col
    def handle_starttag(self,tag,attrs):
        start=self.source_position();node=Node(tag,dict(attrs),start,start+len(self.get_starttag_text()),self.stack[-1])
        self.stack[-1].children.append(node);self.nodes.append(node)
        if node.attrs.get('id'):self.ids[node.attrs['id']]=node
        if tag not in VOID:self.stack.append(node)
    def handle_startendtag(self,tag,attrs):
        self.handle_starttag(tag,attrs)
        if self.stack[-1].tag==tag:self.stack.pop()
    def handle_endtag(self,tag):
        for i in range(len(self.stack)-1,0,-1):
            if self.stack[i].tag==tag:
                end=self.text.find('>',self.source_position())+1
                for node in self.stack[i:]:node.end=end
                del self.stack[i:];break
    def chapter(self,anchor):
        node=self.ids[anchor]
        if node.tag not in {'h1','h2','h3'}:
            return self.text[node.start:node.end]
        siblings=node.parent.children;index=siblings.index(node)
        end=node.parent.end
        for sibling in siblings[index+1:]:
            if sibling.tag==node.tag or sibling.tag in {'footer','script'}:
                end=sibling.start;break
        # Exclude the parent's closing tag if this is the final heading.
        if end==node.parent.end:
            closing=self.text.rfind('</'+node.parent.tag,node.start,end)
            if closing>=0:end=closing
        return self.text[node.start:end]
    def contents(self,node):
        start=self.text.find('>',node.start)+1;end=self.text.rfind('</',start,node.end)
        return self.text[start:end]


def preserved_chapters(path, anchors, routes):
    source=path.read_text();tree=Tree(source)
    content='\n'.join(tree.chapter(anchor) for anchor in anchors)
    content=re.sub(r'<script\b[^>]*>.*?</script>', '', content, flags=re.S)
    ids=set(re.findall(r'\bid="([^"]+)"',content))
    def link(match):
        anchor=match.group(1)
        if anchor in ids:return 'href="#original-'+anchor+'"'
        destination=routes.get(anchor)
        if destination:return 'href="'+destination+'"'
        return 'href="../reports/'+path.name+'#'+anchor+'"'
    content=re.sub(r'href="#([^"]+)"',link,content)
    # Legacy reports and new topic pages share the same directory depth, but
    # sibling report filenames need an explicit path from topics/.
    content=re.sub(r'href="((?:0[1-7])-[^"/#]+\.html)(#[^"]*)?"',
                   lambda m:'href="../reports/'+m.group(1)+(m.group(2) or '')+'"',content)
    content=re.sub(r'\bid="([^"]+)"',lambda m:'id="original-'+m.group(1)+'"',content)
    for anchor in sorted(ids,key=len,reverse=True):
        content=content.replace('url(#'+anchor+')','url(#original-'+anchor+')')
    content=re.sub(r'(aria-labelledby|aria-describedby)="([^"]+)"',
                   lambda m:m.group(1)+'="'+' '.join('original-'+x if x in ids else x for x in m.group(2).split())+'"',content)
    styles=[];scripts=[]
    for node in tree.nodes:
        if node.tag=='style':
            css=tree.contents(node)
            css=re.sub(r':root\s*\{([^}]*)\}',lambda m:'.original-report{'+m.group(1)+'}',css)
            for anchor in sorted(ids,key=len,reverse=True):
                css=re.sub(r'#'+re.escape(anchor)+r'(?![\w-])','#original-'+anchor,css)
            styles.append(css)
        if node.tag=='script' and not node.attrs.get('src'):
            code=tree.contents(node)
            targets=re.findall(r"getElementById\(['\"]([^'\"]+)['\"]\)",code)
            visible=[anchor for anchor in targets if anchor in ids]
            if not visible:continue
            for anchor in sorted(ids,key=len,reverse=True):
                code=code.replace("'"+anchor+"'","'original-"+anchor+"'")
                code=code.replace('"'+anchor+'"','"original-'+anchor+'"')
                code=re.sub(r'#'+re.escape(anchor)+r'(?![\w-])','#original-'+anchor,code)
            scripts.append("if (document.getElementById('original-"+visible[0]+"')) {\n"+code+'\n}')
    style='<style>@scope (.original-report) {\n'+'\n'.join(styles)+'\n}</style>'
    script='<script>(() => {\n'+'\n'.join(scripts)+'\n})();</script>' if scripts else ''
    return style+'<div class="original-report">'+content+'</div>'+script
