#!/usr/bin/env python3
"""Render the overview, current report pages and player-experience algorithm pages."""

from html import escape
from hashlib import sha256
import json
from pathlib import Path
import sys
from level_progression import level_progression
from report_sections import Tree, preserved_chapters
import re

ROOT = Path(__file__).resolve().parents[1]
CSS_VERSION = sha256((ROOT / 'site/assets/site.css').read_bytes()).hexdigest()[:10]
sys.path.insert(0, str(ROOT / "content"))
from topics import GROUPS, TOPICS  # noqa: E402

SOURCES = json.loads((ROOT / "content/sources.json").read_text())
TABLES = json.loads((ROOT / "content/reference-tables.json").read_text())
OVERVIEW_INCREMENTS = json.loads((ROOT / "content/overview-increments.json").read_text())
assert set(OVERVIEW_INCREMENTS) == {topic['key'] for topic in TOPICS}
LEVEL_EXAMPLES = json.loads((ROOT / "content/level-examples.json").read_text())
STATUS = {
    "available": "具体内容可恢复",
    "framework": "需当期外部输入",
    "unavailable": "样本内无原件",
}


# Every overview item has a separate reading page.
DESTINATIONS = {topic['key']: f"topics/{topic['key']}.html" for topic in TOPICS}
MERGED_TOPICS = {
    'special-creation': ('fall-rules', 'special-creation'),
    'hit-spread-timing': ('fall-rules', 'hit-spread-timing'),
    'propeller-targeting': ('obstacle-rules', 'propeller-targeting'),
    'smart-rocket': ('obstacle-rules', 'smart-rocket'),
    'account-offers': ('shop-rules', 'account-offers'),
    'live-price-ads': ('payment', 'live-price-ads'),
}
MERGED_ROUTES_VERSION = sha256(json.dumps(MERGED_TOPICS, sort_keys=True).encode()).hexdigest()[:10]
LEVEL_PAGES = {
    'level-examples': ('真实棋盘例子', '对照四个关卡的数字、布局、草地层与目标。'),
    'tile-codes': ('颜色与道具代码', 'TiledId、GoalType和CellFillType分别对照。'),
    'obstacle-progression': ('障碍登场节奏与分类', '从早期密集教学到后期200关登场节奏，按玩家要处理的事情分类。'),
    'obstacle-first-seen': ('每种障碍的首次关卡', '查询首次关卡、之后再次出现的4关与总出现关数。'),
    'level-rhythm': ('尾号与首现压力', '尾号统计、跨区间重复性与19项首现压力对照。'),
}
LEVEL_LINKS = [
    ('level-examples', '真实棋盘例子'), ('tile-codes', '颜色与道具代码'),
    ('obstacle-progression', '障碍登场节奏与分类'), ('obstacle-first-seen', '每种障碍首现表'),
    ('level-pressure', '配置难度曲线'), ('level-rhythm', '尾号与首现压力'),
]
LEGACY_CHAPTERS = {
    'refill': ('03-mechanism-difficulty.html', ['terms', 'seed-lifecycle', 'refill', 'difficulty-next']),
    'obstacle-rules': ('04-gate-resolution.html', ['gate-matrix']),
    'win-settlement': ('03-mechanism-difficulty.html', ['adaptation']),
    'activity-defaults': ('02-activity-config.html', ['s1', 's2']),
    'schedule-boundaries': ('01-activity-schedule.html', ['activity-2', 'activity-3', 'activity-4', 'activity-5', 'activity-7', 'activity-8']),
    'failure-product': ('06-commercialization-audit.html', ['failure-product', 'rescue']),
    'user-tiers': ('06-commercialization-audit.html', ['shelves']),
    'shop-rules': ('06-commercialization-audit.html', ['decision', 'moments', 'unlock-timeline', 'dynamic', 'golden']),
    'passes': ('06-commercialization-audit.html', ['product-activities']),
    'payment': ('06-commercialization-audit.html', ['payment']),
}
COMMERCE_ALIASES = {
    'user-tiers': 'user-tiers', 'segments': 'user-tiers',
    'adaptive-product': 'user-tiers', 'adaptive': 'user-tiers',
    'experiments': 'experiments', 'boundaries': 'payment', 'gaps': 'commerce-backend',
    'product-decision': 'shop-rules', 'shelf-product': 'user-tiers', 'activities': 'passes',
}


def commerce_aliases(key):
    tree = Tree((ROOT / 'content/report-pages/06-commercialization-audit.html').read_text())
    anchors = set()
    for chapter, owner in COMMERCE_ALIASES.items():
        if owner == key:
            anchors.update(re.findall(r'\bid="([^"]+)"', tree.chapter(chapter)))
    return ''.join(f'<span id="original-{e(anchor)}" class="legacy-anchor"></span>' for anchor in sorted(anchors))


