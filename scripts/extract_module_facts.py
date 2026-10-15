#!/usr/bin/env python3
"""Read-only extraction of per-module unpacking facts into content/module-facts.json.

The site build only consumes the committed snapshot. Re-run this script with the
audit workspace next to the repository to recompute every table:

    python3 scripts/extract_module_facts.py --workspace ..

Every table keeps its source path so a reader can trace a number back to the file.
"""
import argparse
import collections
import csv
import gzip  # noqa: F401  (kept for future jsonl readers)
import json
import os
import re
import statistics
from pathlib import Path

ROOT = Path(__file__).resolve().parents[1]
OUT = ROOT / 'content/module-facts.json'

REA = 'research/rm-reunpack-2026-10-14'
AUD = 'royal-match-apk-audit-38174'

TABLES = {}
NUMBERS = {}


def table(tid, title, columns, rows, source, note=''):
    TABLES[tid] = dict(title=title, columns=columns, rows=[[str(c) for c in r] for r in rows],
                       source=source, note=note)


def fmt(n):
    return f'{n:,}'


def read_csv(path):
    with open(path, newline='', encoding='utf-8') as fh:
        return list(csv.DictReader(fh))


# ---------------------------------------------------------------- dump.cs parser
class Dump:
    def __init__(self, path):
        self.lines = Path(path).read_text(encoding='utf-8', errors='ignore').split('\n')
        self.types = {}
        self.all = []
        ns = None
        pat = re.compile(r'^(?:public |internal )?(?:sealed |static |abstract )*(class|struct|enum|interface) '
                         r'([\w.<>`]+)(?: : ([^/]+?))? // TypeDefIndex: (\d+)')
        for i, line in enumerate(self.lines):
            if line.startswith('// Namespace:'):
                ns = line[len('// Namespace:'):].strip()
            m = pat.match(line)
            if m:
                rec = dict(name=m.group(2), ns=ns, kind=m.group(1), base=(m.group(3) or '').strip(), line=i)
                self.all.append(rec)
                self.types.setdefault(m.group(2), rec)

    def body(self, name):
        start = self.types[name]['line']
        end = start + 1
        while end < len(self.lines) and not self.lines[end].startswith('}'):
            end += 1
        return self.lines[start:end]

    def props(self, name):
        out, on = [], False
        for line in self.body(name):
            if line.strip() == '// Properties':
                on = True
                continue
            if line.strip() == '// Methods':
                break
            m = re.match(r'\s+public (?:override |static )?([\w<>\[\], ?.]+?) (\w+) \{ get;', line)
            if on and m and m.group(2) != 'ByteBuffer':
                out.append((m.group(2), m.group(1)))
        return out

    def enum(self, name):
        out = []
        for line in self.body(name):
            m = re.match(r'\s+public const \w+ (\w+) = (-?\d+);', line)
            if m:
                out.append((m.group(1), int(m.group(2))))
        return out

    def in_ns(self, suffix, kind=None):
        return [n for n, t in self.types.items() if t['ns'] and t['ns'].endswith(suffix) and (kind is None or t['kind'] == kind)]


def sort_runs(values):
    """Collapse sorted (id, value) pairs into [(first, last, value)] runs."""
    runs = []
    for i, v in sorted(values):
        if runs and runs[-1][2] == v and runs[-1][1] == i - 1:
            runs[-1][1] = i
        else:
            runs.append([i, i, v])
    return runs


