#!/usr/bin/env python3
"""Render the overview, current report pages and player-experience algorithm pages."""

from html import escape
import json
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "content"))
from topics import GROUPS, TOPICS  # noqa: E402

SOURCES = json.loads((ROOT / "content/sources.json").read_text())
TABLES = json.loads((ROOT / "content/reference-tables.json").read_text())
LEVEL_EXAMPLES = json.loads((ROOT / "content/level-examples.json").read_text())
STATUS = {
    "available": "具体内容可恢复",
    "framework": "需当期外部输入",
    "unavailable": "样本内无原件",
}


# Link content items to the relevant full report chapter. New algorithm notes
# have their own pages; the earlier reports remain the detailed reading surface.
DESTINATIONS = {
    'level-config': 'reports/07-rea-recovery.html#level-config',
    'refill': 'reports/03-mechanism-difficulty.html#seed-lifecycle',
    'fall-rules': 'reports/07-rea-recovery.html#fall-rules',
    'obstacle-rules': 'reports/04-gate-resolution.html#gate-matrix',
    'win-settlement': 'reports/03-mechanism-difficulty.html#adaptation',
    'level-pressure': 'reports/03-mechanism-difficulty.html#curve',
    'production-tools': 'reports/07-rea-recovery.html#production-tools',
    'area-tasks': 'reports/07-rea-recovery.html#area-tasks',
    'activity-defaults': 'reports/02-activity-config.html#s2',
    'schedule-boundaries': 'reports/01-activity-schedule.html#activity-7',
    'team-flow': 'reports/07-rea-recovery.html#team-flow',
    'distributed-assets': 'reports/07-rea-recovery.html#distributed-assets',
    'social-backend': 'reports/07-rea-recovery.html#server-boundary',
    'source-projects': 'reports/07-rea-recovery.html#source-projects',
    'failure-product': 'reports/06-commercialization-audit.html#failure-product',
    'user-tiers': 'reports/06-commercialization-audit.html#user-tiers',
    'shop-rules': 'reports/06-commercialization-audit.html#product-activities',
    'passes': 'reports/02-activity-config.html#s2',
    'account-offers': 'reports/06-commercialization-audit.html#dynamic',
    'payment': 'reports/06-commercialization-audit.html#payment',
    'live-price-ads': 'reports/06-commercialization-audit.html#boundaries',
    'experiments': 'reports/06-commercialization-audit.html#experiments',
    'commerce-backend': 'reports/06-commercialization-audit.html#gaps',
}
ALGORITHM_KEYS = ['propeller-targeting', 'smart-rocket', 'special-creation', 'hit-spread-timing']
DESTINATIONS.update({key: f'topics/{key}.html' for key in ALGORITHM_KEYS})


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


def profiles():
    items = [
        ("Dynamic Offer", "资格与分组决定配置行，首页、Favor、商店有三套优先级；最大购买次数与本地已购记录参与过滤。实际活动正文与账号分组需要响应。", None),
        ("Royal／Weekly Pass", "进度免费／付费双轨；购买激活当期付费轨，可按状态回补已达节点，不计入常规Bundle／Single最高购买档。两种Pass有独立SKU与实验路径。", "pass-scene.webp"),
        ("Ladder／Journey", "付费和免费节点交替；产品路径由分组消费，3／6是领取节奏。未取得后台分组公式，当期主题与正文需响应。", "journey-background.webp"),
        ("Short Expedition", "日礼包、Pass、能量商店、单次能量包与结束礼包并存。日礼包1–5档换期更新，具体状态机见“用户分层”；包内默认能量表不是当地售价。", "expedition-daily-offer.webp"),
        ("Merge Smith", "组4／5／6支持活动Offer，组4走低价分支，组6开启金币解锁；金币价在当期活动配置，付费奖励跟随活动进度。", "merge-offer-scene.webp"),
        ("Team Offer", "客户端L24资格、24小时活动与12小时提醒，金／银／铜三档。购买后有本人奖励与团队聊天领取路径；当期正文和队友到账仍需验证。", None),
        ("Golden Offers／Coin Shop", "服务器发活动ID、剩余时间、配置版本和正文；客户端根据视图选3商品或全表，排除已购。失败页Coin Shop Ego与此共用配置池。", "coin-shop-coin.webp"),
        ("Extremely Hard Offer", "最低客户端资格L149，再检查实验、后台禁用、资源就绪和关型；付费身份决定产品版本。解锁资格不代表当期必投放。", "extreme-background.webp"),
        ("Supercharge", "金币恢复局前强化状态，有远端配置与本地实验分支；失败页可给入口，实际恢复发生在相关局前流程。当前账号价格需要对应配置，不列过期快照为实时价。", "supercharge-frame.webp"),
        ("限时外观", "头像框、昵称样式或合包具有独立领取状态；主题、外观ID、价格与投放范围由当期内容决定。产品档20／30不表示美元金额。", "worldcup-crown.webp"),
        ("激励广告／No Ads", "资格、冷却和实验决定可达入口。No Ads对插屏／失败续关广告和生命／金币激励广告的作用范围不同；自动弹窗路径在所查build返回false。", "no-ads-icon.webp"),
    ]
    output = ['<details class="references"><summary>展开11类活动与商品的具体档案</summary>']
    for name, text, asset in items:
        picture = (f'<img loading="lazy" src="../assets/commercialization/{asset}" alt="{e(name)}包内分发素材示例">'
                   '<p class="caption">包内分发素材示例；用于识别商品主题，不是当期实机页面或实价证明。</p>') if asset else ''
        output.append(f'<details class="activity-profile"><summary>{e(name)}</summary><p>{e(text)}</p>{picture}</details>')
    return ''.join(output) + '</details>'