def legacy_routes():
    routes = {}
    for key, (filename, anchors) in LEGACY_CHAPTERS.items():
        routes.setdefault(filename, {}).update({anchor: '../' + topic_url(key) for anchor in anchors})
    routes['06-commercialization-audit.html'].update({
        chapter: '../' + topic_url(owner) + '#original-' + chapter
        for chapter, owner in COMMERCE_ALIASES.items()})
    routes['02-activity-config.html']['s3'] = '../topics/passes.html#data-passes'
    routes['02-activity-config.html']['ar'] = '../topics/passes.html#data-passes'
    routes['03-mechanism-difficulty.html'].update({'curve': '../topics/level-pressure.html', 'colleague': '../topics/level-rhythm.html'})
    routes['07-rea-recovery.html'] = {key: '../' + topic_url(key) for key in [
        'level-config', 'fall-rules', 'obstacle-rules', 'area-tasks', 'distributed-assets',
        'team-flow', 'production-tools', 'social-backend', 'source-projects']}
    routes['07-rea-recovery.html'].update({
        'server-boundary': '../topics/social-backend.html',
        'level-examples-title': '../topics/level-examples.html',
        'tile-code-dictionary': '../topics/tile-codes.html',
        'obstacle-progression': '../topics/obstacle-progression.html',
        'obstacle-categories': '../topics/obstacle-progression.html',
        'obstacle-first-seen': '../topics/obstacle-first-seen.html',
        'level-difficulty': '../topics/level-pressure.html', 'level-rhythm': '../topics/level-rhythm.html',
    })
    for key, (parent, anchor) in MERGED_TOPICS.items():
        target = f'../topics/{parent}.html#{anchor}'
        routes['07-rea-recovery.html'].update({key: target, f'title-{key}': target})
    return routes


def topic_url(key):
    return DESTINATIONS[key]


def e(value):
    return escape(str(value), quote=True)


def reference_tables(name):
    tables = TABLES[name]
    chunks = []
    for table in tables:
        chunks.append(f'<div class="reference-item"><h6>{e(table["title"])}</h6>'
                      f'<div class="data-scroll" tabindex="0" role="region" aria-label="{e(table["title"])}">'
                      f'{table["html"]}</div></div>')
    return ''.join(chunks)


def rocket_demo():
    return ('<div class="rocket-demo"><h4>方向规则演示</h4>'
            '<p class="demo-label">输入是自行设定的示意评分，不计算原版障碍权重，不模拟完整棋盘。</p>'
            '<div class="rocket-inputs"><label for="rocket-horizontal">横向总分 '
            '<input id="rocket-horizontal" type="number" value="12" step="1"></label>'
            '<label for="rocket-vertical">纵向总分 '
            '<input id="rocket-vertical" type="number" value="8" step="1"></label></div>'
            '<output id="rocket-result" for="rocket-horizontal rocket-vertical" aria-live="polite">'
            '横分12大于竖分8：选择横向火箭（30）。</output></div>')


def extras(topic):
    key = topic['key']
    if key == 'passes':
        return '<span id="original-s3" class="legacy-anchor"></span><span id="original-ar" class="legacy-anchor"></span>'
    if key == 'distributed-assets':
        return asset_gallery()
    if key == 'level-config':
        return '<nav class="reading-links" aria-label="初始棋盘内容">' + ''.join(
            f'<a href="{e(key)}.html"><b>{e(title)}</b><span>阅读详情 →</span></a>'
            for key, title in LEVEL_LINKS) + '</nav>'
    if key == 'level-pressure':
        return level_page_content('level-pressure')
    if key == 'fall-rules':
        return ((ROOT / 'content/board-algorithms.html').read_text() +
                (ROOT / 'content/board-state-events.html').read_text())
    if key == 'obstacle-rules':
        return ('<section id="propeller-targeting" aria-labelledby="title-propeller-targeting">'
                '<h3 id="title-propeller-targeting">飞机选点：评分、随机与目标重选</h3>'
                '<div class="flow" aria-label="飞机选点与攻击流程">'
                '<span>过滤与评分</span><b>→</b><span>高分组内抽取</span><b>→</b>'
                '<span>剩余命中与重定向</span><b>→</b><span>登记攻击、飞行与命中</span></div>' +
                (ROOT / 'content/booster-targeting.html').read_text() +
                '<h4>选点与飞行轨迹分别计算</h4>'
                '<p>以上证据解释攻击哪个目标，不解释飞行曲线是否绕开障碍、是否走最短路。'
                '完整飞行曲线仍未恢复；从弯曲的动画轨迹无法判断采用了A*等寻路算法。</p></section>'
                '<section id="smart-rocket" aria-labelledby="title-smart-rocket">'
                '<h3 id="title-smart-rocket">智能火箭：方向与范围收益</h3>' +
                (ROOT / 'content/smart-rocket-overview.html').read_text() +
                (ROOT / 'content/smart-rocket-code.html').read_text() + rocket_demo() + '</section>')
    if key == 'experiments':
        return (ROOT / 'content/ab-tests.html').read_text()
    if key in ('shop-rules', 'user-tiers', 'payment', 'commerce-backend'):
        alias = '<span id="data-commercial-moments" class="legacy-anchor"></span>' if key == 'shop-rules' else ''
        return alias + (ROOT / f'content/commerce-{key}.html').read_text()
    return ''