# ---------------------------------------------------------------- extractors
def areas(ws):
    res = ws / REA / 'resources'
    inv = read_csv(res / 'area_inventory.csv')
    tasks = read_csv(res / 'area_tasks.csv')
    src = f'{REA}/resources/area_inventory.csv · area_tasks.csv'
    ids = sorted(int(a['area_id']) for a in inv)
    per = {int(a['area_id']): int(a['tasks']) for a in inv}
    total = {int(a['area_id']): int(a['price_total']) for a in inv}
    prices = [int(t['price']) for t in tasks]
    with_tasks = [i for i in ids if per[i] > 0]
    by = collections.defaultdict(list)
    for t in tasks:
        by[int(t['area_id'])].append(t)
    shape = collections.Counter()
    forward = 0
    for ts in by.values():
        for t in ts:
            d, tid = int(t['dependency']), int(t['task_id'])
            lst = json.loads(t['dependencies'])
            if d == -1:
                shape['merge' if lst else 'start'] += 1
            else:
                shape['prev' if d == tid - 1 else 'other'] += 1
                shape['single_with_list'] += 1 if lst else 0
            forward += 1 if any(x > tid for x in lst) else 0
    multi = [t for t in tasks if t['dependencies'] != '[]']
    multi_sizes = collections.Counter(len(json.loads(t['dependencies'])) for t in multi)
    roots = collections.Counter(sum(1 for t in ts if t['dependency'] == '-1' and t['dependencies'] == '[]') for ts in by.values())
    price_match = all(sum(int(t['price']) for t in by[i]) == total[i] for i in with_tasks)
    bundles = read_csv(res / 'bundle_manifest.csv')
    area_bundles = sorted(b['file'].split('/')[-1] for b in bundles if re.search(r'/area\d+\.ab$', b['file']))
    episode = [b['file'].split('/')[-1] for b in bundles if 'episodes_' in b['file']]
    NUMBERS.update(area_count=len(inv), task_count=len(tasks), area_with_tasks=len(with_tasks),
                   price_sum=sum(prices), area_first=ids[0], area_last=ids[-1])
    table('area-summary', '区域与任务：直接计数', ['指标', '数值', '说明'], [
        ['区域配置记录', fmt(len(inv)), f'area_id {ids[0]}–{ids[-1]} 连续；area 0 是 Royal League，任务数 0'],
        ['含任务的区域', fmt(len(with_tasks)), f'任务数 {min(per[i] for i in with_tasks)}–{max(per.values())}，中位数 {statistics.median(per[i] for i in with_tasks):g}'],
        ['任务记录', fmt(len(tasks)), '字段：id、price、dependency、dependencies、replayConfig、positionOffset'],
        ['单任务 price', f'{min(prices)}–{max(prices)}', f'全部任务合计 {fmt(sum(prices))}'],
        ['区域 price 合计与任务逐项求和', '一致' if price_match else '不一致', '164 个含任务区域逐个核对'],
    ], src)
    table('area-tasks-per-area', '每区任务数分布', ['每区任务数', '区域数'],
          [[k, v] for k, v in sorted(collections.Counter(per[i] for i in with_tasks).items())], src)
    table('area-price-runs', '区域 price 合计按 area_id 的变化', ['area_id', '区域数', '区域 price 合计', '单任务均值'],
          [[f'{a}–{b}' if a != b else a, b - a + 1, v, f'{v / statistics.mean(per[i] for i in range(a, b + 1)):.2f}']
           for a, b, v in sort_runs((i, total[i]) for i in with_tasks)],
          src, '连续且数值相同的区域合并为一行。price 的业务单位仍待消费代码确认。')
    table('area-price-dist', '单任务 price 分布', ['price', '任务数'],
          [[k, v] for k, v in sorted(collections.Counter(prices).items())], src)
    table('area-dependency-shape', '任务依赖形态（互斥，合计 1,634）', ['形态', '任务数', '含义'], [
        ['dependency = -1 且 dependencies 为空', shape['start'], '区内起点，不等其他任务'],
        ['dependency = -1 且 dependencies 非空', shape['merge'], '多前置任务：dependencies 列出全部前置，个数 ' +
         '、'.join(f'{k}个×{v}' for k, v in sorted(multi_sizes.items()))],
        ['dependency = 上一编号任务', shape['prev'], '线性串联'],
        ['dependency 指向更早的非相邻任务', shape['other'], '从同一任务分叉出多条支线'],
    ], src, f'dependency 指向单个前置；另有 {shape["single_with_list"]} 个任务同时有 dependency 与 dependencies，已计入后两行。'
            f'有 {forward} 个任务的 dependencies 含比自身编号更大的任务，所以 task_id 是展示顺序，不是依赖的拓扑顺序。')
    NUMBERS.update(area_dep_start=shape['start'], area_dep_merge=shape['merge'], area_dep_prev=shape['prev'],
                   area_dep_other=shape['other'], area_dep_forward=forward)
    NUMBERS['area_roots_dist'] = dict(roots)
    ranges = [(1, 10), (11, 28), (29, 99), (100, 164)]
    rows = []
    for lo, hi in ranges:
        ts = [t for a in range(lo, hi + 1) for t in by.get(a, [])]
        c = collections.Counter()
        for t in ts:
            d, tid = int(t['dependency']), int(t['task_id'])
            c['merge' if d == -1 and t['dependencies'] != '[]' else 'start' if d == -1 else 'prev' if d == tid - 1 else 'fork'] += 1
        rows.append([f'{lo}–{hi}', fmt(len(ts))] + [f'{c[k] / len(ts) * 100:.1f}%' for k in ('start', 'prev', 'fork', 'merge')])
    table('area-dependency-by-range', '依赖形态按区域段的占比', ['area_id', '任务数', '起点', '线性', '分叉', '合并'], rows, src,
          '同一行四列合计 100%；形态定义见上表。')
    starts = collections.Counter(sum(1 for t in ts if t['dependency'] == '-1' and t['dependencies'] == '[]') for ts in by.values())
    merges = collections.Counter(sum(1 for t in ts if t['dependency'] == '-1' and t['dependencies'] != '[]') for ts in by.values())
    table('area-starts-merges', '每区起点数与合并点数', ['个数', '含该个数起点的区域', '含该个数合并点的区域'],
          [[k, starts.get(k, 0), merges.get(k, 0)] for k in range(0, max(max(starts), max(merges)) + 1)], src)
    ten = [by[a] for a in sorted(by) if a >= 29 and len(by[a]) == 10]
    table('area-price-by-order', '区域 29 起、恰好 10 个任务的区域：按任务编号看 price 均值',
          ['任务编号', '均值', '最小', '最大'],
          [[i + 1, f'{statistics.mean(int(ts[i]["price"]) for ts in ten):.1f}', min(int(ts[i]['price']) for ts in ten),
            max(int(ts[i]['price']) for ts in ten)] for i in range(10)], src, f'样本 {len(ten)} 个区域。')
    rep = [json.loads(t['replay_config']) for t in tasks]
    blend = collections.Counter(round(r['blending'], 2) for r in rep)
    same = sum(1 for t, r in zip(tasks, rep) if r['order'] == int(t['task_id']))
    table('area-replay', 'replayConfig 字段取值', ['字段', '取值概况'], [
        ['order', f'与 task_id 相同 {fmt(same)} 条，不同 {fmt(len(tasks) - same)} 条'],
        ['blending', '、'.join(f'{k:g}×{v}' for k, v in blend.most_common(6)) + f'，共 {len(blend)} 种取值'],
        ['hasAudio', f"1×{sum(1 for r in rep if r['hasAudio'] == 1)}、0×{sum(1 for r in rep if r['hasAudio'] == 0)}"],
        ['disableHaptic', f"0×{sum(1 for r in rep if r['disableHaptic'] == 0)}（全部）"],
        ['positionOffset', f"{len({t['position_offset'] for t in tasks})} 种取值，范围 {min(float(t['position_offset']) for t in tasks):g}～{max(float(t['position_offset']) for t in tasks):g}"],
    ], src, '字段含义（镜头混合、静音、触感）取自字段名，需消费代码核对。')
    NUMBERS.update(replay_order_diff=len(tasks) - same, replay_noaudio=sum(1 for r in rep if r['hasAudio'] == 0))
    for aid in (1, 100):
        ts = by[aid]
        table(f'area-example-{aid}', f'区域 {aid} {ts[0]["area_name"]}：任务逐项',
              ['task', 'price', 'dependency', 'dependencies', 'order', 'blending'],
              [[t['task_id'], t['price'], t['dependency'], t['dependencies'],
                json.loads(t['replay_config'])['order'], f"{json.loads(t['replay_config'])['blending']:.1f}"] for t in ts], src)
    table('area-scene-bundles', '随包场景资源', ['资源', '内容'], [
        ['区域场景包', '、'.join(a.replace('.ab', '') for a in area_bundles)],
        ['剧集资源', '、'.join(episode)],
        ['配置区域数 ÷ 随包场景包', f'{len(with_tasks)} ÷ {len(area_bundles)}'],
    ], f'{REA}/resources/bundle_manifest.csv')


