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
    return (f'<section id="{e(topic["key"])}" class="topic-detail" '
            f'aria-labelledby="title-{e(topic["key"])}">'
            f'<h2 id="title-{e(topic["key"])}">{e(topic["title"])}</h2>'
            f'<div class="topic-body">{paragraphs}{extras(topic)}{"".join(refs)}'
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