def asset_gallery():
    source = ROOT / 'content/game-art.json'
    data = json.loads(source.read_text())
    (ROOT / 'site/assets/game-art/manifest.json').write_text(source.read_text())
    groups = []
    records = []
    for group in data['groups']:
        cards = []
        for asset in group['assets']:
            png = ROOT / 'site/assets/game-art' / asset['file']
            assert sha256(png.read_bytes()).hexdigest() == asset['sha256'], png
            url = '../assets/game-art/' + asset['file']
            cards.append(
                f'<figure class="asset-card"><a class="asset-image" href="{e(url)}" '
                f'aria-label="查看{e(asset["label"])}原图">'
                f'<img src="{e(url)}" alt="{e(asset["label"])}解包原图" '
                f'width="{asset["width"]}" height="{asset["height"]}" loading="lazy"></a>'
                f'<figcaption><b>{e(asset["label"])}</b><span>{e(asset["note"])}</span>'
                f'<small>{asset["width"]} × {asset["height"]} · #{e(asset["pathId"])}</small>'
                '</figcaption></figure>')
            records.append(f'<tr><td>{e(asset["label"])}</td><td>{e(asset["pathId"])}</td>'
                           f'<td><code>{e(asset["spriteName"])}</code></td></tr>')
        groups.append(f'<section class="asset-group"><h4>{e(group["title"])}</h4>'
                      f'<p>{e(group["intro"])}</p><div class="asset-grid">{"".join(cards)}</div></section>')
    return ('<section class="asset-gallery" id="asset-gallery"><h3>棋子、道具与障碍物原图</h3>'
            '<p>以下17张PNG来自样本包内的Sprite，保留原尺寸与透明通道。点击图片可查看原图。</p>'
            + ''.join(groups) +
            '<p class="caption">这些是独立贴图；飞机等物体会组合多张贴图，动画还需要旋转、位移、特效和播放时序。</p>'
            '<details class="references"><summary>素材原名与提取记录</summary>'
            '<p>来源：<code>assetpack/assets/bin/Data/datapack.unity3d</code>。'
            '按Sprite名称与pathId对应，文件与提取记录的SHA-256逐项一致。'
            '<a href="../assets/game-art/manifest.json">查看尺寸、透明像素与文件哈希清单</a>。</p>'
            '<div class="data-scroll"><table><thead><tr><th>素材</th><th>pathId</th><th>原Sprite名称</th></tr></thead>'
            f'<tbody>{"".join(records)}</tbody></table></div></details></section>')


def level_examples():
    labels = {0: '无物体', 1: '蓝', 2: '绿', 3: '红', 4: '黄', 5: '粉', 6: '橙',
              10: '飞机', 20: '竖火箭', 30: '横火箭', 40: 'TNT', 50: '光球',
              60: '金币', 11: '补入', 13: '空', 14: '随机', 15: '随机', 16: '随机',
              21: '箱1', 22: '箱2', 23: '箱3', 24: '箱4', 31: '草1', 32: '草2'}
    descriptions = {
        1: ('固定颜色与箱子', '9列×8行，30步。物体层有36个21（Box1）和36颗固定颜色棋子。'
            '配置的y=0–3四排都是箱子，y=4–7四排是颜色棋；例如(x=0,y=4)是1，即蓝棋。'),
        4: ('棋子和草地可以在同一格', '9列×9行，30步。物体层全部是固定颜色，包含1–5五种颜色。'
            '49格还叠有Grass=31的草地，目标表要求清除49格草地。只读物体数组，会漏掉这层草地。'),
        15: ('14表示从颜色池选，不是一种颜色', '9列×9行，23步。物体层包含36个箱子、38个14（Set1）和7颗固定颜色棋。'
             '本关Set1候选是1、3、4、2，即蓝、红、黄、绿。图中的14保留原配置标记；实际开局颜色还取决于种子和生成过程。'
             '另有36格Grass=32的草地层，不能把物体层当作完整棋盘。'),
        20: ('开局就放好TNT', '9列×9行，20步。物体层有79个60（Coin）和2个40（Tnt）。'
             '两个TNT分别在(x=4,y=4)与(x=4,y=5)，不是由随机颜色格生成的。'
             '目标记录是Goal=21（Coin）、Count=0；这里如实保留原字段，不把0解释成“没有金币目标”。'),
    }
    goal_names = {'Box': '箱子', 'Grass': '草地', 'Coin': '金币'}
    cards = []
    for item in LEVEL_EXAMPLES['examples']:
        number, width, height = item['level'], item['width'], item['height']
        title, description = descriptions[number]
        rows = []
        cells = item['cells']
        for y in reversed(range(height)):
            columns = [f'<th scope="row" class="board-axis">{y}</th>']
            for x in range(width):
                index = y * width + x
                value = item['items'][index]
                grass = cells[index].get('Grass', 0) if cells else 0
                grass_class = f' grass-{grass}' if grass else ''
                title_text = f'x={x}, y={y}：{value} {labels.get(value, "物体")}'
                if grass:
                    title_text += f'；草地层 Grass={grass}'
                symbol = labels.get(value, str(value))
                columns.append(f'<td class="tile tile-{value}{grass_class}" title="{e(title_text)}" '
                               f'aria-label="{e(title_text)}"><span>{value}</span><small>{e(symbol)}</small></td>')
            rows.append('<tr>' + ''.join(columns) + '</tr>')
        axis = '<tr><th scope="col" class="board-axis">y／x</th>' + ''.join(
            f'<th scope="col" class="board-axis">{x}</th>' for x in range(width)) + '</tr>'
        goals = []
        for goal in item['goals']:
            name = LEVEL_EXAMPLES['enums']['GoalType'][str(goal['Goal'])]
            goals.append(f'<code>Goal={goal["Goal"]}</code>（{e(goal_names.get(name, name))}），'
                         f'<code>Count={goal["Count"]}</code>')
        source_name = f'level-{number:04d}-example.json'
        cards.append(f'<article class="level-example" id="example-level-{number}">'
                     f'<h4>第{number}关 · {e(title)}</h4><p>{e(description)}</p>'
                     f'<div class="board-scroll" tabindex="0" role="region" aria-label="第{number}关配置棋盘">'
                     f'<table class="config-board" aria-label="第{number}关物体代码与草地层"><thead>{axis}</thead>'
                     f'<tbody>{"".join(rows)}</tbody></table></div>'
                     f'<p class="board-caption">通关目标字段：{"；".join(goals)}。</p>'
                     f'<p class="example-download"><a href="../assets/level-examples/{source_name}" download>'
                     '下载本例配置JSON（含物体、格子层、目标与颜色池）</a></p></article>')
    enums = LEVEL_EXAMPLES['enums']

    def code_table(title, codes, include_goal=False):
        rows = []
        for code in codes:
            symbol = enums['TiledId'][str(code)]
            text = labels.get(code, symbol)
            if 14 <= code <= 16:
                text = f'第{code - 13}个颜色／物体候选池标记'
            elif code == 11:
                text = '填充标记；按对应生成流程解释'
            elif code == 0:
                text = '无物体标记；格子是否存在须结合格子配置'
            elif code == 13:
                text = 'Empty空标记；不是一种颜色'
            elif code in (21, 22, 23, 24):
                text = f'箱子{code - 20}层'
            elif code in (31, 32):
                text = f'草地{code - 30}层；可写在Cells.Grass中'
            row = f'<td><code>{code}</code></td><td><code>{e(symbol)}</code></td><td>{e(text)}</td>'
            if include_goal:
                goal_code = next(k for k, v in enums['GoalType'].items() if v == symbol)
                row += f'<td><code>{goal_code}</code></td>'
            rows.append('<tr>' + row + '</tr>')
        last_header = '<th scope="col">目标代码 GoalType</th>' if include_goal else ''
        return (f'<h4>{e(title)}</h4><div class="data-scroll"><table><thead><tr>'
                '<th scope="col">棋盘代码 TiledId</th><th scope="col">原枚举名</th>'
                f'<th scope="col">对应颜色／物体</th>{last_header}</tr></thead><tbody>{"".join(rows)}</tbody></table></div>')

    booster_table = code_table('道具代码', [10, 20, 30, 40, 50])
    # Rocket has a single goal type regardless of orientation.
    booster_table += '<p>目标表把横、竖火箭合为 <code>GoalType.Rocket=7</code>；飞机为8，TNT为9，光球为10。棋盘里金币为 <code>TiledId.Coin=60</code>，目标表里金币为 <code>GoalType.Coin=21</code>。</p>'
    return ('<section class="level-examples" aria-labelledby="level-examples-title">'
            '<h3 id="level-examples-title">四个真实关卡，直接对照数字与棋盘</h3>'
            '<p>下面直接读取build 38174的关卡配置。颜色、数字和草地边框是便于阅读的配置示意，'
            '不是原版实机截图；随机格保留候选池代码。每格大数字是物体层的TiledId。</p>'
            '<p class="board-legend">坐标从左下角开始：x向右、y向上。绿色边框表示另有草地层，双边框表示Grass=32。'
            '例如索引36在9列棋盘中对应x=0、y=4；读取位置是 <code>Items[y×Width+x]</code>。</p>'
            f'<div class="level-example-grid">{"".join(cards)}</div>'
            '<h3 id="tile-code-dictionary">颜色、道具和配置标记的代码</h3>'
            '<p>棋盘物体用 <code>TiledId</code>，通关目标用 <code>GoalType</code>，'
            '格子的补入类别用 <code>CellFillType</code>。三套枚举分别读取，不能拿同一个数字互相套用。</p>'
            f'{code_table("颜色代码", [1, 2, 3, 4, 5, 6], True)}{booster_table}'
            f'{code_table("例子中的障碍与生成标记", [0, 11, 13, 14, 15, 16, 21, 22, 23, 24, 31, 32])}'
            '<p><code>CellFillType</code>的编号为：None=0、Fill=1、Fill1=2、Fill2=3、Fill3=4。'
            '它描述格子的补入类别，不是棋子颜色；例如第4关同一格可以同时有Items中的颜色编号和Cells.Grass中的31。</p>'
            '<p><a href="../assets/level-examples/code-dictionary.json" download>下载完整代码字典JSON：TiledId、GoalType、CellFillType</a></p>'
            '<details class="evidence"><summary>例子来源与原始字节校验</summary>'
            '<p>四个例子来自无损读取的datapack.unity3d关卡资源，按原客户端FlatBuffers字段签名解码，'
            '物体数组与批量关卡索引交叉核对。下载JSON附原文件位置与SHA-256。'
            '枚举直接取自build 38174 ARM64元数据：TiledId、GoalType、CellFillType。图只展示物体与草地层，'
            '不模拟开局调色、随机数消费、其他障碍层、动画和实际通关。</p></details></section>')