def levels(ws):
    aud = ws / AUD / 'indices'
    stats = read_csv(aud / 'level_difficulty_stats.csv')
    refill = read_csv(aud / 'level_refill_summary.csv')
    goals = read_csv(aud / 'goal_id_usage_summary.csv')
    mv = [int(s['move']) for s in stats]
    sizes = collections.Counter(f"{s['width']}×{s['height']}" for s in stats)
    gc = collections.Counter(int(s['goal_count']) for s in stats)
    cells = sum(int(s['cell_count']) for s in stats)
    src = f'{AUD}/indices/level_difficulty_stats.csv · level_refill_summary.csv · goal_id_usage_summary.csv'
    pre_levels = sum(1 for r in refill if int(r['predefined_count'] or 0) > 0)
    pre_total = sum(int(r['predefined_count'] or 0) for r in refill)
    sets = collections.Counter(int(r['set_count']) for r in refill)
    obs = sum(1 for s in stats if int(s['obstacle_cell_count']) > 0)
    dump = Dump(ws / REA / 'evidence/initial-dumper-artifacts/dump.cs')
    cell_fields = [n for n, _ in dump.props('FTiledCell')]
    NUMBERS.update(level_count=len(stats), cell_total=cells, goal_ids=len(goals), obstacle_levels=obs,
                   tiled_fields=len(cell_fields))
    table('level-summary', '关卡配置：直接计数', ['指标', '数值', '说明'], [
        ['关卡记录', fmt(len(stats)), f'level_id {stats[0]["level_id"]}–{stats[-1]["level_id"]}'],
        ['格子表项合计', fmt(cells), '逐关 cell_count 求和'],
        ['步数 move', f'{min(mv)}–{max(mv)}', f'中位数 {statistics.median(mv):g}，均值 {statistics.mean(mv):.2f}'],
        ['目标 ID 清单', f'{len(goals)} 个', 'goal_id_usage_summary.csv 每行一个目标 ID'],
        ['goal_count > 1 的关卡', f"{sum(1 for s in stats if int(s['goal_count']) > 1):,}", '该计数不等于难度'],
        ['带障碍格的关卡', fmt(obs), 'obstacle_cell_count > 0'],
        ['有预定义补棋队列的关卡', f'{fmt(pre_levels)}', f'预定义记录合计 {fmt(pre_total)} 条'],
        ['FTiledCell 声明字段', f'{len(cell_fields)} 个', '、'.join(cell_fields)],
    ], src)
    def parsed(row):
        return [tuple(int(v) for v in g.split(':')) for g in row['goals'].split(';') if g]
    distinct = collections.Counter(len({g[0] for g in parsed(r) if g[1] > 0}) for r in stats)
    boards = collections.Counter(max(g[3] for g in parsed(r)) + 1 for r in stats)
    tall = [r for r in stats if int(r['height']) >= 20]
    tall_multi = sum(1 for r in tall if max(g[3] for g in parsed(r)) > 0)
    multi_tall = sum(1 for r in stats if max(g[3] for g in parsed(r)) > 0 and int(r['height']) >= 20)
    multi = sum(v for k, v in boards.items() if k > 1)
    NUMBERS.update(level_multi_board=multi, level_tall=len(tall), level_tall_multi=tall_multi)
    table('level-goal-records', 'goals 字段：记录数与“有数量的目标 ID 数”', ['口径', '取值分布（个数：关卡数）'], [
        ['goal_count（记录条数，含 0 数量）', '、'.join(f'{k}：{fmt(v)}' for k, v in sorted(gc.items()))],
        ['数量 > 0 的不同目标 ID', '、'.join(f'{k}：{fmt(v)}' for k, v in sorted(distinct.items()))],
        ['棋盘块数（goals 第 4 段最大值 + 1）', '、'.join(f'{k}：{fmt(v)}' for k, v in sorted(boards.items()))],
    ], src, 'goals 每条格式为 目标ID:数量:标志位:棋盘号（标志位只取 0／1，含义未确认）；多棋盘关每块棋盘各登记一条，数量可为 0。'
            '“数量 > 0 的不同目标 ID”更接近界面上的目标个数，但目标为 0 的关和运行时生成的目标仍需对照。')
    table('level-tall-boards', '高棋盘（height ≥ 20）与多棋盘', ['指标', '关卡数'], [
        ['height ≥ 20', fmt(len(tall))], ['其中棋盘块数 > 1', fmt(tall_multi)],
        ['棋盘块数 > 1 的关卡', fmt(multi)], ['其中 height ≥ 20', fmt(multi_tall)],
    ], src)
    zero = [int(r['level_id']) for r in stats if all(g[1] == 0 for g in parsed(r))]
    gaps = [b - a for a, b in zip(zero, zero[1:])]
    runs = []
    for i, g in enumerate(gaps):
        if runs and runs[-1][2] == g:
            runs[-1][1] = zero[i + 1]
        else:
            runs.append([zero[i], zero[i + 1], g])
    only_coin = all({g[0] for g in parsed(r)} == {21} for r in stats if int(r['level_id']) in set(zero))
    flag = sum(1 for r in stats if any(g[2] == 1 for g in parsed(r)))
    flag_vals = sorted({g[2] for r in stats for g in parsed(r)})
    table('level-zero-goal', '没有数量 > 0 目标的关卡', ['指标', '数值'], [
        ['关卡数', fmt(len(zero))],
        ['goals 内容', '全部只有一条 Coin（21）且数量为 0' if only_coin else '不全是 Coin'],
        ['关卡号间隔', '；'.join(f'{a}–{b} 每 {g} 关' for a, b, g in runs)],
        ['首末关卡号', f'{zero[0]} … {zero[-1]}'],
    ], src)
    table('level-goal-flag', 'goals 第 3 段（标志位）', ['指标', '数值'], [
        ['出现过的取值', '、'.join(map(str, flag_vals))],
        ['至少一条为 1 的关卡', fmt(flag)],
    ], src, '含义未确认。')
    table('level-board-sizes', '棋盘尺寸分布（前 8）', ['宽×高', '关卡数', '占比'],
          [[k, fmt(v), f'{v / len(stats) * 100:.1f}%'] for k, v in sizes.most_common(8)], src)
    table('level-goal-count', '每关目标记录数分布', ['goal_count', '关卡数'],
          [[k, fmt(v)] for k, v in sorted(gc.items())], src)
    table('level-refill-sets', '补棋 set 数量分布', ['set_count', '关卡数'],
          [[k, fmt(v)] for k, v in sorted(sets.items())], src)


