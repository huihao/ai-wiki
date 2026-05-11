---
title: Complex AI Task Processing Practices: Taobao Engineer's Field Notes
url: https://mp.weixin.qq.com/s/HmXRwrLrjEXiHVzZHToXeg
author: 商家; 开放平台
date: 2024-09-26
tags: [ai-agents, workflow, automation, operations, data-governance]
---

# Complex AI Task Processing Practices: Taobao Engineer's Field Notes

> Source: [WeChat Article](https://mp.weixin.qq.com/s/HmXRwrLrjEXiHVzZHToXeg) by Taobao Engineer on practical AI automation for complex repetitive tasks.

## Overview

This article shares practical experience in using AI to handle "complex repetitive work" at Taobao. It presents a reusable methodology: abstracting human operations into a "perception-decision-execution" AI closed loop, demonstrated through real cases in ticket processing, data governance, and baseline operations.

## Core Philosophy

**Key Principle**: Any repetitive task with clear inputs, logical processes, and fixed actions can be delegated to AI.

Includes both:
- **Explicit repetition**: Batch labeling, bulk processing
- **Implicit repetition**: Data governance, ticket troubleshooting, night shifts (seemingly flexible but actually routine)

## The Three-Component Framework

### 1. AI Eyes (Perception)
Provide AI with tools to observe information:
- SDK integrations wrapped as callable tools
- Example actions: Read tickets, check logs, read code, query metadata
- Transforms "open webpage and view information" into AI-callable "tools"

### 2. AI Hands (Action)
Provide AI with tools to execute operations:
- Comment on tickets, create tasks, publish changes, trigger deployments
- API calls wrapped as function tools

### 3. AI Brain (Decision)
Two decision modes:

**Workflow Mode** (fixed sequence):
- For tasks with predictable step order
- Example: ODPS governance → Query info → Check lineage → Read code → Evaluate → Output recommendation

**Agent Mode** (dynamic planning):
- For tasks requiring adaptive problem-solving
- Example: Ticket processing → Understand problem type → Decide query path → Analyze → Generate solution

## Three Automation Patterns

### Pattern 1: Tool Assistant
**Use Case**: Single analytical tasks, batch processing
- AI completes specific analysis tasks once
- Helps humans quickly filter or extract information
- Batch code classification, quality checks, template generation

**When to Use**: "Need to view lots of information, but only simple judgment needed"

### Pattern 2: Complex Workflow
**Use Case**: Multi-step serial processes with conditional branches
- Predefined fixed flow calling multiple tools
- Supports loops and conditional logic
- 10-50 steps, multiple tool coordination

**Example: Data Governance (20+ nodes)**
1. Receive table name to govern
2. Query table metadata (lifecycle, size, priority)
3. Get full lineage (upstream sources + downstream consumers)
4. Traverse downstream tasks, read SQL code
5. AI analyzes actual dependency scope
6. Check upstream data recovery capability
7. AI decides importance & usage
8. Generate governance recommendation: offline / shorten lifecycle / deep cold storage
9. Execute governance or output JSON conclusion

**When to Use**: "Many steps, but same order each time"

### Pattern 3: Intelligent Agent
**Use Case**: Autonomous planning, dynamic decision-making
- AI acts like human expert: chooses investigation paths, calls tools flexibly
- Highly adaptive: different handling paths per case

**Example: Hierarchical Agent for Ticket Operations**
```
Master Agent (Decision Layer)
├── Sub-Agent A: Log extraction/analysis
│   ├── Grand-Agent A1: Get and parse SQL logs
│   ├── Tool A2: Read platform 2 logs
│   └── Tool A3: Read platform 3 logs
├── Sub-Agent B: Data investigation
│   ├── Grand-Agent B1: Check relationships
│   ├── Tool B2: Query binding status
│   └── Tool B3: Query history
├── Sub-Agent C: Ticket system operations
│   ├── Grand-Agent C1: View ticket + preliminary judgment
│   ├── Tool C2: Comment on ticket
│   └── Tool C3: Transfer/close ticket
└── Sub-Agent D: Layer-by-layer investigation workflow, knowledge retrieval, code analysis
```

**Workflow**:
1. Receive ticket content
2. Understand problem type and context
3. Plan investigation path
4. Dispatch relevant sub-agents
5. Aggregate analysis results
6. Determine root cause
7. Generate solution
8. Reply to ticket or transfer to human

**When to Use**: "Each case differs, need flexible response based on actual problem"

**Limitations**:
- Requires fine prompt design to avoid无效循环
- Keep tools/sub-agents minimal to avoid complexity
- RAG recall不够智能, needs knowledge库设计

**Current Reality**: Agent effectiveness limited for complex tasks; even with multi-layer sub-agents, only achieves ~10-step light reasoning.

## Real Case Studies

### Case 1: Upstream Dependency Impact Analysis
**Problem**: Upstream table changes require downstream teams to check hundreds of tasks for JOIN usage.

**Traditional**: Manual逐个查看代码, 1000+ tasks per incident.

**AI Solution**:
- Two MCP tools: Read SQL code, Read FILE content
- Workflow loops through each task
- AI判断: Does code contain field? Used for JOIN? Type conversion?
- Output: JSON to Excel (task name | affected | contains field | JOIN usage | type conversion)

**Result**: Effortless, high accuracy, fast processing while drinking tea.

### Case 2: Data Storage Governance
**AI Flow (20+ nodes)**:
- Query metadata → Get lineage → Traverse downstream code → Analyze dependencies → Check upstream recovery → Decide governance action → Execute or output JSON

**Results**:
- AI processed thousands of tables
- Manual review of 10% high-priority samples: no误删 data found
- Some over-conservative AI strategies noted

### Case 3: Ticket Auto-Operations
**Challenge**: Fixed workflow hit瓶颈 → 50-node explosion, limited scenario coverage

**Solution**: Hierarchical Agent architecture
- Master agent + specialized sub-agents
- Extensible: add Specialist Agent for new problem types
-贴近人类思维: Understand → Choose tools →综合判断

**Current Status**:
- Basic ticket handling achieved
- General Q&A agent helps一线运营小二,前置拦截工单
- Agent架构理论上更通用 but实践 "笨" compared to old workflow
- Ongoing optimization

### Case 4: Baseline Operations
**Problem**: Multiple upstream dependencies, frequent alerts, SLA pressure

**AI Solution**: Full automation
- Monitor period: Check upstream status → Trigger alerts → Auto push upstream → Auto解除依赖 if未恢复 at decision time → Notify operations
- Recovery period: Generate backfill tasks → Restore data → Next-day补其他报告, zero data loss

**Result**: From "human催促 + manual舍弃" to full AI接管.

## Accuracy Assurance Strategies

### 1. Prompt Engineering
- **Simplest**: Ask AI to refine your prompt
- Clear input format and scope
- Quantifiable判断标准: "field used in JOIN" not "field is important"
- Structured output: JSON / table / Markdown

### 2. Conservative Strategy for High-Risk
- If AI cannot高置信度 confirm safety → Mark "需人工确认"
- Never治理 uncertain tables

### 3. Complete Output Reports
Output detailed JSON, not simple yes/no:
```json
{
  "可缩短生命周期": "",
  "可下线": "",
  "原因": "",
  "分步骤结论": ["任务优先级", "下游最长依赖时长", "上游可恢复性"],
  "工具原始结果": {
    "下游节点列表": [...],
    "节点元信息": {...}
  }
}
```

**Benefits**:
- **Trustworthiness**: Even if AI errs, can快速定位问题
- **Optimizable**: Analyze process to improve prompt and tools

### 4. Human-in-the-Loop
- Insert observation nodes at关键步骤
- Manual verification for high-risk operations and重要节点

## Applicability Criteria

**Core Principle**: If 90%+ of cases can be abstracted into fixed流程, try AI automation.

**Reflection Prompt**: For every "不得不做但不想做" daily task, ask:
> Can AI先帮我做90%? The remaining 10% I'll handle as fallback.

## Concluding Philosophy

**AI's Role**: Not to抢饭碗, but to help us do更有价值的事.

**True Value**: Not人力节省, but解放 from繁琐执行 → Focus on higher-value work: designing flows, optimizing体验, creating new value.

> "以后会有很多ai帮我们工作，我们喝着茶，它就把活干完了。"

## Key Themes

1. **Perception-Decision-Execution Loop**: Complete automation framework
2. **Three Automation Levels**: Tool assistant → Workflow → Intelligent agent
3. **Practical Cases**: Data governance, ticket processing, baseline operations
4. **Accuracy Strategies**: Prompt engineering, conservative logic, structured outputs, human oversight
5. **Graduated Complexity**: Start simple, evolve to agents only when needed
6. **Real-World Deployment**: Production systems at Taobao scale

## Cross-References

- [[LLM Agents]] - Agent architecture foundations
- [[Workflow Automation]] - Process automation patterns
- [[MCP]] - Tool integration protocol
- [[RAG]] - Knowledge retrieval for agents
- [[Data Governance]] - Enterprise data management
- [[AI in Operations]] - Operational automation applications
- [[Prompt Engineering]] - Crafting effective AI instructions

---

*Last updated: 2026-04-28*