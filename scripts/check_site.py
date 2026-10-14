#!/usr/bin/env python3
"""Validate local file links, HTML anchors and assets without dependencies."""

from collections import Counter
from html.parser import HTMLParser
from pathlib import Path
import re
from urllib.parse import unquote, urlsplit


ROOT = Path(__file__).resolve().parents[1] / "site"


class Document(HTMLParser):
    def __init__(self):
        super().__init__()
        self.ids = Counter()
        self.links = []
        self.topic_links = []
        self.inline_scripts = []
        self.script = None

    def handle_starttag(self, tag, attrs):
        attributes = dict(attrs)
        if tag == 'script' and not attributes.get('src') and attributes.get('type', '') != 'application/json':
            self.script = ''
        if tag == 'a' and 'topic-link' in attributes.get('class', '').split():
            self.topic_links.append(attributes.get('href', ''))
        if attributes.get("id"):
            self.ids[attributes["id"]] += 1
        for key in ("href", "src"):
            if attributes.get(key):
                self.links.append(attributes[key])

    def handle_data(self, data):
        if self.script is not None:
            self.script += data

    def handle_endtag(self, tag):
        if tag == 'script' and self.script is not None:
            self.inline_scripts.append(self.script)
            self.script = None


def main():
    documents = {}
    errors = []
    checked = 0
    for path in sorted(ROOT.rglob("*.html")):
        document = Document()
        document.feed(path.read_text(encoding="utf-8"))
        documents[path] = document
        for anchor, count in document.ids.items():
            if count > 1:
                errors.append(f"{path.relative_to(ROOT)}: duplicate id {anchor!r}")
        for script in document.inline_scripts:
            referenced = re.findall(r'getElementById\([\'\"]([^\'\"]+)[\'\"]\)', script)
            referenced += re.findall(r'querySelector\([\'\"]#([\w-]+)[\'\"]\)', script)
            for anchor in set(referenced):
                if anchor not in document.ids:
                    errors.append(f"{path.relative_to(ROOT)}: interactive script references missing id {anchor!r}")

    if ROOT / "index.html" not in documents:
        errors.append("Missing site/index.html")
    else:
        links = documents[ROOT / "index.html"].topic_links
        paths = [urlsplit(link).path for link in links]
        if not links or len(paths) != len(set(paths)):
            errors.append('Overview topics must each have a unique reading page')
        if any(urlsplit(link).fragment or not link.startswith('topics/') for link in links):
            errors.append('Overview topics must open standalone pages without section hashes')

    for path, document in documents.items():
        for link in document.links:
            url = urlsplit(link)
            if url.scheme or url.netloc:
                continue
            checked += 1
            label = f"{path.relative_to(ROOT)}: {link}"
            if url.path.startswith("/"):
                errors.append(f"{label}: use a relative path for GitHub Pages")
                continue
            target = (path.parent / unquote(url.path)).resolve() if url.path else path
            if not target.is_relative_to(ROOT):
                errors.append(f"{label}: outside site directory")
                continue
            if target.is_dir():
                target /= "index.html"
            if not target.is_file():
                errors.append(f"{label}: missing file")
            elif url.fragment and target in documents:
                if unquote(url.fragment) not in documents[target].ids:
                    errors.append(f"{label}: missing anchor")

    if errors:
        raise SystemExit("\n".join(errors))
    print(f"OK: {len(documents)} HTML pages, {checked} local links/assets checked")


if __name__ == "__main__":
    main()