def protocol(ws):
    dump = Dump(ws / REA / 'evidence/initial-dumper-artifacts/dump.cs')
    src = f'{REA}/evidence/initial-dumper-artifacts/dump.cs（Royal.Infrastructure.Services.Backend.Protocol）'
    proto_all = [t for t in dump.all if t['ns'] and t['ns'].endswith('Backend.Protocol')]
    proto = [t['name'] for t in proto_all]
    structs = [t['name'] for t in proto_all if t['kind'] == 'struct']
    enums = [t['name'] for t in proto_all if t['kind'] == 'enum']
    req = sorted(n[:-7] for n in structs if n.endswith('Request'))
    res = sorted(n[:-8] for n in structs if n.endswith('Response'))
    tcp = [n for n in dump.in_ns('Tcp.Request', 'class') if n != 'BaseTcpRequest']
    NUMBERS.update(proto_types=len(proto), proto_structs=len(structs), proto_enums=len(enums),
                   proto_requests=len(req), proto_responses=len(res), tcp_requests=len(tcp))
    domains = [
        ('账号与连接', r'^(Authenticate|DeprecatedAuthenticate|Register|Ping|Echo|ServerStatus|SendOTP|VerifyOTP|ForgetPassword|ChangeUserName|DeleteUser|DetachUserFromDevice|SocialConnect|GetFacebook\w*|UpdatePGS|GetProfile|SetProfileSetting|GetUserAppData|UpdateUserProgress|ReportUser)$'),
        ('键值与统计存取', r'^(GetKeyValue|SetKeyValue|GetByteArrayKeyValues|GetStat\w*|SetStat|GetSystemMessages|ConsumeSystemMessages)$'),
        ('团队与聊天', r'(Team|Chat)'),
        ('好友与生命互助', r'(Friend|Life|InviteFriend)'),
        ('排行榜与联赛', r'(League|Leaderboard|KingsCup)'),
        ('商品、支付与实验', r'(Purchase|Xsolla|Offer|AllTimePurchase|AssignCampaignAB|RemoteRewards|PassClaim|PremiumPass|RoyalPass|WeeklyPass|GoldenOffers)'),
        ('限时活动与赛事', r'(Enter|Get\w+Info|Update\w+(Score|Progress)|Claim\w+Reward|ClashOfChampions|RoyalWorldCup|WorldCup|RobotRivals|PropellerRush|LightningRush|TrainJourney|DragonNest|SkyRace|SpaceMission|LavaQuest|Archery|Expedition|Seasonal|CardCollection|SendSeasonalCard|MissionControl|MissionPursuit|OceanOdyssey|HiddenTemple|MergeSmith|MagicCauldron|PuzzleBreak|BalloonRise|AncientAdventure|DailyRewards|UpcomingEvent|Dismiss|SendDragon|EventInfo)'),
    ]
    assigned, rows = {}, []
    for name in req:
        for label, pat in domains:
            if re.search(pat, name):
                assigned[name] = label
                break
        else:
            assigned[name] = '其他'
    for label in [d[0] for d in domains] + ['其他']:
        names = [n for n in req if assigned[n] == label]
        if names:
            rows.append([label, len(names), '、'.join(names)])
    table('proto-domains', '客户端协议请求按业务分类', ['业务', '请求数', '请求名'], rows, src,
          '分类依据请求名关键词，一个请求只归入一类，按表内顺序优先匹配（商品类先于活动类）；各行合计等于请求总数。')
    NUMBERS['proto_domain_sum'] = sum(r[1] for r in rows)
    assert NUMBERS['proto_domain_sum'] == len(req)
    for label, n, _ in rows:
        NUMBERS['proto_n_' + str([d[0] for d in domains].index(label) if label != '其他' else 'other')] = n

    def fields(name):
        return [f'{n}:{t}' for n, t in dump.props(name)]

    team = ['CreateTeamRequest', 'JoinTeamRequest', 'SearchTeamRequest', 'LeaveTeamRequest', 'SendChatMessageRequest',
            'GetTeamInfoRequest', 'GetTeamMembersRequest', 'UpdateTeamMemberRequest', 'AskLifeRequest', 'HelpLifeRequest',
            'AskFriendshipRequest', 'ReportUserRequest']
    table('proto-team-requests', '团队、聊天与好友：请求字段', ['请求', '字段（名称:类型）'],
          [[n[:-7], '、'.join(fields(n)) or '（无字段）'] for n in team if n in dump.types], src)
    resp = ['CreateTeamResponse', 'JoinTeamResponse', 'GetTeamInfoResponse', 'GetTeamMembersResponse', 'SendChatMessageResponse']
    table('proto-team-responses', '团队与聊天：响应字段', ['响应', '字段（名称:类型）'],
          [[n[:-8], '、'.join(fields(n)) or '（无字段）'] for n in resp if n in dump.types], src)
    for tid, enum_name, title in [('proto-chat-type', 'ChatMessageType', '聊天消息类型'),
                                  ('proto-chat-fail', 'ChatMessageFailReason', '聊天与命名失败原因'),
                                  ('proto-join-fail', 'JoinTeamFailReason', '加入团队失败原因'),
                                  ('proto-member-op', 'TeamMemberOperationType', '团队成员操作类型'),
                                  ('proto-team-activity', 'TeamActivityLevel', '团队活跃等级')]:
        if enum_name in dump.types:
            table(tid, f'{title}枚举（{enum_name}）', ['值', '名称'], [[v, n] for n, v in dump.enum(enum_name)], src)
    chat_models = sorted(n for n in dump.types if re.fullmatch(r'Chat\w+Model', n) and n != 'ChatScrollItemModel')
    NUMBERS['chat_models'] = len(chat_models)
    table('chat-models', '聊天流里的消息模型', ['类', '基类'], [[n, dump.types[n]['base']] for n in chat_models], src)
    table('proto-tcp', '常驻连接（TCP）请求类', ['类', '位置'], [[n, 'Backend.Tcp.Request'] for n in sorted(tcp)], src,
          '其余协议请求为一次性请求；连接侧的消息类型由 TcpRequestType 枚举区分。')
    tcp_enum = dump.enum('TcpRequestType')
    table('proto-tcp-type', 'TcpRequestType 枚举', ['值', '名称'], [[v, n] for n, v in tcp_enum], src)

    fail = sorted((n for n in enums if n.endswith('FailReason') or n.endswith('Result') or n.endswith('Status') or n.endswith('StatusCode')))
    rows = []
    for n in fail:
        vals = dump.enum(n)
        rows.append([n, len(vals), '、'.join(k for k, _ in vals)])
    table('proto-fail-reasons', '服务端可返回的拒绝原因与结果枚举', ['枚举', '取值数', '取值'], rows, src,
          '这些是协议里允许出现的取值，不等于某账号会遇到它们，也不给出触发条件。')
    NUMBERS['proto_fail_enums'] = len(rows)

    claim = ['RoyalPassClaimRequest', 'WeeklyPassClaimRequest', 'PremiumPassClaimRequest', 'TeamGiftOfferClaimRequest']
    table('proto-claim-requests', '队友代领：领取请求字段', ['请求', '字段（名称:类型）', '是否走常驻连接'],
          [[n[:-7], '、'.join(fields(n)), '是' if any(v == n for v, _ in [(k, 0) for k, _ in dump.enum('TcpRequestType')]) else '否']
           for n in claim], src)
    commerce = ['PurchaseVerificationRequest', 'GetXsollaTokenRequest', 'GetXsollaOrderIdRequest', 'GetAllTimePurchaseRequest',
                'AssignCampaignABRequest', 'GetGoldenOffersInfoRequest', 'GetSpecialOfferInfoRequest', 'GetJourneyOfferInfoRequest',
                'PurchaseInMaintenanceModeRequest', 'ConsumeRemoteRewardsRequest', 'GetRemoteRewardsInfoRequest',
                'RoyalPassClaimRequest', 'WeeklyPassClaimRequest', 'PremiumPassClaimRequest', 'TeamGiftOfferClaimRequest']
    table('proto-commerce-requests', '商品、支付与实验：请求字段', ['请求', '字段（名称:类型）'],
          [[n[:-7], '、'.join(fields(n)) or '（无字段）'] for n in commerce if n in dump.types], src)
    resp = ['PurchaseVerificationResponse', 'GetGoldenOffersInfoResponse', 'GetSpecialOfferInfoResponse',
            'GetJourneyOfferInfoResponse', 'AssignCampaignABResponse', 'GetAllTimePurchaseResponse', 'GetXsollaOrderIdResponse']
    table('proto-commerce-responses', '商品、支付与实验：响应字段', ['响应', '字段（名称:类型）'],
          [[n[:-8], '、'.join(fields(n)) or '（无字段）'] for n in resp if n in dump.types], src)
    for tid, enum_name, title in [('proto-purchase-status', 'PurchaseVerificationStatusCode', '购买校验状态码'),
                                  ('proto-purchase-platform', 'PurchasePlatform', '购买平台'),
                                  ('proto-xsolla-status', 'GetXsollaOrderIdStatus', 'Xsolla 订单状态'),
                                  ('proto-login-type', 'UserLoginType', '登录方式'),
                                  ('proto-remote-fail', 'GetRemoteRewardsInfoFailReason', '兑换码查询失败原因')]:
        if enum_name in dump.types:
            table(tid, f'{title}枚举（{enum_name}）', ['值', '名称'], [[v, n] for n, v in dump.enum(enum_name)], src)

    event_req = ['EnterRoyalWorldCupRequest', 'EnterClashOfChampionsRequest', 'EnterTeamTournamentRequest', 'EnterRobotRivalsRequest',
                 'EnterPropellerRushRequest', 'EnterDailyLightningRushRequest', 'UpdateRoyalWorldCupScoreRequest',
                 'UpdateTeamTournamentRequest', 'UpdateRobotRivalsScoreRequest', 'GetRoyalWorldCupLeaderboardRequest',
                 'GetTeamTournamentInfoRequest', 'ClaimTeamBattleRewardRequest']
    table('proto-event-requests', '赛事与排行：请求字段', ['请求', '字段（名称:类型）'],
          [[n[:-7], '、'.join(fields(n)) or '（无字段）'] for n in event_req if n in dump.types], src)
    resp = ['EnterRoyalWorldCupResponse', 'EnterTeamTournamentResponse', 'GetTeamTournamentInfoResponse',
            'GetRoyalWorldCupInfoResponse', 'GetRobotRivalsInfoResponse']
    table('proto-event-responses', '赛事与排行：响应字段', ['响应', '字段（名称:类型）'],
          [[n[:-8], '、'.join(fields(n)) or '（无字段）'] for n in resp if n in dump.types], src)


