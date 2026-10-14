#!/usr/bin/env python3
"""Read audit indexes without changing them; save site-owned progression evidence."""
import argparse
import csv
import hashlib
import json
import statistics as st
from collections import defaultdict
from pathlib import Path

NAMES = dict(pair.split(':', 1) for pair in '''Box:箱子 Cupboard:橱柜 Coin:金币 MailBox:邮箱 Egg:蛋 Potion:药水 Vase:花瓶 OwlStatue:猫头鹰雕像 Bush:灌木 Safe:保险箱 Bird:鸟 ColorBox:彩色箱 IceCrusher:碎冰机 Piggy:小猪 Oyster:牡蛎 Hat:帽子 FlowerPot:花盆 DynamiteBox:炸药箱 Cup:杯子 BirdNest:鸟巢 Rock:石头 Soil:土块 Drill:钻头 LightBulb:灯泡 Frog:青蛙 MetalCrusher:金属粉碎机 CookieJar:饼干罐 BowTie:领结 Caldron:大锅 Pouch:袋子 Lantern:灯笼 Bowling:保龄球 SeedBox:种子箱 GummyMaker:软糖机 Ufo:飞碟 Soap:肥皂 WhackAMole:打地鼠 MapScrollCollect:地图卷收集器 HoneyJar:蜂蜜罐 HelmetPiggy:头盔小猪 IceCube:冰块 SlotMachine:老虎机 DuckShooting:射鸭装置 Magnet:磁铁 ConveyorBelt:传送带 Fireworks:烟花 Coil:线圈 CoilCollect:线圈收集器 CandyCane:拐杖糖 Mushroom:蘑菇 Tablet:石板 Crystal:水晶 Ivy:藤蔓 GiantPiggy:巨型小猪 SeaMine:水雷 VendingMachine:售货机 Porcelain:瓷器 MagicGem:魔法宝石 Furnace:炉子 ToyBoxVertical:竖向玩具箱 ToyBoxHorizontal:横向玩具箱 AncientVault:古代金库 MagicCube:魔方 Igloo:冰屋 Log:原木 LogCollect:原木收集器 Pin:插销 Shuttle:飞梭 Laser:激光 PowerCube:能量块 PotionTube:药水管 Cuckoo:布谷鸟 GrassBomb:草地炸弹 PortalDoor:传送门 Sapphire:蓝宝石 RoyalCapsuleVertical:竖向皇家胶囊 RoyalCapsuleHorizontal:横向皇家胶囊 ChocoMaker:巧克力机 BowlingRack:保龄球架 RoyalBot:皇家机器人 PropellerMachine:飞机制造机 Sword:剑 BoomerangBox:回旋镖箱 JellyBomb:果冻炸弹 Squirrel:松鼠 Radar:雷达 ClockTower:钟塔 MagicLantern:魔法灯笼 Pair:配对机关 RoofMachine:屋顶装置 BoxingGlove:拳击手套 Lava:熔岩 Turtle:乌龟 ToyBoat:玩具船 ColorMixer:调色装置 PaintBucket:油漆桶 Otter:水獭 Bathtub:浴缸 grass:草地 honey:蜂蜜 curtain:窗帘 chain:锁链 roof:屋顶 jelly:果冻 treasuremap:藏宝图 ceramic:陶瓷层 mushroomSoil:蘑菇土壤 blinds:百叶窗 forceField:力场 cryptex:密码筒 iceBorder:冰边框 metalPlates:金属板'''.split())
FILES = ['level_boards_fbs.csv', 'level_obstacle_index.csv', 'item_mechanism_taxonomy.csv',
         'obstacle_unlock_table.csv', 'royal_match_all_level_configuration_curve.csv']