def level_page_content(key):
    if key in ('level-examples', 'tile-codes'):
        full = level_examples()
        before, codes = full.split('<h3 id="tile-code-dictionary">', 1)
        evidence = '<details class="evidence">' + codes.split('<details class="evidence">', 1)[1]
        if key == 'level-examples':
            return before + evidence
        return '<section class="level-examples"><h3 id="tile-code-dictionary">' + codes
    full = level_progression()
    progression, curves = full.split('<section id="level-difficulty"', 1)
    chronology, first_seen = progression.split('<h4 id="obstacle-first-seen">', 1)
    if key == 'obstacle-progression':
        return chronology + '</section>'
    if key == 'obstacle-first-seen':
        return '<section class="level-progression"><h3 id="obstacle-first-seen">' + first_seen.replace('</h4>', '</h3>', 1)
    curve, rhythm = ('<section id="level-difficulty"' + curves).split('<section id="level-rhythm"', 1)
    return curve if key == 'level-pressure' else '<section id="level-rhythm"' + rhythm


REFERENCE_TITLES = {
    'reward-code': '42项奖励代码字典', 'activity-rewards': '默认活动奖励与配置路径',
    'passes': '通行证与阶梯礼包默认明细', 'sku': '金币内容量与SKU清单',
    'popup': '弹窗入口、持久化频控与条件实现', 'levelsets': '14,500关LevelSet数量分布',
    'color-runtime': 'L39五局受控补棋采集结果', 'difficulty-curve': '配置压力公式与每500关聚合表',
    'level-patterns': '尾号、区间与机制首现统计', 'gate-matrix': '30目标×19门控矩阵及根实现',
    'commercial-moments': '各玩家节点的候选商品与条件', 'segments': '分层输入、作用范围与变化方式',
    'expedition': '远征1–5档默认能量内容', 'continue-experiments': '续关首档价格×步数方案',
    'purchase-effects': '购买后状态与下次展示反馈', 'activity-unlocks': '29活动管理器的资格与资源映射',
}