def configs(ws):
    cfg = ws / REA / 'resources/config'
    src = f'{REA}/resources/config/'
    tt = json.loads((cfg / 'team_treasure_default_config.json').read_text())
    table('team-treasure-segments', 'Team Treasure 默认配置：分段目标', ['分段 s', '三档目标 t'],
          [[s['s'], ' / '.join(str(x) for x in s['t'])] for s in tt['segments']], src + 'team_treasure_default_config.json',
          '配置只给出数字；t 的业务单位与 s 的分配规则以消费代码和服务端为准。')
    inv = json.loads((cfg / 'invite_friends_default_config.json').read_text())
    rows = [[s['t'], '、'.join(f"{r['t']}×{r['a']}" for r in s['rs'])] for s in inv['s']]
    table('invite-friends-steps', '邀请好友默认配置：邀请人数台阶与奖励', ['邀请人数 t', '奖励（代码×数量）'], rows,
          src + 'invite_friends_default_config.json', '代码含义见「资源与奖励经济」的奖励代码表。')
    NUMBERS['invite_steps'] = len(rows)
    wl = json.loads((cfg / 'weekly_leaderboard_default_config.json').read_text())
    table('weekly-leaderboard-rewards', '每周排行榜默认配置：名次档奖励', ['档', '奖励（代码×数量）'],
          [[i + 1, '、'.join(f"{r['t']}×{r['a']}" for r in e['r'])] for i, e in enumerate(wl['r'])],
          src + 'weekly_leaderboard_default_config.json')