def extras(topic):
    key = topic['key']
    if key == 'level-config':
        return level_examples()
    if key == 'propeller-targeting':
        return ('<div class="flow" aria-label="已定位的飞机目标处理链">'
                '<span>寻找候选目标</span><b>→</b><span>检查目标能否命中</span><b>→</b>'
                '<span>飞往所选目标</span><b>→</b><span>引爆或接上组合攻击</span></div>'
                '<p class="flow-note">完整的目标分值、重选规则与飞行曲线仍待确认。</p>')
    if key == 'smart-rocket':
        return ('<div class="rocket-demo"><h5>方向规则演示</h5>'
                '<p class="demo-label">输入是自行设定的示意评分，不计算原版障碍权重，不模拟完整棋盘。</p>'
                '<div class="rocket-inputs"><label for="rocket-horizontal">横向总分 '
                '<input id="rocket-horizontal" type="number" value="12" step="1"></label>'
                '<label for="rocket-vertical">纵向总分 '
                '<input id="rocket-vertical" type="number" value="8" step="1"></label></div>'
                '<output id="rocket-result" for="rocket-horizontal rocket-vertical" aria-live="polite">'
                '横分12大于竖分8：选择横向火箭（30）。</output></div>')
    if key == 'shop-rules':
        return profiles()
    return ''


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
    content = extra + paragraphs if topic['key'] == 'level-config' else paragraphs + extra
    return (f'<section id="{e(topic["key"])}" class="topic-detail" '
            f'aria-labelledby="title-{e(topic["key"])}">'
            f'<h2 id="title-{e(topic["key"])}">{e(topic["title"])}</h2>'
            f'<div class="topic-body">{content}{"".join(refs)}'
            f'<details class="evidence"><summary>证据依据与验证范围</summary>{"".join(evidence)}</details>'
            '</div></section>')


def render_topic_page(topic):
    group = next(group for group in GROUPS if group[0] == topic['group'])
    related = ''.join(f'<a href="../{e(topic_url(key))}">{e(next(t["title"] for t in TOPICS if t["key"] == key))}</a>'
                      for key in ALGORITHM_KEYS if key != topic['key'])
    comparisons = ''.join(f'<p>{e(text)}</p>' for text in topic['comparison'])
    return f'''<!DOCTYPE html><html lang="zh-CN"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1"><title>{e(topic['title'])} · Royal Match</title>
<link rel="stylesheet" href="../assets/site.css"><script defer src="../assets/topic-reader.js"></script>
<script defer src="../assets/report-deep-links.js"></script></head><body class="detail-page">
<header><div class="detail-header"><p class="eyebrow">ROYAL MATCH / PLAYER EXPERIENCE</p>
<p><a class="header-back" href="../index.html#row-{e(topic['key'])}">← 返回内容总览</a> / {e(group[1])}</p>
<h1>{e(topic['title'])}</h1><p>{e(topic['summary'])}</p></div></header>
<main class="article-wrap"><div class="article-meta"><span class="availability {e(topic['status'])}">{e(STATUS[topic['status']])}</span>
<span>研究样本：build 38174</span></div>{detail(topic)}
<section class="method-comparison"><h2>相比人工／实机视频／测评</h2>{comparisons}</section>
<nav class="related-topics" aria-label="相关算法解读"><h2>相关内容</h2>{related}
<a href="../reports/03-mechanism-difficulty.html#refill">补棋、Seed与难度完整报告</a>
<a href="../reports/04-gate-resolution.html#gate-matrix">障碍门控矩阵完整报告</a></nav>
<footer><a href="../index.html#row-{e(topic['key'])}">← 返回内容总览</a> · 结论限于已取得的build 38174样本。</footer></main>
</body></html>'''


