# Agentic Coding — 与 AI 协作的软件开发（10 周课程）

> 改编自 Stanford CS146S: The Modern Software Developer（[Mihail Eric](https://www.mihaileric.com) 设计）  
> 中文适配：[AlexAnys/agent-first-dev](https://github.com/AlexAnys/agent-first-dev) · CC BY-NC-SA 4.0  
> 完整课程文件（assignment、writeup、代码）请访问原仓库

---

**一句话概括：Human-Agent Engineering, not Vibe Coding.**

Vibe Coding 很火——打开 AI，随便说两句，让它帮你写代码。但这样写出来的代码你自己都不敢上线。

这个模块教的是另一回事：如何像一个工程师一样，**有效地与 AI 协作**。你需要理解 AI 在做什么，知道什么时候该信任它、什么时候该纠正它，以及如何设计工作流让人和 AI 各自发挥所长。

## 课程逻辑线

课程按 **Understand → Build → Harden → Ship → Operate** 的顺序组织：

| 阶段 | 周次 | 你会学到 |
|------|------|----------|
| **理解** | Week 1-2 | LLM 的工作原理、提示技术、编码代理的架构 |
| **构建** | Week 3-5 | MCP 扩展 AI 能力、Claude Code 代理模式、多代理协作 |
| **加固** | Week 6-7 | AI 生成代码的安全扫描、人机协作的代码审查 |
| **交付** | Week 8 | 多技术栈全栈应用，综合运用前 7 周能力 |
| **运维与未来** | Week 9-10 | 生产环境监控、事件响应、行业趋势 |

## 课程一览

### Week 1：提示工程（Prompt Engineering）

**6 种核心提示技术**，从零开始学会跟 AI 说话。

- **关键概念**：Few-shot、Chain-of-Thought、Self-Consistency、RAG、Reflexion、Tool Calling
- **前置条件**：安装 Ollama + 基本文本编辑器
- **预计时间**：4-6 小时
- **课程讲义**：[Mon](https://docs.google.com/presentation/d/1zT2Ofy88cajLTLkd7TcuSM4BCELvF9qQdHmlz33i4t0/edit?usp=sharing) · [Fri](https://docs.google.com/presentation/d/1MIhw8p6TLGdbQ9TcxhXSs5BaPf5d_h77QY70RHNfeGs/edit?usp=sharing)
- **代码示例**：[Python prompt patterns](https://github.com/AlexAnys/agent-first-dev/tree/master/modules/agentic-coding/week1)

### Week 2：AI 辅助全栈开发（Full-Stack Development）

用 AI 构建一个完整的 Web 应用，体验端到端开发流程。

- **核心**：从设计到部署，全程 AI 辅助
- **预计时间**：6-8 小时
- **代码示例**：[FastAPI 全栈 app](https://github.com/AlexAnys/agent-first-dev/tree/master/modules/agentic-coding/week2)

### Week 3：MCP 服务器（Model Context Protocol）

扩展 AI 的能力边界，让它能调用外部工具和数据。

- **核心**：MCP 协议、自定义服务器、工具集成
- **嘉宾**：Silas Alberti — Cognition（Devin）研究负责人
- **预计时间**：5-7 小时

### Week 4：自主编码代理（Autonomous Coding Agent）

**Claude Code 深度实践**，理解代理式开发的核心理念。

- **三大核心**：CLAUDE.md、Slash Commands、SubAgents
- **嘉宾**：Boris Cherney — Anthropic，Claude Code 创建者
- **预计时间**：8-10 小时（深度）/ 5-6 小时（快速）
- **这是从"使用工具"到"设计工作流"的转折点**

### Week 5：Warp 环境下的 Agentic 开发

多代理工作流（Multi-Agent Workflow），让多个 AI 协同工作。

- **嘉宾**：Zach Lloyd — Warp CEO
- **预计时间**：5-7 小时

### Week 6：安全扫描（Security Scanning）

AI 辅助的代码安全检查，把漏洞扼杀在开发阶段。

- **嘉宾**：Isaac Evans — Semgrep CEO
- **预计时间**：5-7 小时

### Week 7：AI 代码审查（Code Review）

人机协作的质量保障，建立可靠的审查流程。

- **嘉宾**：Tomas Reimers — Graphite CPO
- **预计时间**：5-7 小时

### Week 8：多技术栈应用（Multi-Stack Application）

**Vibe Coding 的正确打开方式**——有章法、有质量地快速开发。

- **嘉宾**：Gaspar Garcia — Vercel AI 研究负责人
- **预计时间**：6-8 小时

### Week 9：AI 系统监控（延伸阅读）

生产环境监控与事件响应。自学实践 + 阅读材料。

- **嘉宾**：Mayank Agarwal & Milind Ganjoo — Resolve AI

### Week 10：AI 软件工程的未来（延伸阅读）

行业展望与持续学习。

- **嘉宾**：Martin Casado — a16z 合伙人

---

## 学习路径推荐

### 快速路径（4 周）
**Week 1 → 2 → 4 → 8** — 有开发经验的话直接走这条

### 完整路径（8 周核心）
Week 1-8 按顺序，每周 5-8 小时。Week 9-10 可选。

### 深度路径
完整路径 + 每周的扩展阅读和额外练习。

---

## 关键原则

### 40-20-40 法则

Anthropic 内部的工程经验法则：
- **40%** 精力用于规划和上下文准备
- **20%** 用于编码（AI 承担大部分）
- **40%** 用于测试和验证

颠覆了"编码是瓶颈"的传统认知。

### 上下文工程优于提示工程

AI 输出质量 **80% 取决于你给的上下文**，20% 取决于你怎么问。详见[领域专家 × AI 协作框架](framework.md)。

---

*本页面改编自 [AlexAnys/agent-first-dev](https://github.com/AlexAnys/agent-first-dev) modules/agentic-coding/，采用 CC BY-NC-SA 4.0 协议*