def multiplayer(ws):
    rows = read_csv(ws / AUD / 'indices/bundle_module_inventory.csv')
    key = 'group(活动/玩法)'
    groups = collections.OrderedDict()
    for r in rows:
        g = groups.setdefault((r['config'], r[key]), [0, 0])
        g[0] += 1
        g[1] += int(r['size_bytes'])
    mp = [(k[1], v) for k, v in groups.items() if k[0] == 'multiplayer']
    table('multiplayer-bundles', '多人玩法的资源组（bundle group）', ['group', 'bundle 行数', '清单字节合计'],
          [[g, v[0], fmt(v[1])] for g, v in sorted(mp)],
          f'{AUD}/indices/bundle_module_inventory.csv', '资源组名对应客户端分组，不等于线上开放的活动数；字节是清单里的 size_bytes，不是下载后体积。')
    NUMBERS['multiplayer_groups'] = len(mp)
    cnt = collections.Counter(r['config'] for r in rows)
    ngroup = collections.Counter(k[0] for k in groups)
    NUMBERS['bundle_rows'] = len(rows)
    table('bundle-config-counts', 'bundle 清单按配置类别', ['config', 'group 数', 'bundle 行数'],
          [[c, ngroup[c], cnt[c]] for c in ('feature', 'gameplay', 'multiplayer', 'singleplayer')],
          f'{AUD}/indices/bundle_module_inventory.csv', f'合计 {len(rows)} 行。')