def extract(source):
    folder = source / 'indices'
    sources = [{'path': f'indices/{name}', 'sha256': hashlib.sha256((folder/name).read_bytes()).hexdigest()} for name in FILES]
    def read(name):
        with (folder/name).open(encoding='utf-8-sig') as f:
            return list(csv.DictReader(f))
    taxonomy = read('item_mechanism_taxonomy.csv')
    assert len(taxonomy) == 98
    lookup = {}
    for row in taxonomy:
        for code in row['tiled_id_variants'].split(','):
            code = int(code)
            assert code not in lookup, (code, row['family'])
            lookup[code] = row['family']
    boards = read('level_boards_fbs.csv')
    layers = read('level_obstacle_index.csv')
    assert sorted(int(r['level_id']) for r in boards) == list(range(1,14501))
    assert sorted(int(r['level_id']) for r in layers) == list(range(1,14501))
    appearances = defaultdict(list)
    for row in boards:
        present = {lookup[code] for code in map(int,row['items'].split(',')) if code in lookup}
        for family in present:
            appearances[family].append(int(row['level_id']))
    records = []
    for row in taxonomy:
        family = row['family']
        found = sorted(appearances[family])
        assert found and family in NAMES
        records.append(dict(key=family, name=NAMES[family], channel='物体层', first=found[0],
                            next=found[1:5], levels=len(found), tiled_ids=list(map(int,row['tiled_id_variants'].split(',')))))
    layer_fields = ['grass','honey','curtain','chain','roof','jelly','treasuremap','ceramic',
                    'mushroomSoil','blinds','forceField','cryptex','iceBorder','metalPlates']
    unlocks = {r['obstacle']:r for r in read('obstacle_unlock_table.csv')}
    for name in layer_fields:
        found = sorted(int(r['level_id']) for r in layers if int(r[name]) > 0)
        assert found[0] == int(unlocks[name]['unlock_level'])
        assert len(found) == int(unlocks[name]['levels_containing'])
        records.append(dict(key=name, name=NAMES[name], channel='格子层', first=found[0],
                            next=found[1:5], levels=len(found), tiled_ids=[]))
    assert all(int(r['waterSoil']) == 0 for r in layers)
    records.sort(key=lambda r: (r['first'],r['channel'],r['key']))
    debut_levels = sorted({r['first'] for r in records})
    stages = []
    for lo,hi in [(1,100),(101,1000),(1001,3000),(3001,6000),(6001,10000),(10001,14500)]:
        new = [r for r in records if lo <= r['first'] <= hi]
        dates = sorted({r['first'] for r in new})
        stages.append(dict(lo=lo,hi=hi,records=len(new),debut_levels=len(dates),
                           gaps=[b-a for a,b in zip(dates,dates[1:])],
                           dates=dates))
    raw = read('royal_match_all_level_configuration_curve.csv')
    assert sorted(int(r['level']) for r in raw) == list(range(1,14501))
    weights = {'obstacle':.24,'move':.22,'target':.22,'multiGoal':.12,'topology':.08,'color':.06,'predefined':.06}
    axes = {}
    pressures = {}
    errors = []
    clamp = lambda x: max(0,min(1,x))
    for row in raw:
        n = lambda key: float(row[key])
        level=int(row['level']); cells=max(1,n('cells'))
        a = dict(obstacle=clamp(n('obstacleCells')/cells), move=clamp((40-n('move'))/25),
                 target=clamp(n('targetUnits')/(cells*1.5)), multiGoal=clamp((n('goalCount')-1)/3),
                 topology=clamp(1-n('nonzeroItems')/cells),color=clamp(((n('colorPool') or 4)-3)/2),
                 predefined=clamp(n('predefined')/cells))
        axes[level]=a; pressures[level]=n('configurationPressure')
        errors.append(abs(sum(a[k]*v for k,v in weights.items())*100-pressures[level]))
    assert max(errors) < .00501
    blocks = []
    rows_by_level = {int(r['level']):r for r in raw}
    for lo in range(1,14501,500):
        ids = list(range(lo,lo+500))
        blocks.append(dict(lo=lo,hi=lo+499,pressure=st.mean(pressures[i] for i in ids),
                           moves=st.mean(float(rows_by_level[i]['move']) for i in ids),
                           axes={k:st.mean(axes[i][k] for i in ids) for k in weights}))
    return dict(build=38174, level_count=14500, sources=sources, records=records, stages=stages,
                debut_levels=debut_levels, pressure_blocks=blocks,
                formula_max_rounding_error=max(errors), formula_mean_rounding_error=st.mean(errors),
                color_pool_default_rows=sum(r['colorPool']=='0' for r in raw),
                method='Items只按TiledId映射模型族，Cells各格子层非零即记存在；每类每关只计一次，不读取GoalType或运行时生成。')


if __name__ == '__main__':
    parser=argparse.ArgumentParser()
    parser.add_argument('--source-root',type=Path,required=True)
    args=parser.parse_args()
    output=Path(__file__).resolve().parents[1]/'content/level-progression.json'
    data=extract(args.source_root)
    output.write_text(json.dumps(data,ensure_ascii=False,indent=2)+'\n')
    print('Saved',len(data['records']),'source records;',len(data['debut_levels']),'distinct debut levels')
    print(json.dumps(data['stages'],ensure_ascii=False))
