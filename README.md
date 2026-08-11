# 前端- Windows 一键启动器（免环境）

这是一个基于 **websitino** 的静态网页服务器启动器，专为**无环境要求的用户**设计。\
只需双击 `start.bat`，即可在浏览器中运行你的网页应用，**无需安装 Node.js、Python 或任何运行时环境**。
该项目的微服务器 *websitino.exe* 由 *dub build -b release* 构建，未经修改，原链接为：
<https://github.com/trikko/websitino/releases/tag/v0.2.9>

---

## 📁 文件结构

```
maintenance-launcher/
├── websitino.exe      # 轻量级 Web 服务器
├── start.bat          # 一键启动脚本（自动端口，默认12138，占用+1）
├── dist/              # 📌 把你打包好的网页文件放在这里
│   └── index.html     # 入口文件（必须存在）
└── README.md
```

---

## 🚀 快速开始

1. **下载或克隆本仓库**
2. **替换 `dist` 文件夹**：将你前端项目打包（npm run build）生成的 `dist` 整个覆盖进来（确保里面有 `index.html`）
3. **双击 `start.bat`**，浏览器将自动打开并显示你的页面

---


## ❓ 常见问题

### Q: 如何修改默认端口？
**A**: 编辑 `start.bat`，将 `set PORT=12138` 改成你想要的端口号即可。
---

## 📜 许可证

本项目仅供学习与内部使用。`websitino` 版权归其原作者所有。