def economy(ws):
    aud = ws / AUD / 'indices'
    codes = read_csv(aud / 'reward_code_map.csv')
    detail = read_csv(aud / 'activity_reward_detail.csv')
    cats = [
        ('货币', ['Coins']),
        ('生命', ['UnlimitedLives']),
        ('局内道具（单个）', ['Hammer', 'Arrow', 'Cannon', 'Jester', 'Tnt', 'Lightball', 'Rocket', 'AllInGameBoosters']),
        ('局内道具（限时无限）', ['UnlimitedRocket', 'UnlimitedTnt', 'UnlimitedLightball', 'UnlimitedHammer', 'UnlimitedArrow',
                           'UnlimitedCannon', 'UnlimitedJester', 'UnlimitedInGameBooster']),
        ('局前道具', ['Prelevel', 'UnlimitedPrelevel']),
        ('活动代币与倍率', ['EventMultiplier', 'MultiplierToken', 'Pickaxe', 'Elixir', 'MagicBall', 'FortuneToken', 'Ticket', 'Ship',
                        'PuzzlePiece', 'Anvil', 'GoldenBall', 'EnergyCrystal']),
        ('卡包', ['SeasonalCardPack2', 'SeasonalCardPack3', 'SeasonalCardPack4', 'SeasonalCardPack6', 'SeasonalCardPackGuaranteed']),
        ('外观与资料', ['NicknameStyle', 'FrameStyle', 'StyledName', 'AvatarStyle', 'ProfileBadge']),
    ]
    names = {c['reward_type_name']: c for c in codes}
    rows, covered = [], set()
    for label, members in cats:
        row = [names[m]['code'] + '＝' + m for m in members if m in names]
        covered.update(m for m in members if m in names)
        rows.append([label, len(row), '、'.join(row)])
    other = [n for n in names if n not in covered and names[n]['reward_type_value']]
    if other:
        rows.append(['未归类', len(other), '、'.join(names[n]['code'] + '＝' + n for n in other)])
    rows.append(['常量直接确定', 1, 'RLRU＝RoyalLeagueRankUp'])
    NUMBERS['reward_codes'] = len(codes)
    table('reward-codes', '奖励代码表（RewardConfigs.GetRewardType 反汇编）', ['类别', '代码数', '代码＝奖励类型'], rows,
          f'{AUD}/indices/reward_code_map.csv')
    agg = collections.defaultdict(lambda: [0, 0.0, set(), set()])
    for r in detail:
        a = agg[r['reward_type'] or ('礼盒：' + r['code'])]
        a[0] += 1
        a[1] += float(r['amount'] or 0)
        a[2].add(r['activity'])
        a[3].add(r['amount'])
    minutes = {'UnlimitedLives', 'UnlimitedRocket', 'UnlimitedTnt', 'UnlimitedLightball', 'UnlimitedPrelevel'}
    style = {'FrameStyle', 'StyledName', 'ProfileBadge', 'AvatarStyle'}
    rows = []
    for k, v in sorted(agg.items(), key=lambda x: -x[1][0]):
        if k in style:
            rows.append([k, v[0], len(v[2]), '—', '—', '数量列取值 ' + '、'.join(sorted(v[3], key=float)) + '，不是可相加的数量'])
        else:
            rows.append([k, v[0], len(v[2]), fmt(int(v[1])), f'{v[1] / v[0]:.1f}', '分钟' if k in minutes else '个／点'])
    NUMBERS.update(reward_nodes=len(detail), reward_activities=len({r['activity'] for r in detail}))
    table('reward-aggregate', '默认奖励节点按奖励类型汇总（29 个配置）', ['奖励类型', '节点数', '涉及配置', '数量合计', '平均每节点', '单位'], rows,
          f'{AUD}/indices/activity_reward_detail.csv',
          '合计是配置节点相加，不是单个玩家的产出；免费轨、付费轨和多档重复计入。单位取自表中 text 列；“礼盒”两行的代码不在奖励代码表内。')
    iap = read_csv(aud / 'iap_product_catalog.csv')
    fam = collections.OrderedDict()
    for r in iap:
        fam.setdefault(r['product_id'].split('.')[0], []).append(int(r['price_hint_usd']))
    NUMBERS['sku_count'] = len(iap)
    table('sku-families', 'IAP 商品标识按前缀归并', ['商品前缀', '标识数', '价位提示（美元，来自商品标识尾号）'],
          [[k, len(v), ' / '.join(str(x) for x in sorted(v))] for k, v in fam.items()],
          f'{AUD}/indices/iap_product_catalog.csv',
          'price_hint_usd 取自商品标识尾号，不是商店实时成交价；地区价格和币种由商店返回。')
    NUMBERS['sku_families'] = len(fam)


def assets(ws):
    res = ws / REA / 'resources'
    aud = ws / AUD / 'indices'
    ot = read_csv(aud / 'object_type_stats.csv')
    total = sum(int(r['count']) for r in ot)
    NUMBERS.update(objects=total, object_types=len(ot))
    table('assets-object-types', 'Unity 对象类型（前 12）', ['类型', '对象数', '占比'],
          [[r['type'], fmt(int(r['count'])), f"{int(r['count']) / total * 100:.1f}%"] for r in ot[:12]],
          f'{AUD}/indices/object_type_stats.csv', f'全部 {len(ot)} 类，合计 {fmt(total)} 个对象。')
    au = read_csv(res / 'audio_inventory.csv')
    secs = sum(float(a['length']) for a in au)
    table('assets-audio', '音频片段（FSB5 原始流）', ['指标', '数值'], [
        ['片段数', fmt(len(au))], ['字节合计', fmt(sum(int(a['bytes']) for a in au))],
        ['总时长', f'{secs / 60:.1f} 分钟'],
        ['单段时长中位数', f"{statistics.median(float(a['length']) for a in au):.2f} 秒"],
        ['超过 60 秒的片段', f"{sum(1 for a in au if float(a['length']) > 60)} 段"],
        ['声道', ' / '.join(f'{k}声道×{v}' for k, v in sorted(collections.Counter(a['channels'] for a in au).items()))],
        ['采样率', ' / '.join(f'{k}Hz×{v}' for k, v in collections.Counter(a['frequency'] for a in au).most_common())],
    ], f'{REA}/resources/audio_inventory.csv', '已核对文件头魔数，尚未批量转换与逐段试听。')
    an = read_csv(res / 'animation_inventory.csv')
    NUMBERS['animations'] = len(an)
    table('assets-animation', '动画片段（AnimationClip）', ['指标', '数值'], [
        ['片段数', fmt(len(an))], ['带事件的片段', fmt(sum(1 for a in an if int(a['events']) > 0))],
        ['事件总数', fmt(sum(int(a['events']) for a in an))],
        ['采样率', ' / '.join(f'{float(k):g}×{v}' for k, v in collections.Counter(a['sample_rate'] for a in an).most_common())],
        ['时长中位数', f"{statistics.median(float(a['stop']) - float(a['start']) for a in an):.2f} 秒"],
    ], f'{REA}/resources/animation_inventory.csv', '曲线与事件可读；完整表现还要接动画状态机与协程。')
    loc = read_csv(res / 'localization.csv')
    langs = [c for c in loc[0].keys() if c not in ('term', 'term_type')]
    filled = sum(1 for r in loc for c in langs if r[c])
    NUMBERS.update(terms=len(loc), filled_cells=filled, languages=len(langs))
    table('assets-localization', '本地化词条', ['指标', '数值'], [
        ['term 数', fmt(len(loc))], ['语言列', f'{len(langs)} 种：' + '、'.join(langs)],
        ['非空文案单元', fmt(filled)], ['含中文列', '否'],
    ], f'{REA}/resources/localization.csv')
    mono = json.loads((res / 'validation.json').read_text())
    table('assets-pointers', '引用与组件解析', ['指标', '数值'], [
        ['非空 PPtr 引用', fmt(mono['pointer_validation']['resolved'])],
        ['空引用', fmt(mono['pointer_validation']['null'])],
        ['TextAsset 与对象原始字节一致', fmt(mono['text_direct_raw_matches'])],
    ], f'{REA}/resources/validation.json')