def detail(topic):
    paragraphs = ''.join(f'<h3>{e(title)}</h3><p>{e(text)}</p>' for title, text in topic['sections'])
    refs = []
    for name in topic['refs']:
        if topic['key'] == 'level-pressure':
            continue  # The complete migrated chapter already contains these tables.
        if name not in TABLES:
            continue  # Flow and interactive rule examples are rendered above.
        ref_id = 'gate-matrix' if name == 'gate-matrix' else f'data-{name}'
        refs.append(f'<details class="references" id="{e(ref_id)}"><summary>展开：{e(REFERENCE_TITLES[name])}</summary>'
                    f'{reference_tables(name)}</details>')
    evidence = []
    for key in topic['sources']:
        source = SOURCES[key]
        evidence.append(f'<div class="evidence-entry"><h6>{e(source["title"])}</h6>'
                        f'<p>{e(source["basis"])}。{e(source["detail"])}</p>'
                        f'<p>取证位置：<code>{e(source["locator"])}</code></p></div>')
    extra = extras(topic)
    content = extra + paragraphs if topic['key'] in ('level-config', 'level-pressure', 'distributed-assets') else paragraphs + extra
    return (f'<section id="{e(topic["key"])}" class="topic-detail" '
            f'aria-labelledby="title-{e(topic["key"])}">'
            f'<h2 id="title-{e(topic["key"])}">{e(topic["title"])}</h2>'
            f'<div class="topic-body">{content}{"".join(refs)}'
            f'<details class="evidence"><summary>证据依据与验证范围</summary>{"".join(evidence)}</details>'
            '</div></section>')


def reader_page(key, title, summary, body, related='', comparisons='', status=None):
    availability = (f'<span class="availability {e(status)}">{e(STATUS[status])}</span>' if status else '')
    commerce_script = '<script defer src="../assets/commerce-routes.js"></script>' if any(
        t['key'] == key and t['group'] == 'replication-money' for t in TOPICS) else ''
    return f'''<!DOCTYPE html><html lang="zh-CN"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1"><title>{e(title)} · Royal Match</title>
<link rel="stylesheet" href="../assets/site.css?v={CSS_VERSION}"><script defer src="../assets/topic-reader.js"></script>
<script defer src="../assets/level-progression.js"></script>
<script defer src="../assets/report-deep-links.js"></script>{commerce_script}</head><body class="detail-page">
<header><div class="detail-header"><p class="eyebrow">ROYAL MATCH / RESEARCH NOTES</p>
<p><a class="header-back" href="../index.html#row-{e(key if key in DESTINATIONS else 'level-config')}">← 返回内容总览</a></p>
<h1>{e(title)}</h1><p>{e(summary)}</p></div></header>
<main class="article-wrap"><div class="article-meta">{availability}<span>研究样本：build 38174</span></div>{body}
{comparisons}<nav class="related-topics" aria-label="相关内容"><h2>相关内容</h2>{related}</nav>
<footer><a href="../index.html#row-{e(key if key in DESTINATIONS else 'level-config')}">← 返回内容总览</a></footer></main>
</body></html>'''


def render_topic_page(topic):
    key = topic['key']
    peers = [t for t in TOPICS if t['group'] == topic['group'] and t['key'] != key]
    related = ''.join(f'<a href="{e(t["key"])}.html">{e(t["title"])}</a>' for t in peers)
    if key in ('level-config', 'level-pressure'):
        related = ''.join(f'<a href="{e(k)}.html">{e(title)}</a>' for k, title in LEVEL_LINKS if k != key) + related
    comparisons = '<section class="method-comparison"><h2>人工／实机能做到什么，解包增加什么</h2>' + ''.join(
        f'<p>{e(text)}</p>' for text in topic['comparison']) + '</section>'
    commerce = topic['group'] == 'replication-money'
    navigation = ('<nav class="commerce-navigation" aria-label="商业化内容">' + ''.join(
        f'<a href="{e(t["key"])}.html"' + (' aria-current="page"' if t['key'] == key else '') +
        f'><small>{i:02d}</small>{e(t["title"])}</a>'
        for i, t in enumerate((t for t in TOPICS if t['group'] == 'replication-money'), 1)) + '</nav>') if commerce else ''
    body = navigation + (commerce_aliases(key) if commerce else '') + detail(topic)
    if key in LEGACY_CHAPTERS:
        filename, anchors = LEGACY_CHAPTERS[key]
        routes = {anchor: url.replace('../topics/', '') for anchor, url in legacy_routes()[filename].items()}
        body += preserved_chapters(ROOT / 'content/report-pages' / filename, anchors, routes)
    return reader_page(key, topic['title'], topic['summary'], body, related, comparisons, topic['status'])


def render_level_page(key, title, summary):
    related = '<a href="level-config.html">初始棋盘、关卡配置</a>' + ''.join(
        f'<a href="{e(k)}.html">{e(label)}</a>' for k, label in LEVEL_LINKS if k != key)
    return reader_page(key, title, summary,
                       '<article class="topic-detail"><div class="topic-body">' + level_page_content(key) + '</div></article>', related)


