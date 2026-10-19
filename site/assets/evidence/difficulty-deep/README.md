# RM38174 动态难度提取

- 两份 JSON 为已导出 TextAsset 的原始载荷字节，不重新格式化。bundle、pathId、SHA-256 见 thresholds.json。
- thresholds.csv 把两份相同 Easy 列与 Hard 文件的 Hard 列放到一起，43 行。hardFieldsPresent 只标字段有非 -1 值，不表示当前启用。
- decode-state.py 可直接用 Python 3 执行，无第三方库。位数范围不是运营允许范围；update_long 保留原生不夹限、越界会溢出字段的行为。
- native.zip 为 43 个方法的 bin/s，含 SemiDynamicDifficulty、状态读写、通用位操作、旧 TryCount/Skill、DifficultyNext 和响应入口；manifest.json 绑定 ELF 和元数据哈希。
- direct-calls.json 只扫描 ARM64 B/BL，含共用位操作的其他系统调用；不把总数当作难度系统调用数。不覆盖接口、委托或间接调用。
- verification.json 是 848 项原字节执行核对，含随机位段、越界输入、全部 32 个 DeltaRaw；明确记录注入的元数据与替代调用。不是实机或后台验证。
- consumer-search.json 仅报告 dump.cs 中精确字段名检索结果，不能以无命中证明无消费路径。

复算：在报告仓库根运行 scripts/extract_plane_difficulty.py --workspace ..（capstone、pyelftools），再运行 scripts/verify_plane_difficulty.py（另需 Unicorn）。原始证据目录只读。

所有原生快照是到下一个元数据入口的线性范围，不是已确认完整函数边界。表、可存状态与生效策略分开解释：当前未找到两张表到主线改步数或补棋的完整消费链。