def package(ws):
    rea = ws / REA
    fm = json.loads((rea / 'evidence/file-manifest.json').read_text())
    ext = collections.Counter(os.path.splitext(x['path'])[1].lower() for x in fm)
    srcish = ['.cs', '.csproj', '.sln', '.unity', '.prefab', '.psd', '.psb', '.fla', '.blend', '.fbx', '.wav', '.aep', '.asmdef']
    NUMBERS.update(manifest_files=len(fm), manifest_bytes=sum(x['bytes'] for x in fm))
    table('package-extensions', '随包物化文件（1,493 份）按扩展名', ['扩展名', '文件数'],
          [[k or '（无扩展名）', v] for k, v in ext.most_common(12)], f'{REA}/evidence/file-manifest.json',
          f'合计 {fmt(sum(x["bytes"] for x in fm))} 字节。')
    table('package-source-types', '制作源文件类扩展名检查', ['扩展名', '命中数'],
          [[e, ext.get(e, 0)] for e in srcish], f'{REA}/evidence/file-manifest.json',
          '清单只含样本里物化出的 1,493 份文件；0 表示该清单里没有，不证明包外不存在。')
    NUMBERS['source_ext_hits'] = sum(ext.get(e, 0) for e in srcish)
    inputs = [
        ('XAPK（APKPure）', 'com.dreamgames.royalmatch_38174_apkpure.xapk', ws / AUD / 'bundle/com.dreamgames.royalmatch_38174_apkpure.xapk'),
        ('ARM64 APKS', 'rm38174.apks', ws / AUD / 'bundle/arm64/rm38174.apks'),
        ('ARM64 il2cpp 主库', 'libil2cpp.so', ws / REA / 'raw/arm64/lib/arm64-v8a/libil2cpp.so'),
    ]
    import hashlib
    rows = []
    for label, name, path in inputs:
        if path.exists():
            h = hashlib.sha256()
            with open(path, 'rb') as fh:
                for chunk in iter(lambda: fh.read(1 << 20), b''):
                    h.update(chunk)
            rows.append([label, name, fmt(path.stat().st_size), h.hexdigest()])
    im = json.loads((rea / 'resources/input_manifest.json').read_text())
    for item in im:
        rows.append(['APK', Path(item['apk']).name, fmt(item['bytes']), item['sha256']])
    table('package-inputs', '输入包体与哈希', ['类型', '文件', '字节', 'SHA-256'], rows, f'{AUD}/bundle/ · {REA}/resources/input_manifest.json')
    nat = json.loads((ws / AUD / 'indices/android_native_summary.json').read_text())
    table('package-native', 'Android 外壳与原生库', ['指标', '数值'], [
        ['DEX 文件', f"{nat['dex']['files']} 个 · {fmt(nat['dex']['bytes'])} 字节"],
        ['原生 .so', f"{nat['native']['files']} 个 · {fmt(nat['native']['bytes'])} 字节"],
        ['il2cpp 主库', f"{nat['native']['il2cpp_core_files']} 个（armeabi-v7a、arm64-v8a 各 1）"],
        ['非 il2cpp 库', '、'.join(n for n in nat['native']['non_il2cpp_names'])],
    ], f'{AUD}/indices/android_native_summary.json', 'DEX 与非 il2cpp 库只做了盘点，未系统反编译。')
    summ = json.loads((rea / 'resources/summary.json').read_text())
    table('package-unity', 'Unity 资源盘点', ['指标', '数值'], [
        ['assetbundle', f"{summ['bundles']} 个"], ['对象总数', fmt(summ['objects'])],
        ['对象类型', f"{len(summ['object_types'])} 类"],
    ], f'{REA}/resources/summary.json')
    dump = Dump(rea / 'evidence/initial-dumper-artifacts/dump.cs')
    royal = sum(1 for t in dump.all if (t['ns'] or '').startswith('Royal'))
    NUMBERS.update(il2cpp_types=len(dump.all), royal_types=royal)
    table('package-il2cpp', 'IL2CPP 类型盘点', ['指标', '数值'], [
        ['dump.cs 类型条目', fmt(len(dump.all))],
        ['其中 Royal.* 命名空间', fmt(royal)],
        ['方法记录（script.json）', '241,756'],
    ], f'{REA}/evidence/initial-dumper-artifacts/dump.cs · {REA}/REPORT.md', '方法记录是元数据与地址，不是同等数量的源码函数。')


def main():
    ap = argparse.ArgumentParser()
    ap.add_argument('--workspace', default=str(ROOT.parent))
    ws = Path(ap.parse_args().workspace).resolve()
    for fn in (areas, levels, protocol, configs, multiplayer, economy, assets, package):
        fn(ws)
    OUT.write_text(json.dumps(dict(numbers=NUMBERS, tables=TABLES), ensure_ascii=False, indent=1) + '\n')
    print(f'{len(TABLES)} tables, {len(NUMBERS)} numbers -> {OUT.relative_to(ROOT)}')


if __name__ == '__main__':
    main()
