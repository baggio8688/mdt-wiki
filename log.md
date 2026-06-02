# Wiki 操作日志

> 所有 wiki 操作的时序记录。只追加不修改。
> 格式：`## [YYYY-MM-DD] action | subject`
> 操作类型：ingest, update, query, lint, create, archive, delete

## [2026-05-31] create | Wiki 初始化
- 领域：制造业数字化转型（Manufacturing Digital Transformation）
- 目录结构已创建：raw/, entities/, concepts/, comparisons/, queries/
- SCHEMA.md, index.md, log.md 已编写
- 当前页面数：0

## [2026-05-31] ingest | 首批3篇文章灌入
- 创建 raw/articles/ai-governance-framework-factory-floor.md
- 创建 raw/articles/why-80-percent-not-automated.md
- 创建 raw/articles/us-reshoring-boom-one-year.md
- 更新 index.md — 添加Articles章节，Total pages: 3

## [2026-05-31] extract | 自动提取实体、概念、对比
- 创建 concepts/ai-governance-manufacturing.md — AI治理框架
- 创建 concepts/data-governance-manufacturing.md — 数据治理
- 创建 concepts/industrial-automation-gap.md — 自动化鸿沟
- 创建 concepts/manufacturing-reshoring.md — 制造业回流
- 创建 entities/iot-analytics.md — IoT Analytics
- 创建 entities/manufacturing-leadership-council.md — MLC
- 创建 entities/intrinsic.md — Intrinsic (Google)
- 创建 entities/locus-robotics.md — Locus Robotics
- 创建 entities/rsm.md — RSM
- 创建 comparisons/ai-governance-vs-automation-gap.md — AI治理 vs 自动化鸿沟
- 更新 index.md — 添加Entities/Concepts/Comparisons章节，Total pages: 12

## [2026-06-01] ingest | 智能工厂梯度培育政策文件入库
- 创建 raw/policies/2025-smart-factory-gradient-cultivation-notice.md — 251号通知解读
- 创建 raw/policies/2025-smart-factory-element-conditions.md — 要素条件（2025年版）
- 创建 raw/policies/2025-smart-manufacturing-scenario-guide.md — 场景参考指引
- 复制8个原始文件到 raw/policies/assets/（3PDF + 5DOCX + 1HTML）
- 更新 index.md — 添加Policies章节，Total pages: 15

## [2026-06-01] ingest | 新特能源卓越级全要素对标方案
- 创建 raw/policies/xinte-smart-factory-scenario-mapping.md — 5大环节25个数字化场景逐项对标
- 更新 index.md — 添加对标方案链接，Total pages: 16

## [2026-06-01] create | 2026年度数字化/AI/大数据政策汇编
- 创建 raw/policies/2026-digital-policy-compendium.md
- 覆盖范围：十五五规划纲要、2026政府工作报告、7部委、7省市
- 引用新华社/人民网权威来源，确认十五五规划纲要已通过、GDP目标4.5%-5%
- 标注检索状态（✅确认 ⚠️部分 ❌限制）
- 更新 index.md — 添加政策汇编链接，Total pages: 16

## [2026-06-02] ingest | 6份智能制造标准 PDF 原文件入库
- 创建 raw/policies/智能制造标准文档合集.md — 标准文档概述页
- 复制 6 份 PDF 到 raw/policies/assets/：
  - gbt-39116-2020-智能制造能力成熟度模型.pdf（正式国标）
  - gbt-39117-2020-智能制造能力成熟度评估方法.pdf（正式国标）
  - gbt-40814-2021-智能制造生产运营管理.pdf（正式国标）
  - wd-2024005768-智能制造能力成熟度模型-草案.pdf（2024修订草案）
  - wd-2024005769-智能制造能力成熟度评估方法-草案.pdf（2024修订草案）
  - 石化行业智能制造标准体系建设指南-2022版.pdf（行业指南）
- 更新 index.md — 添加标准文档合集链接，Total pages: 17

## [2026-06-01] update | 新特能源场景实例清单修订
- 核定版重写：35个场景精简合并为20个，每个赋予具体实例名称
- 突出安环/设备/生产/质量四大域基于工业互联网平台的一体化管控
- 更新 index.md — 总页面数不变

## [2026-06-02] create | 国标vs草案对比分析（智能制造成熟度模型与评估方法）
- 创建 raw/policies/国标vs草案对比分析-智能制造成熟度模型与评估方法.md
- 对比范围：GB/T 39116-2020 vs WD 2024005768 | GB/T 39117-2020 vs WD 2024005769
- 核心发现：模型去要素层级改5能力域扁平结构、新增精益管理/能碳管理/工厂规划等8个子域、评估权重重大调整（生产作业63%→42%）、新增弱项整改环节
- 落地建议：新特能源卓越级创建的分域补齐方案 + 三阶段行动路线图
- 更新 index.md — 新增分析文档链接，Total pages: 18
