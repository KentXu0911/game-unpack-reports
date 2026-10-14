"""Render site-owned chronology and preserved difficulty analysis."""
from html import escape as e
import json
from pathlib import Path

ROOT=Path(__file__).resolve().parents[1]


def pressure_axes(data):
    labels=[('obstacle','障碍单位负担',24),('move','步数紧张',22),('target','目标总量',22),
            ('multiGoal','目标种类',12),('topology','棋盘空洞代理',8),('color','颜色池',6),('predefined','预定补棋',6)]
    colors=['#b42318','#0f766e','#b45309','#25636b','#687585','#8a5a28','#3f6b3f']
    panels=[]
    for (key,label,weight),color in zip(labels,colors):
        values=[b['axes'][key] for b in data['pressure_blocks']]
        points=' '.join(f'{16+i*328/(len(values)-1):.1f},{92-72*v:.1f}' for i,v in enumerate(values))
        panels.append(f'<figure><figcaption><b>{label}</b><span>权重{weight}% · {values[0]:.3f} → {values[-1]:.3f}</span></figcaption>'
                      f'<svg viewBox="0 0 360 116" role="img" aria-label="{label}，每500关均值">'
                      '<line x1="16" x2="344" y1="20" y2="20" stroke="#e0e6ed"/><line x1="16" x2="344" y1="92" y2="92" stroke="#e0e6ed"/>'
                      f'<polyline points="{points}" stroke="{color}" stroke-width="2.5" fill="none"/>'
                      '<text x="16" y="110" class="axis">1–500关</text><text x="344" y="110" text-anchor="end" class="axis">14001–14500关</text></svg></figure>')
    return '<div class="pressure-axis-panels">'+''.join(panels)+'</div><p class="chart-caption">所有小图纵轴统一为0–1。箭头对比首、末500关均值，曲线保留中间波动。</p>'


