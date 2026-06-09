# 上手指南 — 从零开始的 30 分钟

> 从完全没写过代码，到用 AI 做出一个能跑的网页。  
> 来源：[AlexAnys/agent-first-dev](https://github.com/AlexAnys/agent-first-dev) modules/getting-started/ · CC BY-NC-SA 4.0

---

## 你需要准备什么

- 一台电脑（Mac / Windows / Linux 都可以）
- 一个浏览器（推荐 Chrome）
- 一个 GitHub 账号（免费注册：[github.com](https://github.com)）
- **不需要**编程经验或计算机科学背景

## 第一步：选择 AI 编码工具

### 方案 A：Cursor（推荐新手）

[Cursor](https://cursor.com) 是一个内置 AI 的代码编辑器，界面友好。

1. 访问 cursor.com 下载安装
2. 用 GitHub 账号登录
3. 免费版够用

### 方案 B：Claude Code（推荐有经验后）

```bash
npm install -g @anthropic-ai/claude-code
```

需要 Anthropic API Key，适合完成 Week 1-2 后再使用。

### 方案 C：零安装（GitHub Codespaces）

在任意 GitHub 仓库页面 → Code → Codespaces → Create codespace on main。浏览器里直接开发，无需安装任何东西。

## 第二步：认识终端（3 分钟）

三个够用的命令：

```bash
ls           # 看当前目录有什么文件（Windows 用 dir）
cd 文件夹名   # 进入某个文件夹
cd ..        # 返回上一级
```

## 第三步：第一个项目（15 分钟）

做一个个人链接页（类似 Linktree）：

1. 打开 Cursor，创建文件夹 `my-first-page`
2. 创建文件 `index.html`
3. 在 AI 对话框里输入：

```
帮我创建一个个人链接页面（类似 Linktree），用纯 HTML 和 CSS。
要求：
- 顶部显示我的名字和一句话介绍
- 下面是 3-5 个链接按钮（GitHub、LinkedIn 等）
- 页面要好看，用现代简洁的设计风格
- 全部写在一个 index.html 文件里
```

4. 双击 `index.html` 预览 → 继续对 AI 说"改深色主题"、"加悬停效果"

**这就是 AI 辅助开发的基本循环**：描述想要的 → AI 生成代码 → 预览 → 迭代。

## 第四步：发布到互联网（10 分钟）

1. [GitHub 创建新仓库](https://github.com/new)，取名 `my-first-page`
2. 上传 `index.html`
3. 仓库 Settings → Pages → Source 选 main → Save
4. 等 1-2 分钟，你的页面就上线了

**恭喜！你刚刚从零开始，用 AI 做出了一个全世界都能访问的网页。**

## 接下来学什么

- 想理解软件怎么运作 → [Application Development](app-dev-fundamentals.md)
- 想直接开始 AI 协作开发 → [Agentic Coding Week 1](agentic-coding.md#week-1-提示工程)

---

*本页面改编自 [AlexAnys/agent-first-dev](https://github.com/AlexAnys/agent-first-dev) modules/getting-started/，采用 CC BY-NC-SA 4.0 协议*
