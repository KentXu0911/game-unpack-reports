#!/usr/bin/env python3
"""Render one current topic reader and compatibility entries using stdlib only."""

from html import escape
import json
from pathlib import Path
import sys

ROOT = Path(__file__).resolve().parents[1]
sys.path.insert(0, str(ROOT / "content"))
from topics import GROUPS, TOPICS  # noqa: E402

SOURCES = json.loads((ROOT / "content/sources.json").read_text())
TABLES = json.loads((ROOT / "content/reference-tables.json").read_text())
LEGACY = json.loads((ROOT / "content/legacy-anchors.json").read_text())
STATUS = {
    "available": "具体内容可恢复",
    "framework": "需当期外部输入",
    "unavailable": "样本内无原件",
}


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
        picture = (f'<img loading="lazy" src="assets/commercialization/{asset}" alt="{e(name)}包内分发素材示例">'
                   '<p class="caption">包内分发素材示例；用于识别商品主题，不是当期实机页面或实价证明。</p>') if asset else ''
        output.append(f'<details class="activity-profile"><summary>{e(name)}</summary><p>{e(text)}</p>{picture}</details>')
    return ''.join(output) + '</details>'


def extras(topic):
    key = topic['key']
    if key == 'propeller-targeting':
        return ('<div class="flow" aria-label="已定位的飞机目标处理链">'
                '<span>查找候选目标</span><b>→</b><span>目标合法性／状态</span><b>→</b>'
                '<span>引导道具执行</span><b>→</b><span>到达后引爆／组合策略</span></div>'
                '<p class="flow-note">流程用于解释已定位的职责关系；完整评分、重选与飞行路径算法尚未闭合。</p>')
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
    paragraphs = ''.join(f'<h5>{e(title)}</h5><p>{e(text)}</p>' for title, text in topic['sections'])
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
    return (f'<tr class="detail-row"><td colspan="4"><section id="{e(topic["key"])}" '
            f'class="topic-detail" tabindex="-1" aria-labelledby="title-{e(topic["key"])}">'
            f'<div class="detail-heading"><h4 id="title-{e(topic["key"])}">{e(topic["title"])}</h4>'
            '<button class="close-detail" type="button">收起解读</button></div>'
            f'<div class="topic-body">{paragraphs}{extras(topic)}{"".join(refs)}'
            f'<details class="evidence"><summary>查看证据依据与验证范围</summary>{"".join(evidence)}</details>'
            '</div></section></td></tr>')