def render_merged_topic_page(parent, anchor):
    title = next(topic['title'] for topic in TOPICS if topic['key'] == parent)
    target = f'{parent}.html#{anchor}'
    return f'''<!DOCTYPE html><html lang="zh-CN"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1"><title>{e(title)} · Royal Match</title>
<link rel="canonical" href="{e(parent)}.html"><script defer src="../assets/merged-board-routes.js?v={MERGED_ROUTES_VERSION}"></script>
</head><body><p><a href="{e(target)}">进入{e(title)} →</a></p></body></html>'''


def render_recovery_report():
    # Keep old addresses as a small directory; the routing script opens their page.
    aliases = set(legacy_routes()['07-rea-recovery.html'])
    aliases.update(json.loads((ROOT / 'content/legacy-anchors.json').read_text())['07-rea-recovery.html'])
    aliases.update(f'example-level-{x["level"]}' for x in LEVEL_EXAMPLES['examples'])
    aliases.update(['level-examples-title', 'tile-code-dictionary', 'gate-matrix'])
    for topic in TOPICS:
        aliases.add('title-' + topic['key'])
        aliases.update('data-' + ref for ref in topic['refs'])
    aliases.update('obstacle-' + r['key'] for r in json.loads((ROOT / 'content/level-progression.json').read_text())['records'])
    spans = ''.join(f'<span id="{e(anchor)}"></span>' for anchor in sorted(aliases))
    links = ''.join(f'<a href="../{e(topic_url(t["key"]))}">{e(t["title"])}</a>' for t in TOPICS if t['group'] == 'replication-core')
    links += ''.join(f'<a href="../topics/{e(key)}.html">{e(title)}</a>' for key, title in LEVEL_LINKS)
    return f'''<!DOCTYPE html><html lang="zh-CN"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>玩法与客户端内容 · Royal Match</title><link rel="stylesheet" href="../assets/site.css?v={CSS_VERSION}">
<script defer src="../assets/legacy-report-routes.js"></script></head><body class="detail-page">
<header><div class="detail-header"><a class="header-back" href="../index.html">← 返回内容总览</a><h1>玩法与客户端内容</h1></div></header>
<main class="article-wrap">{spans}<nav class="reading-links" aria-label="独立内容页面">{links}</nav></main></body></html>'''



def render_site():
    overview_version = sha256(json.dumps([DESTINATIONS, MERGED_TOPICS], sort_keys=True).encode()).hexdigest()[:10]
    groups = []
    for group_id, title, desc in GROUPS:
        topics = [topic for topic in TOPICS if topic['group'] == group_id]
        rows = []
        for topic in topics:
            key = e(topic['key'])
            comparison = f'<p>{e(OVERVIEW_INCREMENTS[topic["key"]])}</p>'
            rows.append(f'<tr class="overview-item"><th scope="row" id="row-{key}">'
                        f'<a class="topic-link" href="{e(topic_url(topic["key"]))}">'
                        f'{e(topic["title"])}<span class="action">查看详情 →</span></a></th>'
                        f'<td>{e(topic["summary"])}</td><td><span class="availability {e(topic["status"])}">'
                        f'{e(STATUS[topic["status"]])}</span></td><td class="comparison">{comparison}</td></tr>')
        groups.append(f'<section class="group" id="{group_id}"><div class="group-head">'
                      f'<h3>{title}</h3><p>{desc}</p></div><div class="overview-scroll">'
                      f'<table class="overview-table" aria-label="{title}具体内容与研究方式比较">'
                      '<colgroup><col><col><col><col></colgroup><thead><tr>'
                      '<th scope="col">具体内容</th><th scope="col">目前能拿到什么</th>'
                      '<th scope="col">可得性</th><th scope="col">解包增量</th>'
                      f'</tr></thead><tbody>{"".join(rows)}</tbody></table></div></section>')
    return f'''<!DOCTYPE html>
<html lang="zh-CN"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description" content="Royal Match客户端规则与玩家体验解读：棋盘、飞机目标、智能火箭、补棋、活动与商业化，逐项比较人工／实机能力与解包带来的新增信息。">
<title>Royal Match · 玩法、体验算法与研发可得性</title>
<link rel="stylesheet" href="assets/site.css?v={CSS_VERSION}"><script defer src="assets/overview-links.js?v={overview_version}"></script>
</head><body>
<header><div class="header-inner"><div><p class="eyebrow">ROYAL MATCH / RESEARCH NOTES</p>
<h1>从具体内容，读懂游戏规则</h1><p>三消玩法、外围 Meta 与商业化的统一结论。点击内容名称，进入独立报告页，阅读机制、体验影响、数据与证据。</p></div>
<div class="edition"><b>{len(TOPICS)} 个内容项</b><span>研究样本：build 38174</span><span>内容核对：2026-10-15</span></div></div></header>
<main class="wrap" id="replication-overview"><div class="intro"><div><h2>能拿到什么，能解释到哪里</h2>
<p>“具体内容可恢复”表示客户端中存在数据或实现，实际取得与验证进度写在每项中；不表示完整复刻已完成。</p>
<p>“解包增量”简述相较人工、实机、视频与测评新增的信息；完整说明见详情页。</p></div>
<div class="legend"><p><span class="availability available">具体内容可恢复</span> 包内数据或客户端实现</p>
<p><span class="availability framework">需当期外部输入</span> 缺实际账号／平台响应</p>
<p><span class="availability unavailable">样本内无原件</span> 原工具、后台或制作工程</p></div></div>
<nav class="overview-nav" aria-label="内容分类"><a href="#replication-core">三消玩法</a><a href="#replication-meta">外围 Meta</a>
<a href="#replication-money">商业化</a><a href="topics/obstacle-rules.html">重点：道具寻优</a></nav>
<details class="research-method" id="research-method"><summary>阅读口径：代码能解释原因，实机与测评验证实际发生了什么</summary>
<p>包内配置证明样本包含的内容；原生代码证明指定分支的计算与状态转移；受控实机记录证明该测试条件下的结果。
本页将设计解读和教学示意明确标出，未验证的分支保持未验证。实机视频和测评继续用于核对画面、节奏、输入感受与自然玩家体验。</p>
<p>解包可以减少逐项抄录、帮助定位待测分支；当前价格、实际投放和玩家体验仍需对应响应或实机记录。没有同口径耗时记录，不给提速倍数。
自动导出量、函数入口数、局部反编译成功数也不等于语义恢复或可执行复刻完成。</p>
<p>样本与来源绑定到文件和函数位置；元数据名称不代替行为，资源主题不代替排期，有限响应不代替后台决策公式。</p>
<p><a href="reports/05-unpack-methodology.html">阅读完整解包方法论：工具链、SOP、常见陷阱与证据分级 →</a></p></details>
<p class="mobile-hint">表格可左右滑动。点击第一列进入该内容的独立页面。</p>
{"".join(groups)}
<footer>研究范围为已取得的 Royal Match build 38174 样本；不代表线上最新游戏版本或当前账号配置。
<a href="https://github.com/KentXu0911/game-unpack-reports">站点仓库</a> · 各条目进入独立内容页面。</footer>
</main></body></html>'''


