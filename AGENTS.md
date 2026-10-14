# 站点维护入口

- 本仓库是“小游戏解包审计报告集”的 GitHub Pages 维护入口。
- 用户要求修改“解包报告站点”“WorkBuddy 迁移站点”时，修改本仓库的 `site/`。
- 首页是 `site/index.html`；报告在 `site/reports/`；共享资源在 `site/assets/`。
- 保持相对资源路径，兼容 `/game-unpack-reports/` 项目子路径。
- 保持已有章节 ID 与链接可用；折叠章节的深链由 `report-deep-links.js` 展开。
- 原 WorkBuddy 站点及其旧生成器是迁移来源，不再作为本站修改或发布入口。禁止从旧生成目录覆盖本站后续编辑。
- 不修改同级的 Unity、小游戏或解包工程；保留已有未提交更改。
- 提交前运行 `python3 scripts/check_site.py` 与 `node --check site/assets/report-deep-links.js`。
- `main` 每次推送会通过 GitHub Actions 检查并部署 `site/`；不需要 WorkBuddy 发布工具。
- `migration/workbuddy-snapshot.json` 记录迁移当时的原文件哈希，仅用于溯源，不代表后续版本必须保持原样。