def render_recovery_report():
    keys = ['level-config', 'fall-rules', 'obstacle-rules', 'area-tasks', 'distributed-assets',
            'team-flow', 'production-tools', 'social-backend', 'source-projects']
    topics = [next(t for t in TOPICS if t['key'] == key) for key in keys]
    nav = ''.join(f'<a href="#{e(t["key"])}">{e(t["title"])}</a>' for t in topics)
    return f'''<!DOCTYPE html><html lang="zh-CN"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<title>客户端内容与复刻边界 · Royal Match</title><link rel="stylesheet" href="../assets/site.css">
<script defer src="../assets/report-deep-links.js"></script></head><body class="detail-page">
<header><div class="detail-header"><p class="eyebrow">ROYAL MATCH / CLIENT CONTENT</p>
<p><a class="header-back" href="../index.html#replication-overview">← 返回内容总览</a></p>
<h1>客户端内容与复刻边界</h1><p>玩法规则、区域任务、分发资源、团队流程与原制作工程的可得性。研究样本：build 38174。</p></div></header>
<main class="article-wrap"><nav class="overview-nav" aria-label="报告章节">{nav}</nav>
{''.join(('<span id="server-boundary"></span>' if t['key'] == 'social-backend' else '') + detail(t) for t in topics)}
<section class="related-topics"><h2>道具与玩家体验算法</h2>
{''.join(f'<a href="../{topic_url(key)}">{e(next(t["title"] for t in TOPICS if t["key"] == key))}</a>' for key in ALGORITHM_KEYS)}</section>
<section id="evidence"><h2>研究方法与范围</h2><p>资源和原生代码说明指定样本的结构与行为。可恢复不等于已经完成规则移植、完整回放或原版对照。</p>
<a href="05-unpack-methodology.html">解包工具链与可复用方法论完整报告</a></section>
<footer><a href="../index.html#replication-overview">← 返回内容总览</a></footer></main></body></html>'''



