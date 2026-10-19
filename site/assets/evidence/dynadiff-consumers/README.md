# DynaDiff：输入状态的直接后果与玩法消费者核查

范围：Royal Match build 38174，同版ARM64 ELF与IL2CPP元数据，离线分析。

- ELF SHA-256：`8efe71a2e832792f0488079ce4de073a4ea634b90591f8e9e5b1efed7bcf2fdd`
- 元数据 SHA-256：`5440692c2b9f99c6fd1ec2375f73bdd6c5e8638c2029ec4170499da77f9c0639`
- 本目录没有真实账号响应；verification.json中的long均为构造输入。

## 可以确认的效果

1. `ProcessKeyValueResponse`在`0x1F0B2F4`起比较DynaDiff键，`0x1F0B350`取得响应long，`0x1F0B364`调用状态更新。
2. `UpdateDynamicDifficultyInventory`在`0x2A0E804`覆盖UserInventory实例`+0xB0`，随后调用`UserKeyValue.SetLong`。不是对原值做增量计算；没有在这里调用玩法刷新。
3. `UserKeyValue.SetLong`转入`KeyValueTable.SetLong`，把long转为字符串并InsertOrReplace。`DatabaseService.InsertOrReplace`标记shouldSave并交给SQLite；不把“写表”描述为立刻完成磁盘提交。
4. 响应处理DynaDiff分支`0x1F0B368–0x1F0B36C`转到共同收尾`0x1F0BA4C–0x1F0BA54`，调用`SetSynced(key,true)`。收到后不立即原样重复上传。
5. `UpdateDataFromLocalStorage`在`0x2684FA4`调用GetLong(DynaDiff,0)，`0x2684FB4`恢复到实例`+0xB0`。
6. `GetUpdatedKeyValues`在待同步计数满足条件时，`0x2685D4C`读取该字段，`0x2685D5C`加入待上传字典。待同步计数不是游戏尝试次数。

## 查到哪些消费者

trace.json保存立即数B/BL扫描、整值与位段读写函数的对齐指针候选、字符串键引用、以及从UserManager.CurrentUser.Inventory或已知类型字段传播得到的字段读写点。

已核对的键引用属于响应、保存、恢复、上传和DatabaseService的键名数组构造。构造函数先创建字符串数组，将DynaDiff作为数组元素，再保存到keyValueKeys；不是调难算法注册。

已确认类型的字段访问属于恢复、上传、整值存取、位段读写与重置。没有定位到普通关卡步数、seed、补棋、飞机评分的DynaDiff消费者。读取函数的直接B/BL调用为零，但此结论不能单独证明无消费者，所以同时查了内联字段读取。

指针命中中，`.rela.dyn`是重定位项的addend，不是调用者；`.data`中的函数地址本身也不证明被玩法调用。本检查没有完整恢复间接调用、委托、反射、跨过程别名与所有加载编码。候选区间采用相邻元数据地址；最后一个入口没有后继边界，已跳过并记录。线性类型传播不等于完整控制流证明，不能把负结果写成“任何情况下永远无效”。

## 原字节执行验证

verification.json：在构造账号对象里，通过原整值setter写入long；执行原getter和四个位段读取函数，再执行完整的`SemiDynamicDifficulty.GetUpdatedMoveCount`普通分支。`IsLeague`也执行原字节，输入字段为0。

DeltaMove为0、−3、+3、+21时，输入25步均返回25步；步数函数没有读取难度long。内存读取探针用整值getter做正对照，确实捕获`+0xB0`读取，避免把失效探针当作零命中。

只替代元数据／类初始化，没有替代玩法getter。未执行服务器响应、SQL、Unity调度、seed、补棋或完整对局。本验证证明普通步数入口不消费这个状态，不能扩展为整局差分实验。

## 复算

从报告仓库运行，capstone／pyelftools／Unicorn需位于Python搜索路径。脚本只读相邻研究原件，输出至本目录。

```sh
PYTHONPATH=../royal-match-unity/Tools/.deps /usr/bin/python3 scripts/trace_dynadiff_consumers.py
PYTHONPATH=/tmp/rm-deep-python:../royal-match-unity/Tools/.deps /usr/bin/python3 scripts/verify_dynadiff_consumers.py
python3 scripts/extract_module_facts.py --workspace ..
python3 scripts/build_site.py
```

native.zip保存相关原字节与带方法名的线性汇编，native-manifest.json记录逐段及压缩包SHA-256。方法区间截取不保证包含所有分支尾部。
