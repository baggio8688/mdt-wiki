# CS146S Stanford - AI Software Engineering Wiki
# Run this script on Windows to create all course materials
# PowerShell script - 保存为 UTF-8 with BOM

$wikiRoot = "D:\工作文档\mdt-wiki"
$sectionDir = Join-Path $wikiRoot "docs\ai-software-development"

# 1. 创建目录
New-Item -Path $sectionDir -ItemType Directory -Force | Out-Null

# 2. 创建 index.md
@"
# 🤖 AI 软件工程（AI Software Development）

> 结合 Stanford CS146S《The Modern Software Developer》课程体系，整理 LLM/AI 辅助软件开发的知识脉络、学习路径与国内可访问资源。

## 📂 内容目录

| 页面 | 说明 |
|------|------|
| [[ai-software-development/cs146s-overview|CS146S 课程概览]] | Stanford CS146S 课程介绍、大纲、核心内容 |
| [[ai-software-development/bilibili-mirror|📺 视频镜像资源]] | B站可观看的课程视频合集与中文配音版 |
| [[ai-software-development/github-resources|📚 GitHub 资料与中文讲义]] | 中文笔记、讲义、作业解答、自学路径 |
| [[ai-software-development/learning-path|🎯 学习路径规划]] | 从零到掌握 AI 软件开发的学习路线 |

## 🔗 快速链接

