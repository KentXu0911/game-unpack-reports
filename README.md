# 小游戏解包审计报告集

站点：<https://kentxu0911.github.io/game-unpack-reports/>

从 WorkBuddy 公开站点迁移的独立静态站点。当前按27个具体内容项原位展开，覆盖玩法、体验算法、Meta与商业化。四列总览包括相较人工／实机视频／测评的结论与速度变化；没有同口径耗时记录，不提供提速倍数。

## 编辑

- `content/topics.py`：条目摘要、机制解读、体验影响、对比列与证据引用。
- `content/reference-tables.json`：按条目整理的数据表，共51张。
- `content/sources.json`：来源依据与验证范围。
- `scripts/build_site.py`：生成统一阅读页与旧链接兼容入口。
- `site/assets/site.css`、`site/assets/topic-reader.js`：样式与交互。
- `site/index.html`：生成的发布页面，保留四列表格和27个嵌入条目。
- `site/reports/*.html`：旧网址兼容入口，按章节定位到新条目；没有独立旧结论正文。

不需要安装前端依赖。修改内容源后执行构建，使用相对链接，保留章节ID；生成结果随源文件一起提交。CI会重新生成并检查二者一致。

## 本地预览与检查

```sh
python3 -m http.server 8875 --bind 127.0.0.1 --directory site
```

打开 <http://127.0.0.1:8875/>。

```sh
python3 scripts/build_site.py
python3 scripts/check_site.py
for script in site/assets/*.js; do node --check "$script" || exit 1; done
```

## 发布

向 `main` 推送后，GitHub Actions 自动检查生成结果、本地文件链接、章节锚点和脚本语法，再部署 `site/` 到 GitHub Pages。也可以在 Actions 中手动运行 **Deploy GitHub Pages**。只有 `site/` 会进入站点发布包。

仓库：<https://github.com/KentXu0911/game-unpack-reports>

## 迁移来源

原站点：<https://game-unpack-reports.app-tencent.workbuddy.host/>。

初始副本来自 `royal-match-apk-audit-38174/outputs/site/`，迁移时全部 27 个文件与线上最新版逐字节一致。原文件的 SHA-256 记录在 `migration/workbuddy-snapshot.json`；原站点继续保留。此仓库的 `site/` 是后续编辑入口，不再从原工程生成器覆盖。