def write_legacy_routes():
    routes = legacy_routes()
    commercial = Tree((ROOT / 'content/report-pages/06-commercialization-audit.html').read_text())
    for chapter, owner in COMMERCE_ALIASES.items():
        for nested in re.findall(r'\bid="([^"]+)"', commercial.chapter(chapter)):
            routes['06-commercialization-audit.html'][nested] = f'../topics/{owner}.html#original-{nested}'
    for key, (filename, anchors) in LEGACY_CHAPTERS.items():
        tree = Tree((ROOT / 'content/report-pages' / filename).read_text())
        for anchor in anchors:
            for nested in re.findall(r'\bid="([^"]+)"', tree.chapter(anchor)):
                if nested not in routes[filename]:
                    routes[filename][nested] = f'../topics/{key}.html#original-{nested}'
    routes['07-rea-recovery.html']['$default'] = '../topics/level-config.html'
    routes['07-rea-recovery.html']['evidence'] = '../reports/05-unpack-methodology.html'
    script = '''(() => {
  const routes = ROUTES;
  const page = location.pathname.split('/').pop();
  const targets = routes[page];
  if (!targets) return;
  function navigate() {
    let key;
    try { key = decodeURIComponent(location.hash.slice(1)); } catch { return; }
    let target = targets[key] || (!key && targets.$default);
    if (!target && page === '07-rea-recovery.html') {
      if (key.startsWith('obstacle-')) target = '../topics/obstacle-first-seen.html#' + encodeURIComponent(key);
      if (key.startsWith('example-level-')) target = '../topics/level-examples.html#' + encodeURIComponent(key);
    }
    if (target) location.replace(target);
  }
  window.addEventListener('hashchange', navigate);
  navigate();
})();
'''
    (ROOT / 'site/assets/legacy-report-routes.js').write_text(
        script.replace('ROUTES', json.dumps(routes, ensure_ascii=True)))