| 资源 | 直达 |
|------|------|
| B站最佳合集 | [CS146S现代软件开发（内置字幕）](https://www.bilibili.com/video/BV1c1NMzpEKE/) |
| 繁体中文讲义 | [GitHub: fireman333/CS146S-handbook-zh](https://github.com/fireman333/CS146S-handbook-zh) |
| 中文配音版（2.4万播放） | [万物深译：别再 Vibe Coding 了](https://www.bilibili.com/video/BV1yNzQBEE1g/) |
| 中文自学路径 | [GitHub: AlexAnys/agent-first-dev](https://github.com/AlexAnys/agent-first-dev) |
"@ | Out-File -FilePath (Join-Path $sectionDir "index.md") -Encoding utf8

# 3. 创建 cs146s-overview.md
@"
# CS146S 课程概览

## 基本信息

- **课程名称**: The Modern Software Developer（现代软件开发者）
- **学校**: Stanford University（斯坦福大学）
- **课程编号**: CS146S
- **学期**: 2025 Fall（秋季学期）
- **核心主题**: LLM/AI 辅助软件开发

## 课程背景

CS146S 是斯坦福大学开设的前沿课程，聚焦于 **大语言模型（LLM）如何改变软件开发方式**。这门课不是传统的 AI 理论课，而是面向**现代软件开发者**的实践课程——教你如何在日常开发中使用 AI 工具高效构建生产级应用。

## 核心内容模块

### 1️⃣ LLM 工作原理
- 预训练（Pre-training）：从15万亿token到智能对话
  - 互联网抓取27亿网页，过滤成44TB纯文本
  - GPT-2 16亿参数 → GPT-4 约1.8万亿参数
  - 上下文窗口从1000 token 暴涨到100万
- 监督微调（SFT）：让模型学会对话
- 强化学习（RLHF）：教模型像人一样思考

### 2️⃣ AI 辅助编码
- GitHub Copilot、Cursor、Claude Code 等工具的使用
- 提示工程（Prompt Engineering）在编码中的应用
- 代码生成、审查、重构的最佳实践

### 3️⃣ 生产级 AI 应用开发
- 与 Coding Agent 协作构建应用
- 从原型到上线的完整流程
- Vibe Coding 的陷阱与规避

### 4️⃣ 智能体软件开发（Agentic Development）
- AI Agent 在软件开发生命周期中的角色
- 多 Agent 协作模式
- 2026版新增内容：Agent-first Development

## 课程形式

- 课堂讲授 + 实践作业
- Reading 阅读材料（50+ 篇）
- 编程项目作业
- 本页面汇总的 B站镜像和中文资料均基于此课程

## 相关链接

- **原始课程网站**: 斯坦福校内访问（可能需 VPN）
- **YouTube 原始视频**: `f8Hr_7FyKMQ` 等（需科学上网）
- **国内镜像**: 详见 [[ai-software-development/bilibili-mirror|📺 视频镜像资源]]
"@ | Out-File -FilePath (Join-Path $sectionDir "cs146s-overview.md") -Encoding utf8

# 4. 创建 bilibili-mirror.md
@"
# 📺 视频镜像资源（B站）

> 所有链接国内可直接访问，无需科学上网。

## ⭐ 推荐排序

| 排名 | UP主 | 视频 | 播放量 | 特点 |
|------|------|------|--------|------|
| 🥇 | **NotKnowin** | [CS146S现代软件开发（内置字幕）](https://www.bilibili.com/video/BV1c1NMzpEKE/) | 1.6万 | **完整度最高**，9段合集，内含字幕 |
| 🥈 | **万物深译** | [别再 Vibe Coding 了](https://www.bilibili.com/video/BV1yNzQBEE1g/) | **2.4万** | 高质量中文配音，制作精良 |
| 🥉 | **bushacker** | [中文语音版](https://www.bilibili.com/video/BV1DQNFzLEV2/) | 7682 | 中文配音版 |
| 4 | **NotKnowin** | [CS146S 现代软件开发](https://www.bilibili.com/video/BV14DPYzwEgk/) | 2335 | 另一版本搬运 |
| 5 | **小工蚁创始人** | [合集：现代软件开发者](https://www.bilibili.com/video/BV1HXfTBTE33/) | 2897 | 逐讲分开上传 |
| 6 | **无为斋主** | [智能体软件开发（图画版）2026版](https://www.bilibili.com/video/BV1nLwTzVEHp/) | 3451 | 双语字幕，Agent-focused |
| 7 | **阿漫315** | [CS146S 第一课](https://www.bilibili.com/video/BV1jNd5BrE1S/) | 316 | 个人学习记录 |

## 💡 观看建议

1. **第一次接触** → 先看 NotKnowin 的主版本（最完整）
2. **想要中文配音** → 万物深译版（配音质量高）
3. **对 AI Agent 感兴趣** → 无为斋主版（2026版，Agent-focused）
4. **按章节学习** → 小工蚁创始人的逐讲系列
"@ | Out-File -FilePath (Join-Path $sectionDir "bilibili-mirror.md") -Encoding utf8

# 5. 创建 github-resources.md
@"
# 📚 GitHub 资料与中文讲义

> CS146S 相关的开源代码、中文笔记、作业解答和学习资料。

## 🏆 重点推荐

### 1️⃣ CS146S-handbook-zh（繁体中文讲义）
- **仓库**: [fireman333/CS146S-handbook-zh](https://github.com/fireman333/CS146S-handbook-zh)
- **内容**: 繁体中文讲义 + **50篇 Reading 摘要**
- **亮点**: 目前最完整的中文课程笔记，适合配合视频学习

### 2️⃣ agent-first-dev（中文自学路径）
- **仓库**: [AlexAnys/agent-first-dev](https://github.com/AlexAnys/agent-first-dev)
- **Stars**: 29 ⭐
- **内容**: 
  - 基于 Stanford CS146S（已获授权）+ Chicago Booth
  - 与 Coding Agent 协作构建生产级应用
  - Agent-first 开发自学路径

## 📖 中文笔记与作业

| 仓库 | 说明 |
|------|------|
| [Sorosliu1029/CS146S](https://github.com/Sorosliu1029/CS146S) | 课程笔记 + 代码整理 |
| [MartinLwx/CS146S-Fall-2025-Stanford](https://github.com/MartinLwx/CS146S-Fall-2025-Stanford) | 作业解答（Solutions） |
| [liqq1024/Stanford_CS146S](https://github.com/liqq1024/Stanford_CS146S) | 个人学习记录 |
| [david168/modern-software-dev-assignments-complete](https://github.com/david168/modern-software-dev-assignments-complete) | 完整作业解答 |
| [jackapu/modern-software-programming](https://github.com/jackapu/modern-software-programming) | CS146S Fall 2025 作业 |

## 💡 使用建议

1. **先看视频** → 选择 [[ai-software-development/bilibili-mirror|B站视频]] 建立整体认知
2. **配合讲义** → fireman333 的手册 + 50篇 Reading 摘要
3. **动手实践** → 参考各仓库的作业解答做练习
4. **进阶学习** → AlexAnys 的 agent-first-dev 自学路径
"@ | Out-File -FilePath (Join-Path $sectionDir "github-resources.md") -Encoding utf8

# 6. 创建 learning-path.md
@"
# 🎯 学习路径规划

> 基于 Stanford CS146S 课程体系，从零到掌握 AI 辅助软件开发的学习路线。

## 路线概览

```
第一阶段：LLM 认知打基础
    ↓
第二阶段：AI 辅助编码实战
    ↓
第三阶段：生产级 AI 应用开发
    ↓
第四阶段：Agent 智能体开发（进阶）
```

## 🟢 第一阶段：LLM 认知打基础

**目标**: 理解大语言模型的工作原理和能力边界

**观看资源**: bushacker 中文配音版 / NotKnowin 主版本第2-4段
**补充阅读**: CS146S-handbook-zh 前10篇 Reading 摘要 + 本知识库的提示工程章节

## 🟡 第二阶段：AI 辅助编码实战

**目标**: 掌握使用 LLM/Copilot 提升编码效率

**推荐路径**:
1. [NotKnowin CS146S（内置字幕）](https://www.bilibili.com/video/BV1c1NMzpEKE/)（9段合集）
2. [万物深译 配音版](https://www.bilibili.com/video/BV1yNzQBEE1g/)（2.4万播放）
3. [小工蚁创始人 逐讲系列](https://www.bilibili.com/video/BV1HXfTBTE33/)

**配套练习**: MartinLwx/CS146S-Fall-2025-Stanford 作业解答

## 🟠 第三阶段：生产级 AI 应用开发

**目标**: 用 AI 工具构建可上线的真实项目

**最佳指南**: [AlexAnys/agent-first-dev](https://github.com/AlexAnys/agent-first-dev)（中文）
**实践要点**: 与 Coding Agent 协作 / 从原型到生产级工程化 / 避免 Vibe Coding 陷阱

## 🔴 第四阶段：Agent 智能体开发（进阶）

**目标**: 掌握 AI Agent 在软件工程中的高级应用

**资源**: [无为斋主 2026版-双语字幕](https://www.bilibili.com/video/BV1nLwTzVEHp/)

## 📅 建议时间安排

| 阶段 | 建议时长 | 产出 |
|:----:|:--------:|------|
| 第一阶段 | 1-2周 | 理解 LLM 原理，能做基础 Prompt |
| 第二阶段 | 3-4周 | 熟练使用 AI 编码工具，完成作业 |
| 第三阶段 | 2-3周 | 产出 1 个 AI 辅助开发的应用 |
| 第四阶段 | 灵活安排 | 深入 Agent 开发方向 |
"@ | Out-File -FilePath (Join-Path $sectionDir "learning-path.md") -Encoding utf8

Write-Host "✅ 文件创建完成！"
Write-Host "📍 位置: $sectionDir"
Write-Host ""
Write-Host "下一步操作（手动确认后再跑）："
Write-Host ""

# 7. 提示下一步操作
Write-Host "1️⃣ 编辑 mkdocs.yml，在 '案例研究' 后面添加："
Write-Host "   - 🤖 AI 软件工程 (AI Software Dev):"
Write-Host "     - ai-software-development/index.md"
Write-Host "     - CS146S 课程概览: ai-software-development/cs146s-overview.md"
Write-Host "     - 📺 B站视频资源: ai-software-development/bilibili-mirror.md"
Write-Host "     - 📚 GitHub 资料与中文讲义: ai-software-development/github-resources.md"
Write-Host "     - 🎯 学习路径规划: ai-software-development/learning-path.md"
Write-Host ""
Write-Host "2️⃣ 编辑 .gitignore，在 mdt-wiki-sync.ps1 后面添加："
Write-Host "   site/"
Write-Host "   __pycache__/"
Write-Host "   *.pyc"
Write-Host ""
Write-Host "3️⃣ 提交推送："
Write-Host "   git add -A"
Write-Host "   git commit -m ""feat: add Stanford CS146S (AI Software Development) section"""
Write-Host "   git pull --rebase origin main"
Write-Host "   git push"
