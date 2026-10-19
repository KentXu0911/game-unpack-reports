# build 38174 两份尝试次数阈值表的作用核查

结论：DynamicDifficultyEasy／Hard是按关卡段记录尝试次数上下限的包内TextAsset；本版已查普通主线路径未将它们接入种子选择或初始步数。资源保留但策略不消费，与未启用／遗留配置相符。历史上是否使用过、确切比较口径和永久废弃状态不能由此确认。

## 取证链

- `asset-references.json`：按完整bundle_manifest读取24个Unity包（含14个无扩展名包），逐一校验SHA-256，扫描166,986个对象。对本地／外部resources.assets指针先检索12字节PPtr，再用typetree核实。仅命中globalgamemanagers的ResourceManager目录，键为dynamicdifficultyeasy／dynamicdifficultyhard。无候选解析失败；没有其他场景／组件直接指向两表。目录登记说明可按名加载，不证明实际加载。名称构造不属于PPtr检索范围。
- `consumer-names.json`：两表名、difficultyData与四个min/max字段在dump.cs、stringliteral、原元数据和原ELF的大小写无关文本检索。原二进制检查UTF-8与UTF-16LE。没有相应名称或字段命中；不能排除构造名称、间接解析或外部代码。
- `metadata-excerpts.json`：接口仅见SemiDynamicDifficulty这一具体实现；LevelEpisodeHelper.LevelDifficulty仅None=0。`native.zip`中构造函数0x2059A0C固定创建SemiDynamicDifficulty，0x2059A60调用其构造函数。GetUpdatedMoveCount转交接口槽2；其余回调也转交持有策略，没有额外阈值比较。
- `role-checks.json`：6个空方法的ret字节断言、GetSection／GetGroupMove恒0指令断言、策略构造调用点与DynaDiff同步键重定位断言。主线步数原样返回、League加步与早期计数逻辑另见difficulty-deep/native.zip。断言范围不等于整个程序验证。
- `direct-calls.json`：可执行PT_LOAD段全部ARM64立即数B／BL，目标含策略、动态状态、Resources.Load、TextAsset读取与LevelRandomManager。没有SetLevelDifficultyStrategy／GetTryCount2／GetDeltaMove的直接调用。间接调用不在直接扫描内；同步代码直接读+0xB0，无需调用getter，因此不把getter零调用误写成状态从未被读取。
- `native.zip`与`native-manifest.json`：原bin／汇编与哈希，包含策略、状态、随机生命周期、全部直接TextAsset.get_text调用者及同步入口。捕获数量只表示原字节快照，不表示所有函数语义已恢复。相邻元数据入口作为线性截断边界，不声称完整CFG。
- `runtime-l101.json`：复用2026-09-21原日志，提供原路径、SHA-256、行号、必要字段摘录与探针哈希，省略无关账号／地址／时间信息。LevelTryCount 18／19／20对应seed 895／429／174；GetUpdatedMoveCount均25→25，动态字段和DynaDiff事件零命中，无探针安装错误。两次Start先记录原始25步再强制为1；Restart无独立自然初始步数记录，沿用强制1步状态。共3次开局、1次正式Fail。未跨表阈值，也未建立LevelTryCount与表中TryCount的口径映射，不是自然胜率实验。

## 状态同步和两表分开解释

ProcessKeyValueResponse把收到的long写入UserInventory+0xB0并持久化。SyncManager.GetUpdatedKeyValues在同步计数结构+0x4≥1时，将这个long加入上传字典。0x51BD900槽指向0x544F0B8，对应DynaDiff字符串。这条收发链不解析两表；同步计数不是玩家尝试次数。存在账号状态接口不证明服务器下发了生效调难策略。

## 复算

在报告仓库运行：

```sh
PYTHONPATH=../royal-match-unity/Tools/.assetdeps:../royal-match-unity/Tools/.deps \
  /usr/bin/python3 scripts/audit_difficulty_role.py --workspace ..
python3 scripts/extract_module_facts.py --workspace ..
python3 scripts/build_site.py
python3 scripts/check_site.py
```

仅写本报告仓库，不修改原解包或Unity工程。ELF SHA-256为8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd，元数据为5440692c2b9f99c6fd1ec2375f73bdd6c5e8638c2029ec4170499da77f9c0639。