def render_site():
    groups = []
    for group_id, title, desc in GROUPS:
        topics = [topic for topic in TOPICS if topic['group'] == group_id]
        rows = []
        for topic in topics:
            key = e(topic['key'])
            comparison = ''.join(f'<p>{e(p)}</p>' for p in topic['comparison'])
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
                      '<th scope="col">可得性</th><th scope="col">相比人工／实机视频／测评：结论与速度</th>'
                      f'</tr></thead><tbody>{"".join(rows)}</tbody></table></div></section>')
    return f'''<!DOCTYPE html>
<html lang="zh-CN"><head><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1">
<meta name="description" content="Royal Match客户端规则与玩家体验解读：棋盘、飞机目标、智能火箭、补棋、活动与商业化，逐项说明证据和研究效率变化。">
<title>Royal Match · 玩法、体验算法与研发可得性</title>
<link rel="stylesheet" href="assets/site.css"><script defer src="assets/overview-links.js"></script>
</head><body>
<header><div class="header-inner"><div><p class="eyebrow">ROYAL MATCH / RESEARCH NOTES</p>
<h1>从具体内容，读懂游戏规则</h1><p>三消玩法、外围 Meta 与商业化的统一结论。点击内容名称，进入独立报告页，阅读机制、体验影响、数据与证据。</p></div>
<div class="edition"><b>{len(TOPICS)} 个内容项</b><span>研究样本：build 38174</span><span>内容核对：2026-10-14</span></div></div></header>
<main class="wrap" id="replication-overview"><div class="intro"><div><h2>能拿到什么，能解释到哪里</h2>
<p>“具体内容可恢复”表示客户端中存在数据或实现，实际取得与验证进度写在每项中；不表示完整复刻已完成。</p>
<p>新列分别比较结论深度与研究速度。没有同口径耗时记录，不给出提速倍数；实际体验仍要通过实机与用户观察验证。</p></div>
<div class="legend"><p><span class="availability available">具体内容可恢复</span> 包内数据或客户端实现</p>
<p><span class="availability framework">需当期外部输入</span> 缺实际账号／平台响应</p>
<p><span class="availability unavailable">样本内无原件</span> 原工具、后台或制作工程</p></div></div>
<nav class="overview-nav" aria-label="内容分类"><a href="#replication-core">三消玩法</a><a href="#replication-meta">外围 Meta</a>
<a href="#replication-money">商业化</a><a href="topics/propeller-targeting.html">重点：飞机目标选择</a><a href="topics/smart-rocket.html">智能火箭方向</a></nav>
<details class="research-method" id="research-method"><summary>阅读口径：代码能解释原因，实机与测评验证实际发生了什么</summary>
<p>包内配置证明样本包含的内容；原生代码证明指定分支的计算与状态转移；受控实机记录证明该测试条件下的结果。
本页将设计解读和教学示意明确标出，未验证的分支保持未验证。实机视频和测评继续用于核对画面、节奏、输入感受与自然玩家体验。</p>
<p>研究效率变化为方法比较：批量读取减少逐项抄录，调用链定位减少盲试；没有成对的人时、样本量、验证标准记录，不能量化净提速。
自动导出量、函数入口数、局部反编译成功数也不等于语义恢复或可执行复刻完成。</p>
<p>样本与来源绑定到文件和函数位置；元数据名称不代替行为，资源主题不代替排期，有限响应不代替后台决策公式。</p>
<p><a href="reports/05-unpack-methodology.html">阅读完整解包方法论：工具链、SOP、常见陷阱与证据分级 →</a></p></details>
<p class="mobile-hint">表格可左右滑动。点击第一列进入对应报告章节或算法详情页。</p>
{"".join(groups)}
<footer>研究范围为已取得的 Royal Match build 38174 样本；不代表线上最新游戏版本或当前账号配置。
<a href="https://github.com/KentXu0911/game-unpack-reports">站点仓库</a> · 各条目链接到对应报告与证据范围。</footer>
</main></body></html>'''


def main():
    keys = [topic['key'] for topic in TOPICS]
    assert len(keys) == len(set(keys)), 'Duplicate topic key'
    assert set(keys) == set(DESTINATIONS), 'Every content item needs a detail page'
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
    (ROOT / 'site/index.html').write_text(render_site())
    for source in (ROOT / 'content/report-pages').glob('*.html'):
        (ROOT / 'site/reports' / source.name).write_text(source.read_text())
    (ROOT / 'site/reports/07-rea-recovery.html').write_text(render_recovery_report())
    (ROOT / 'site/topics').mkdir(exist_ok=True)
    for key in ALGORITHM_KEYS:
        topic = next(t for t in TOPICS if t['key'] == key)
        (ROOT / f'site/topics/{key}.html').write_text(render_topic_page(topic))
    redirects = dict(DESTINATIONS, **{'gate-matrix': 'reports/04-gate-resolution.html#gate-matrix'})
    for topic in TOPICS:
        for name in topic['refs']:
            if name in TABLES and name != 'gate-matrix':
                redirects[f'data-{name}'] = topic_url(topic['key'])
    (ROOT / 'site/assets/overview-links.js').write_text(
        '(() => {\n  const targets = ' + json.dumps(redirects, ensure_ascii=True) + ';\n'
        "  function navigate() {\n    let key;\n    try { key = decodeURIComponent(location.hash.slice(1)); } catch { return; }\n"
        "    if (Object.prototype.hasOwnProperty.call(targets, key)) location.replace(targets[key]);\n"
        "  }\n  window.addEventListener('hashchange', navigate);\n  navigate();\n})();\n")
    print(f'Built {len(TOPICS)} overview links, 7 full reports and {len(ALGORITHM_KEYS)} algorithm pages')


if __name__ == '__main__':
    main()
