# 续关加量复核：越过计数 4 后正常触发 +10

2026-10-19，沿用前轮独立 emulator-5556、同一游客账号及第 5001 关存档，不清档，不改关号、剩余步数、续关计数、DynaDiff、seed 或服务器响应。前轮账号曾人工跳关，此限制仍存在。原 emulator-5554 未操作。

## 纠正结论

前轮 3 连败结束后，该账号保存的 Ego1SeenCount 已为 4，本轮启动原函数实际读出 4。正常耗尽下一局的全部 27 步后，原 EgoShown → IncrementEgo1SeenCount 将计数从 4 改为 5；原 CalculateAdditionalMoves 和 GetAdditionalMoveCount 均返回额外 5 步，UI 截图实际显示 900 金币 +10。没有购买续关。不能再以“前轮只显示 +5”怀疑加量是强制 1 步实验造成的。

前轮计数未被探针直接记录，不能逐局声称已有计数读数；本轮恢复计数 4 与新增 3 次失败及更早的失败历史相容。本轮新耗尽一局是第 5001 关新增连续失败中的第 4 次，但累计首次续关弹窗计数到 5，这两个序号不能混为一谈。

## 代码与运行证据

ARM64 原函数 CalculateAdditionalMoves（0x233a57c）读取独立的 Ego1SeenCount，限幅到 10（另一个价格实验分支为 9），减 4，下限钳到 0，再乘 5。即：额外步数 = 5 × max(min(count, limit) − 4, 0)。普通基础 5 步、上限 10 分支对应总量 5、10、15、20、25、30、35。当前运行直接验证 count=4 的额外 0，count=5 的额外 5；没有把本轮说成已重新实测到 +35。

增量入口先检查加量资源可用，再通过 GameplayGenericBackendSyncHandler.GetEgo1SeenCount/SetEgo1SeenCount 读写计数。本轮 IsEgoAdditionalMoveAvailable、IsExtraMovesBundleReady 都返回 1。虽然类名含 Backend，单凭该方法名不证明每次计数来自服务器。

同次实验 DynaDiff 各次读取均 81920（DeltaMove=0），没有捕获已知更新入口调用。加量原函数使用的是独立续关计数，不是 DynaDiff。此结果不等于排除了其他动态难度路径。

## 实测流程与边界

启动成功 Ping；恢复上次未走步的棋盘（27 步）；27 次实际触屏操作后 left=0、made=27；捕获计数 4→5、额外步数 5；截图 +10/900；关闭续关后捕获 fail。随后尝试 Try Again 遇到 No More Lives，因此没有新 restart 或进度 synced 事件，不能写成这轮重试成功。本轮收到 HTTP 成功响应，但没有独立确认失败进度同步完成。此前三轮同步成功的结论不受影响。

该流程复用了按提示排序的自动触屏策略，不是人类自然策略。未修改或购买体力。测试结束私下备份存档，停止独立模拟器。网站未修改或发布。

## 文件

recheck.jsonl 为原始记录；verification.json 提取计数、增量、DynaDiff 与局末快照；offer-count5.png 为实际 +10 报价；no-more-lives.png 为后续体力限制。probe.js 与 host.py 可复核只读探针及实际触屏路径。*.asm 为原 ELF 的线性反汇编，不声称穷尽整个程序控制流。
