# DynaDiff重放补查：随机流与调用顺序

样本build38174，ARM64 libil2cpp.so，哈希见native-manifest.json。独立断网emulator-5556；原设备5554未改动。所有DynaDiff输入为本地构造，未捕获或重放真实服务器响应。

## 先固定观察方式

probe将snapshot请求排入ApplicationContext.ManualUpdate，由游戏线程读取。每一步之前要求FallManager.IsAllItemsSteady为真、special operation数为0、GameOperationContainer整数数组全部为0、提示列表完成且非空、观测棋盘连续至少1秒不变。用实际adb点击/滑动，不直接调用玩法函数。终局单独处理。相同输入存档恢复方式和上一组dynadiff-cold-start一致，额外隔离外部未结束棋盘Saves；两组同样设置测试关号101。

只记录坐标、格子类型、补棋类型和当前物体match/tiled/layer；这不是完整隐藏状态快照。稳定条件减少读取更新中棋盘的风险，不保证一步内逐帧时序一致。记录两条System.Random的索引与56项状态数组。完整监视没有启用硬件watchpoint；inspect里的hits=0不能当成没有内存读取。

## 随机源

LevelRandomManager.ResetSeed先调用ApplicationContext中的RandomManager.Next(0,20000000)，它转到UnityEngine.Random.Range，再通过SetSeed初始化普通System.Random。另一字段difficultyRandom使用ResetDifficultySeed的结果。
相同DynaDiff下的启动记录普通seed为14705084、13964875、12351459，difficultySeed均选371。a/a1只用于启动及仪器诊断，其中a1的稳定计时有bug，不能作为完整重放通过证据；对应原日志哈希在verification.json。

普通Next运行调用包括消除音效、提示打乱、飞机单目标候选抽取。飞机调用返回地址0x20F1FD4；原指令0x20F1FD0直接BL到LevelRandomManager.Next(0x2A30FE8)，取得列表索引。该入口读random(+0x30)，GetDifficultyNext读difficultyRandom(+0x38)。native.zip绑定原字节；方法边界取下一元数据入口，不保证完整控制流。

## 对照

- a2：DynaDiff81920，自然普通seed12351459，difficulty371；记录14次有效操作并捕获原win事件。主机循环当时未识别win终态，后续等待超时，不能写成自动胜利结算流程通过。随后手动snapshot为state2。保留有用的操作前快照与原事件。
- fixed-a：DynaDiff81920；普通seed原值12273739，控制为a2的12351459；difficulty由原逻辑选371。前11次操作前棋盘与a2一致（即前10步后相同），执行第11步后首次分歧，未执行第12步。
- fixed-b：DynaDiff3470335148030（Try4095、Delta+21、section5、level101）；普通seed原值17861018，同样控制为12351459；difficulty仍选371。重放fixed-a的11次操作：11个操作前快照全部一致，结束后棋盘及difficulty状态不一致。只验证到第11步，没有在这轮继续整局或重试。

固定的是普通随机流的初始化输入，没有固定飞机目标、补棋值或difficulty最终seed。普通随机流被音效和提示等共同消耗，各操作前普通随机内部状态仍不相同。控制普通seed也可能覆盖未知机制对该seed的影响，因此该对照不能作为普通seed选择不受DynaDiff影响的独立证明。

## 已定位的第一次调用顺序差异

a2和fixed-a的第11步操作前：棋盘相同，difficultyRandom的索引与状态数组完全相同。执行期间前128个已记录difficulty调用的调用方、范围、返回值一致；第129个不同：

- a2先从ShuffleCellsBasedOnDifficulty取[0,3)返回1，再取[1,3)返回2，随后补棋。
- fixed-a先从GetRandomFillItem取[0,1)返回0，再从LevelSet.GetRandomItem取[0,4)返回3，随后匹配组洗牌。

MatchGroup.ShuffleCells在0x137878C调用ShuffleCellsBasedOnDifficulty，该函数通过GetDifficultyNext消费同一条随机流。两者排队先后不同，会改变后续每项消费的号码。这里确认的是运行调用顺序发生变化；更早造成顺序改变的调度/隐藏状态根因未确定，不能擅自归因为帧率或某一线程。也不能断言旧实验的每一处差异都由同一个原因造成。

## 结论范围

相同DynaDiff也会在同输入操作后产生分歧，因此A/B分歧不能直接归因为DynaDiff。改值组的前10步后棋盘/步数/difficulty状态与基准相同；第11步后不一致，不能计为整局差分通过。没有穷尽间接/别名读取，没有全线程任意内存监视，没有真实服务器输入和Easy/Hard改表实验。下一步若继续整局排除，需控制或重放每帧的玩法调度，并分离/记录全部随机消费者；只追加相同seed试局不能解决这个问题。

## 文件

verification.json包含比较结果和私有原日志哈希。a2.json、fixed-a.json、fixed-b.json为脱敏事件、原始动作、主线程快照及比较。时间戳、线程ID、原账号关号已移除，不包含私有存档。host.py和两个probe供复核，需Frida16.5.9、adb和合法取得的相同样本与存档。脚本带测试关号和普通seed干预，仅在独立离线副本使用。capture-native.py需capstone/pyelftools，在工作区同路径只读原ELF后生成字节快照。
