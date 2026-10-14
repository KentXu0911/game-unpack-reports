# 小游戏解包审计报告集

站点：<https://kentxu0911.github.io/game-unpack-reports/>

从 WorkBuddy 公开站点迁移的独立静态站点。2026-10-14 的初始副本包含 22 项研发复刻总览、7 份报告及其共享脚本和图片。后续在本仓库修改和发布。

## 编辑

- `site/index.html`：首页总览与报告入口。
- `site/reports/*.html`：各专题报告。
- `site/assets/`：图片及自动展开章节的深链脚本。

不需要安装前端依赖或执行打包。使用相对链接，保留章节 ID；从 GitHub 网页编辑文件也可以触发部署。

## 本地预览与检查

```sh
python3 -m http.server 8875 --bind 127.0.0.1 --directory site
```

打开 <http://127.0.0.1:8875/>。

```sh
python3 scripts/check_site.py
node --check site/assets/report-deep-links.js
```

## 发布

向 `main` 推送后，GitHub Actions 自动检查本地文件链接、章节锚点和脚本语法，再部署 `site/` 到 GitHub Pages。也可以在 Actions 中手动运行 **Deploy GitHub Pages**。只有 `site/` 会进入站点发布包。

仓库：<https://github.com/KentXu0911/game-unpack-reports>

## 迁移来源

原站点：<https://game-unpack-reports.app-tencent.workbuddy.host/>。

初始副本来自 `royal-match-apk-audit-38174/outputs/site/`，迁移时全部 27 个文件与线上最新版逐字节一致。原文件的 SHA-256 记录在 `migration/workbuddy-snapshot.json`；原站点继续保留。此仓库的 `site/` 是后续编辑入口，不再从原工程生成器覆盖。
