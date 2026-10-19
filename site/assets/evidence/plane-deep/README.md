# RM38174 飞机逻辑提取

- native.zip：443 个相关方法的原始 bin 和带名称的 ARM64 汇编，按下一个不同元数据入口截取，不宣称完整 CFG 或全部语义恢复。
- 范围为 PropellerItem 命名空间、ExplodeTargetFinder、GuidedExploderItemModel、WinCalculationData、ExplodeTargetMediator、95 个 GetExplodeScore 入口，以及共用查表、在途和策略函数。包含共用引导道具，非443个飞机专属算法。
- manifest.json：逐方法 RVA、线性终点、字节数与 SHA-256，绑定 ELF 与方法索引。
- base-scores.json/csv：115 个原表值，地址 0x3f092ec，实际索引 ItemType-1；没有命名的编号保留。基础值不是格子最终评分。
- score-methods.json：95 个评分入口，仅声明捕获状态。
- metadata-excerpts.json：解释结构用的声明与字段偏移，不作为行为证明。
- freed-cells.json：执行原生 CellsFreedAfterExplode 得到的115个编号结果。
- verification.json：45个碗柜构造输入、115基础分、115释放格数和7个普通Pilot常量getter的执行结果。incoming、ItemType由显式输入替代；不覆盖原客户端整局、Unity飞行或全部评分覆盖方法。

复算方式与依赖见同级 ../difficulty-deep/README.md。语义报告位于 topics/obstacle-rules.html。
