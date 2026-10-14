# 站点维护入口

- 本仓库是“小游戏解包审计报告集”的 GitHub Pages 维护入口。
- 用户要求修改“解包报告站点”“WorkBuddy 迁移站点”时，修改本仓库的 `site/`。
- 内容源是 `content/topics.py`、`content/reference-tables.json`、`content/sources.json`；用 `python3 scripts/build_site.py` 生成 `site/index.html`。编辑正文优先改内容源，避免再次生成时覆盖。
- 页面按“具体内容”原位展开，包含四列总览：具体内容、可取得内容、可得性、相较人工／实机视频／测评的结论与速度变化。
- `site/reports/` 仅保留旧链接兼容入口，跳到首页相应主题，不恢复独立历史报告正文或报告卡片。
- `site/assets/site.css`、`site/assets/topic-reader.js` 控制样式与原位展开；`report-deep-links.js` 保留兼容。
- 保持相对资源路径，兼容 `/game-unpack-reports/` 项目子路径。
- 保持已有章节 ID 与链接可用；旧章节对应关系由 `content/legacy-anchors.json` 和 `scripts/build_site.py` 维护，新增主题需有稳定ID。
- 原 WorkBuddy 站点及其旧生成器是迁移来源，不再作为本站修改或发布入口。禁止从旧生成目录覆盖本站后续编辑。
- 不修改同级的 Unity、小游戏或解包工程；保留已有未提交更改。
- 提交前运行构建、`python3 scripts/check_site.py` 与所有 `site/assets/*.js` 的 `node --check`；验证展开、收起、深链刷新及手机布局。
- 公开内容只呈现当前有依据的结论，移除历轮解包结论对比。区分可恢复、已提取、可执行、实机认证；未完成的算法分支不得写成已完成。
- 效率列只作有依据的方法对比；没有同口径人时记录，不给提速倍数。设计解读、示意数字与原版实测分开标记。
- `main` 每次推送会通过 GitHub Actions 检查并部署 `site/`；不需要 WorkBuddy 发布工具。
- `migration/workbuddy-snapshot.json` 记录迁移当时的原文件哈希，仅用于溯源，不代表后续版本必须保持原样。