def main():
    evidence_root = ROOT / 'site/assets/evidence/ab-tests'
    ab_manifest = json.loads((evidence_root / 'manifest.json').read_text())
    ab_catalog = json.loads((evidence_root / 'catalog.json').read_text())
    assert len(ab_catalog['constants']) == ab_catalog['constantCount'] == 107
    assert len({row['theme'] for row in ab_catalog['constants']}) == ab_catalog['normalizedThemeCount'] == 55
    for method in ab_manifest['methods']:
        path = evidence_root / Path(method['file']).with_suffix('.bin')
        assert sha256(path.read_bytes()).hexdigest() == method['sha256'], path
        listing = evidence_root / method['file']
        assert sha256(listing.read_bytes()).hexdigest() == method['listingSha256'], listing
    for name, checksum in ab_manifest['supplementaryFiles'].items():
        assert sha256((evidence_root / name).read_bytes()).hexdigest() == checksum, name
    keys = [topic['key'] for topic in TOPICS]
    assert len(keys) == len(set(keys)), 'Duplicate topic key'
    assert set(keys) == set(DESTINATIONS), 'Every content item needs a detail page'
    assert len(set(DESTINATIONS.values())) == len(keys), 'Each topic needs a unique page'
    used_refs = [ref for topic in TOPICS for ref in topic['refs'] if ref in TABLES]
    assert len(used_refs) == len(set(used_refs)), 'Reference table ids must be unique'
    for topic in TOPICS:
        assert topic['status'] in STATUS and len(topic['comparison']) == 2
        assert all(key in SOURCES for key in topic['sources'])
    examples_dir = ROOT / 'site/assets/level-examples'
    examples_dir.mkdir(exist_ok=True)
    for example in LEVEL_EXAMPLES['examples']:
        assert len(example['items']) == example['width'] * example['height']
        assert not example['cells'] or len(example['cells']) == len(example['items'])
        (examples_dir / f'level-{example["level"]:04d}-example.json').write_text(
            json.dumps(dict(build=LEVEL_EXAMPLES['build'], **example), ensure_ascii=False, indent=2) + '\n')
    (examples_dir / 'code-dictionary.json').write_text(json.dumps({
        'build': LEVEL_EXAMPLES['build'], 'enums': LEVEL_EXAMPLES['enums'],
        'source': LEVEL_EXAMPLES['enum_source'], 'sha256': LEVEL_EXAMPLES['enum_sha256'],
    }, ensure_ascii=False, indent=2) + '\n')
    (ROOT / 'site/assets/level-progression.json').write_text(
        (ROOT / 'content/level-progression.json').read_text())
    (ROOT / 'site/index.html').write_text(render_site())
    for source in (ROOT / 'content/report-pages').glob('*.html'):
        (ROOT / 'site/reports' / source.name).write_text(source.read_text().replace('</head>', '<script defer src="../assets/legacy-report-routes.js"></script></head>'))
    (ROOT / 'site/reports/07-rea-recovery.html').write_text(render_recovery_report())
    (ROOT / 'site/topics').mkdir(exist_ok=True)
    for topic in TOPICS:
        (ROOT / f'site/topics/{topic["key"]}.html').write_text(render_topic_page(topic))
    for key, (parent, anchor) in MERGED_TOPICS.items():
        (ROOT / f'site/topics/{key}.html').write_text(render_merged_topic_page(parent, anchor))
    for key, (title, summary) in LEVEL_PAGES.items():
        (ROOT / f'site/topics/{key}.html').write_text(render_level_page(key, title, summary))
    write_legacy_routes()
    commerce_targets = {f'original-{chapter}': f'{owner}.html' for chapter, owner in COMMERCE_ALIASES.items()}
    commercial = Tree((ROOT / 'content/report-pages/06-commercialization-audit.html').read_text())
    for owner, (filename, chapters) in LEGACY_CHAPTERS.items():
        if filename != '06-commercialization-audit.html':
            continue
        for chapter in chapters:
            for nested in re.findall(r'\bid="([^"]+)"', commercial.chapter(chapter)):
                commerce_targets[f'original-{nested}'] = f'{owner}.html'
    for chapter, owner in COMMERCE_ALIASES.items():
        for nested in re.findall(r'\bid="([^"]+)"', commercial.chapter(chapter)):
            commerce_targets[f'original-{nested}'] = f'{owner}.html'
    (ROOT / 'site/assets/commerce-routes.js').write_text(
        '(() => {\n  const targets = ' + json.dumps(commerce_targets, ensure_ascii=True) + ';\n'
        "  function navigate() {\n"
        "    let hash; try { hash = decodeURIComponent(location.hash.slice(1)); } catch { return; }\n"
        "    if (!targets[hash] || document.getElementById(hash)) return;\n"
        "    if (location.pathname.split('/').pop() === targets[hash]) return;\n"
        "    const url = new URL(targets[hash], location.href);\n"
        "    url.search = location.search; url.hash = location.hash; location.replace(url.href);\n"
        "  }\n  window.addEventListener('hashchange', navigate);\n  navigate();\n})();\n")
    merged_routes = {f'{key}.html': f'{parent}.html#{anchor}'
                     for key, (parent, anchor) in MERGED_TOPICS.items()}
    merged_hashes = {}
    for chapter in ('dynamic', 'adaptive-product', 'adaptive'):
        owner = COMMERCE_ALIASES.get(chapter, 'shop-rules')
        for nested in re.findall(r'\bid="([^"]+)"', Tree((ROOT / 'content/report-pages/06-commercialization-audit.html').read_text()).chapter(chapter)):
            merged_hashes[f'original-{nested}'] = f'{owner}.html#original-{nested}'
    (ROOT / 'site/assets/merged-board-routes.js').write_text(
        '(() => {\n  const targets = ' + json.dumps(merged_routes, ensure_ascii=True) + ';\n'
        '  const accountHashes = ' + json.dumps(merged_hashes, ensure_ascii=True) + ';\n'
        "  const page = location.pathname.split('/').pop();\n"
        "  let hash; try { hash = decodeURIComponent(location.hash.slice(1)); } catch { hash = ''; }\n"
        "  const mapped = page === 'account-offers.html' && accountHashes[hash];\n"
        "  const target = mapped || targets[page];\n"
        "  if (target) {\n"
        "    const url = new URL(target, location.href);\n"
        "    url.search = location.search;\n"
        "    if (location.hash && !mapped) url.hash = location.hash;\n"
        "    location.replace(url.href);\n"
        "  }\n"
        '})();\n')
    redirects = dict(DESTINATIONS, **{'gate-matrix': 'topics/obstacle-rules.html'})
    for key, (parent, anchor) in MERGED_TOPICS.items():
        redirects[key] = f'topics/{parent}.html#{anchor}'
        redirects[f'row-{key}'] = f'index.html#row-{parent}'
    for topic in TOPICS:
        for name in topic['refs']:
            if name in TABLES and name != 'gate-matrix':
                redirects[f'data-{name}'] = topic_url(topic['key'])
    redirects['data-level-patterns'] = 'topics/level-rhythm.html'
    redirects['data-continue-experiments'] = 'topics/experiments.html#ab-continue-pricing'
    redirects['data-commercial-moments'] = 'topics/shop-rules.html#original-moments'
    (ROOT / 'site/assets/overview-links.js').write_text(
        '(() => {\n  const targets = ' + json.dumps(redirects, ensure_ascii=True) + ';\n'
        "  function navigate() {\n    let key;\n    try { key = decodeURIComponent(location.hash.slice(1)); } catch { return; }\n"
        "    if (Object.prototype.hasOwnProperty.call(targets, key)) location.replace(targets[key]);\n"
        "  }\n  window.addEventListener('hashchange', navigate);\n  navigate();\n})();\n")
    print(f'Built {len(TOPICS)} independent overview pages and {len(LEVEL_PAGES)} level detail pages; preserved legacy reports')


if __name__ == '__main__':
    main()