def level_progression():
    data=json.loads((ROOT/'content/level-progression.json').read_text())
    rows=[]
    for r in data['records']:
        after='、'.join('L'+str(x) for x in r['next'])
        search=e((r['name']+' '+r['key']).lower(),quote=True)
        rows.append(f'<tr id="obstacle-{e(r["key"])}" data-obstacle-row data-name="{search}" data-channel="{e(r["channel"])}">'
                    f'<th scope="row">{e(r["name"])}<small>{e(r["key"])}</small></th><td>{r["channel"]}</td>'
                    f'<td>L{r["first"]}</td><td>{after}</td><td>{r["levels"]:,}关</td></tr>')
    notes=[
        '箱子L1，草地L4，橱柜L11；邮箱L21、蛋L31、药水L41、花瓶L51、蜂蜜L81。前100关已先后放入12项配置类型。',
        '鸟L101、彩箱L121、碎冰机L141；从炸药箱L351往后，鸟巢L451、石头L501、钻头L601等多按50关间隔登场。',
        '袋子L1001、灯笼L1101、保龄球L1201，早段大体每100关一项；蜂蜜罐L2201、头盔小猪L2401后转向200关节奏。',
        '磁铁L3201、传送带L3801、藤蔓L5201等多数落在200关段开头；L3401没有新增记录，不能把节奏理解成绝无缺口。',
        '售货机L6201、玩具箱L7201/L7202、力场L7601、密码筒L8601；多种模型有同关或相邻关登场，先合并日期再计算间隔。',
        '传送门L10001、雷达L12001、松鼠L11801、金属板L13401、浴缸L14401等，除L10202的方向模型外，首现关均为200关段首。',
    ]
    stage_rows=[]
    for stage,note in zip(data['stages'],notes):
        stage_rows.append(f'<tr><th scope="row">L{stage["lo"]}–L{stage["hi"]}</th>'
                          f'<td>{stage["records"]}项／{stage["debut_levels"]}个首现关</td><td>{note}</td></tr>')
    html='''<section class="level-progression" id="obstacle-progression">
<h3>障碍在第几关出现，后来怎样复用</h3>
<p>这里的“出现时间”按关卡进度记录：某种物体或格子层第一次写进关卡配置，是它在本样本中的首现关。它不是发布日期，也不代表当期线上账号的解锁条件。</p>
<p>前100关登场密集，101–1000关逐渐拉开到20–50关；1001关以后先以100关为常见间隔，2201关以后多数新登场集中到200关段的开头。到了后期，每200关通常才加一批新类型，其余关卡继续复用已出现的类型。</p>
<div class="data-scroll stage-table"><table><thead><tr><th scope="col">关卡阶段</th><th scope="col">新增配置类型／不同首现关</th><th scope="col">具体登场节奏</th></tr></thead><tbody>'''+''.join(stage_rows)+'''</tbody></table></div>
<p>例如箱子从L1开始、总共出现在1,704关；草地从L4开始、出现在1,498关；蜂蜜从L81开始、出现在1,134关；传送带从L3801开始、出现在713关。它们的首次出现隔得很远，但后来会与其他已登场物体反复组合；首现时间不能替代每关的组合统计。</p>
<h4 id="obstacle-categories">按玩家要处理的事情归纳</h4>
<div class="data-scroll"><table><thead><tr><th scope="col">归纳类别</th><th scope="col">玩家具体要处理什么</th><th scope="col">代表障碍</th></tr></thead><tbody>
<tr><td>A · 面积／覆盖层</td><td>把一片区域逐步清理干净，消除位置决定覆盖效率。</td><td>草地、蜂蜜、果冻、屋顶、锁链</td></tr>
<tr><td>B · 点状／多击障碍</td><td>集中处理占位物体，清掉后才释放空间。</td><td>箱子、花瓶、蛋、小猪、保险箱、石头</td></tr>
<tr><td>C · 生成／投放源</td><td>除眼前目标外，还要处理后续投放出来的东西。</td><td>邮箱、药水、鸟巢、糖果机</td></tr>
<tr><td>D · 位移／路径规则</td><td>目标的位置或行动路线会改变，需要跟着位置安排消除。</td><td>鸟、传送带、磁铁、飞碟、原木</td></tr>
<tr><td>E · 条件／优先级机关</td><td>处理顺序受条件限制，要先满足条件再推进其他目标。</td><td>藤蔓、能量块、雷达、松鼠</td></tr>
</tbody></table></div>
<h4 id="obstacle-first-seen">每种障碍的首次关卡与后续出现</h4>
<p>物体层按TiledId合并颜色、等级和多格部件，得到98个模型族；格子层另有14个非空字段，共112条来源记录、105个不同首现关。这不等于112种独立玩法：横／竖玩具箱、生成源与收集器等仍可能属于同一套机制。金币也作为目标物体列出；waterSoil在这批配置中未出现。</p>
<p class="chart-caption">每类在同一关只计一次。“后续4关”是第一次之后再次出现它的4个关卡，不要求连续。统计只数初始配置中的Items与格子层；运行时投放、生成、转换后的物体另需运行轨迹。中文名用于阅读，查证以旁列原模型名为准。</p>
<div class="obstacle-filters"><label>查找障碍<input id="obstacle-search" type="search" placeholder="例如：草地、传送带、BirdNest"></label><label>配置位置<select id="obstacle-channel"><option value="">全部</option><option>物体层</option><option>格子层</option></select></label><button id="obstacle-reset" type="button">清空筛选</button></div>
<p id="obstacle-result-count" role="status" aria-live="polite">显示112条来源记录。</p>
<div class="data-scroll obstacle-table" tabindex="0" role="region" aria-label="障碍首现完整表"><table><thead><tr><th scope="col">障碍／目标物体</th><th scope="col">配置位置</th><th scope="col">首次关卡</th><th scope="col">之后再次出现的4关</th><th scope="col">出现关数</th></tr></thead><tbody>'''+''.join(rows)+'''</tbody></table></div>
<p><a href="../assets/level-progression.json" download>下载完整登场统计与曲线聚合JSON（含源索引SHA-256）</a></p>
<details class="evidence"><summary>统计来源与计数口径</summary><p>build38174；Items来自level_boards_fbs.csv，格子层来自level_obstacle_index.csv。Items仅用item_mechanism_taxonomy.csv中的TiledId变体映射，不把ItemType或GoalType的同号值混入。全量关卡号为1–14500，无遗漏与重复；14个格子层的首现及覆盖数与obstacle_unlock_table.csv交叉核对。首现间隔按不同关卡去重；五类障碍按玩家需要处理的事情归纳，具体受击、生成与移动规则须结合对应实现。</p></details>
</section>'''
    curves=(ROOT/'content/level-difficulty.html').read_text().replace('<!-- PRESSURE_AXES -->',pressure_axes(data))
    return html+curves