def render_site():
    groups = []
    for group_id, title, desc in GROUPS:
        topics = [topic for topic in TOPICS if topic['group'] == group_id]
        rows = []
        for topic in topics:
            key = e(topic['key'])
            comparison = ''.join(f'<p>{e(p)}</p>' for p in topic['comparison'])
            rows.append(f'<tr class="overview-item"><th scope="row" id="row-{key}">'
                        f'<a class="topic-link" href="#{key}" aria-controls="{key}" aria-expanded="true">'
                        f'{e(topic["title"])}<span class="action">展开解读 +</span></a></th>'
                        f'<td>{e(topic["summary"])}</td><td><span class="availability {e(topic["status"])}">'
                        f'{e(STATUS[topic["status"]])}</span></td><td class="comparison">{comparison}</td></tr>')
            rows.append(detail(topic))
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
<link rel="stylesheet" href="assets/site.css"><script defer src="assets/topic-reader.js"></script>
</head><body>
<header><div class="header-inner"><div><p class="eyebrow">ROYAL MATCH / RESEARCH NOTES</p>
<h1>从具体内容，读懂游戏规则</h1><p>三消玩法、外围 Meta 与商业化的统一结论。点击内容名称，在原位展开机制、体验影响、数据与证据。</p></div>
<div class="edition"><b>{len(TOPICS)} 个内容项</b><span>研究样本：build 38174</span><span>内容核对：2026-10-14</span></div></div></header>
<main class="wrap" id="replication-overview"><div class="intro"><div><h2>能拿到什么，能解释到哪里</h2>
<p>“具体内容可恢复”表示客户端中存在数据或实现，实际取得与验证进度写在每项中；不表示完整复刻已完成。</p>
<p>新列分别比较结论深度与研究速度。没有同口径耗时记录，不给出提速倍数；实际体验仍要通过实机与用户观察验证。</p></div>
<div class="legend"><p><span class="availability available">具体内容可恢复</span> 包内数据或客户端实现</p>
<p><span class="availability framework">需当期外部输入</span> 缺实际账号／平台响应</p>
<p><span class="availability unavailable">样本内无原件</span> 原工具、后台或制作工程</p></div></div>
<nav class="overview-nav" aria-label="内容分类"><a href="#replication-core">三消玩法</a><a href="#replication-meta">外围 Meta</a>
<a href="#replication-money">商业化</a><a href="#propeller-targeting">重点：飞机目标选择</a><a href="#smart-rocket">智能火箭方向</a></nav>
<details class="research-method" id="research-method"><summary>阅读口径：代码能解释原因，实机与测评验证实际发生了什么</summary>
<p>包内配置证明样本包含的内容；原生代码证明指定分支的计算与状态转移；受控实机记录证明该测试条件下的结果。
本页将设计解读和教学示意明确标出，未验证的分支保持未验证。实机视频和测评继续用于核对画面、节奏、输入感受与自然玩家体验。</p>
<p>研究效率变化为方法比较：批量读取减少逐项抄录，调用链定位减少盲试；没有成对的人时、样本量、验证标准记录，不能量化净提速。
自动导出量、函数入口数、局部反编译成功数也不等于语义恢复或可执行复刻完成。</p>
<p>样本与来源绑定到文件和函数位置；元数据名称不代替行为，资源主题不代替排期，有限响应不代替后台决策公式。</p></details>
<p class="mobile-hint">表格可左右滑动。点击第一列展开内容；详解与数据就放在对应条目里。</p>
{"".join(groups)}
<footer>研究范围为已取得的 Royal Match build 38174 样本；不代表线上最新游戏版本或当前账号配置。
<a href="https://github.com/KentXu0911/game-unpack-reports">站点仓库</a> · 各条目可展开查看证据范围。</footer>
</main></body></html>'''


def legacy_target(filename, anchor):
    number = filename[:2]
    if number == '01':
        return 'schedule-boundaries'
    if number == '02':
        return {'s1': 'activity-defaults', 's2': 'activity-defaults', 's3': 'passes',
                's4': 'shop-rules', 's5': 'research-method', 's6': 'activity-defaults'}.get(anchor, 'activity-defaults')
    if number == '03':
        if anchor in ('curve', 'colleague'):
            return 'level-pressure'
        if anchor == 'adaptation':
            return 'win-settlement'
        if anchor == 'appendix':
            return 'research-method'
        return 'refill'
    if number == '04':
        return 'gate-matrix'
    if number == '05':
        return 'research-method'
    if number == '06':
        return {'user-tiers': 'user-tiers', 'segments': 'user-tiers', 'adaptive': 'user-tiers',
                'adaptive-product': 'user-tiers', 'failure-product': 'failure-product',
                'rescue': 'failure-product', 'experiments': 'experiments', 'payment': 'payment',
                'boundaries': 'commerce-backend', 'gaps': 'commerce-backend', 'evidence': 'research-method',
                'source-reconciliation': 'research-method'}.get(anchor, 'shop-rules')
    return {'server-boundary': 'social-backend', 'evidence': 'research-method'}.get(anchor, anchor or 'level-config')


def render_legacy(filename, anchors):
    mapping = {anchor: legacy_target(filename, anchor) for anchor in anchors}
    mapping[''] = legacy_target(filename, '')
    safe_json = json.dumps(mapping, ensure_ascii=True).replace('<', '\\u003c')
    script = f'''(() => {{
  const targets = {safe_json};
  let id = '';
  try {{ id = decodeURIComponent(location.hash.slice(1)); }} catch {{ id = ''; }}
  const target = Object.prototype.hasOwnProperty.call(targets, id) ? targets[id] : targets[''];
  location.replace('../index.html#' + target);
}})();\n'''
    script_name = f'legacy-{filename[:2]}.js'
    (ROOT / 'site/assets' / script_name).write_text(script)
    fallback = ''.join(f'<a id="{e(anchor)}" href="../index.html#{e(target)}">查看对应内容</a>'
                       for anchor, target in mapping.items() if anchor)
    return f'''<!DOCTYPE html><html lang="zh-CN"><head><meta charset="utf-8">
<meta name="viewport" content="width=device-width,initial-scale=1"><title>打开对应具体内容</title>
<link rel="canonical" href="https://kentxu0911.github.io/game-unpack-reports/index.html#{e(mapping[''])}">
<link rel="stylesheet" href="../assets/site.css"><script defer src="../assets/{script_name}"></script>
</head><body><main class="legacy"><h1>内容已按主题整合</h1><p><a href="../index.html#{e(mapping[''])}">打开对应具体内容与当前结论</a></p>
<noscript><p>浏览器未启用JavaScript，可通过下面链接打开对应内容。</p></noscript>{fallback}</main></body></html>'''


def main():
    keys = [topic['key'] for topic in TOPICS]
    assert len(keys) == len(set(keys)), 'Duplicate topic key'
    used_refs = [ref for topic in TOPICS for ref in topic['refs'] if ref in TABLES]
    assert len(used_refs) == len(set(used_refs)), 'Reference table ids must be unique'
    for topic in TOPICS:
        assert topic['status'] in STATUS and len(topic['comparison']) == 2
        assert all(key in SOURCES for key in topic['sources'])
    (ROOT / 'site/index.html').write_text(render_site())
    for filename, anchors in LEGACY.items():
        (ROOT / 'site/reports' / filename).write_text(render_legacy(filename, anchors))
    print(f'Built {len(TOPICS)} embedded topics, {len(LEGACY)} compatible report entries')


if __name__ == '__main__':
    main()
