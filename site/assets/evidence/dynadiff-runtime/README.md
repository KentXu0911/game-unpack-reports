# DynaDiff：初始化客户端中的局部对照

对象：Royal Match build 38174，ARM64，Frida 16.5.9。`verification.json`是已完成调用的脱敏摘录；私有日志与崩溃日志仅保留SHA-256，不公开账号存档、标识或进程绝对地址。

## 做了什么

在独立、断网的Android模拟器上安装同版原包，复制本地数据与资源缓存。原设备只读，不改原设备进度。游戏加载前接入Frida，等到第101关初始化后，在ApplicationContext.ManualUpdate（0x37DFF54）回调中排队执行原函数。没有替换玩法函数或强制最终seed。

1. 监视账号UserInventory对象的+0xB0，长度8字节，读监视。只覆盖当时一个UnityMain线程。每次受控调用前重新安装，一次触发即关闭。
2. 用原getter（0x2A097F4）作前后正对照，均捕获该地址读取。NativeFunction必须指定`exceptions:'propagate'`；默认异常接管会截走监视异常。
3. 原始本地long为81920，表示DeltaMove原码10（解码为0），其他已知位段为0。它来自复制的本地状态，不能叫作服务器实抓。
4. 第101关实际开局显示25步。两次有效交换后显示23步；记录9次GetRandomFillItem及其GetRandomItem调用。这一走棋观察段没有读取命中。开局前另有0x102F22C读取，触发后监视关闭，不能把开局算成完整无读取覆盖。
5. 同一已初始化局面中，依次注入81920、三个构造long、81920。构造long的关号101、段5、TryCount2=4095；DeltaMove依次为-3、+3、+21。这些是压力输入，不是实际账号难度策略。
6. 在普通步数、seed选取、seed重新生成、补棋、飞机单格选点入口做对照；每种测试五次，最后回到基准值。输出逐项相同，测试调用内没有监视命中。
7. 测试完成后再尝试UI重试，客户端异常退出。原因未定位。**整局测试与重试测试均未通过，不能把局部结果推广为全游戏无影响。**

## 如何控制随机输入

每个用例前恢复LevelRandomManager的两个System.Random流（+0x30、+0x38）：`_inext`、`_inextp`和`_seedArray`的56个整数。seed测试另保存、恢复seedList内容／size／version与manager字段。

选取测试让`isGenerated=true`，调用原`ResetDifficultySeed`选择；生成测试先设`isGenerated=false`，仍调用原`ResetDifficultySeed`，由它进入原`GenerateTrySeeds(1000)`，生成、洗牌，再选取。没有把输出seed写死。完整1000项排列逐项比对；公开其前16项和规范JSON SHA-256。

飞机测试使用真实棋盘、finder及随机对象，原构造函数创建`ExplodeData(trigger=Propeller(8), id=2000000, point=(4,2), matchType=0, canSpreadJelly=false, isHorizontalRocket=false, comboId=-1, exploderIndex=-1)`；调用`FindSingleTargetForCellExploder`，每个用例32次。这里会重新评分、抽取单格，但不登记在途、不飞行、不扣层。因此不是32架真实飞机连发，也不覆盖其他障碍局面和组合。

## 原入口

- 普通步数：SemiDynamicDifficulty.GetUpdatedMoveCount `0x1C8532C`；真实策略对象取LevelManager+0x10的LevelEpisodeHelper，再取+0x10。
- seed选择：LevelRandomManager.ResetDifficultySeed `0x2A30E64`。
- seed生成／洗牌：GenerateTrySeeds `0x2A3116C`，由上个入口调用。
- 补棋：ItemCreator.GetRandomFillItem `0x20E9CA4`；对象与fillingCell参数从真实补棋调用捕获。
- 候选池：LevelSet.GetRandomItem `0x38E6398`。
- 飞机单格：ExplodeTargetFinder.FindSingleTargetForCellExploder `0x20F22E8`，内部FillScores `0x20EF844`、FindSingleTargetCellForExploder `0x20F1E24`。
- 爆炸参数构造：ExplodeData..ctor `0x2D398AC`；坐标读取CellModel.get_Point `0x2AC8A28`。

## 未分类读取与覆盖边界

`0x102F22C`是元数据方法范围之外的本地指令`ldr x25,[x8],#0x80`，相邻代码检查读值是否在某地址范围内。它形似底层内存扫描，但尚未完成函数归属和调用栈核对；不能当作已确认的垃圾回收，也不能归入难度消费者。这个事件会关闭一次性监视，已经从开局覆盖结论中排除。

前后正对照证明监视器当时能检测原getter读取；没有证明其他线程、未运行分支或此前已缓存的值均无影响。修改long是在棋盘初始化后进行，没有覆盖“服务器在开局更早阶段写入并生成另一份缓存”的可能。

初次清理类型错误与未完成参数构造的飞机尝试均排除，只保留后续完成的对照。重试异常发生在所有已接受对照及后正对照之后；这些记录不能用于证明完整客户端稳定性。

## 复算摘录

`python3 scripts/summarize_dynadiff_runtime.py --log <私有runtime-events.jsonl> --crash <私有crash日志>`

脚本重新检查完成标记、参数构造顺序、五次输出、排列完整性和监视命中，生成脱敏回执。它不是重跑Android，也不把未通过的重试修饰成通过。方法原字节见`native.zip`，按下一不同元数据地址截取；不宣称完整控制流。

原字节快照可用`PYTHONPATH=../royal-match-unity/Tools/.deps /usr/bin/python3 scripts/extract_dynadiff_runtime_native.py --workspace ..`只读重算，需已有Capstone与pyelftools。
