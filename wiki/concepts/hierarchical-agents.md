---
title: Hierarchical Agents
category: concepts
tags: [agent, agent-architecture, multi-agent-systems, orchestration]
---

# Hierarchical Agents

> Multi-level agent architecture with master agent coordinating specialized sub-agents for complex problem-solving.

## Definition

Hierarchical agents organize AI systems into layers: a master agent负责决策 and coordination, while specialized sub-agents handle domain-specific tasks. This architecture enables complex reasoning without workflow explosion.

## Architecture Structure

### Three-Level Hierarchy

**Level 1: Master Agent (Decision Layer)**
- Understands overall problem context
- Plans investigation/approach strategy
- Dispatches tasks to sub-agents
- Aggregates results
- Makes final decisions

**Level 2: Sub-Agents (Specialist Layer)**
- Domain-specific expertise
- Handle complex multi-step tasks
- Can have their own toolsets
- Return structured results to master

**Level 3: Grand-Agents or Tools (Execution Layer)**
- Atomic operations
- Single-purpose tools (read log, query database, post comment)
- Wrapped as function calls

### Example: Ticket Operations Hierarchical Agent

```
Master Agent (Brain)
├── Sub-Agent A: Log extraction/analysis (Eyes)
│   ├── Grand-Agent A1: Get and parse SQL logs
│   ├── Tool A2: Read platform 2 logs
│   └── Tool A3: Read platform 3 logs
├── Sub-Agent B: Data investigation (Hands)
│   ├── Grand-Agent B1: Check relationships
│   ├── Tool B2: Query binding status
│   └── Tool B3: Query history
├── Sub-Agent C: Ticket system operations (Hands+Eyes)
│   ├── Grand-Agent C1: View ticket + preliminary judgment
│   ├── Tool C2: Comment on ticket
│   └── Tool C3: Transfer/close ticket
└── Sub-Agent D: Layer-by-layer investigation workflow
    ├── Knowledge retrieval agent
    ├── Code analysis agent
    └── Monitoring/notification agent
```

## Workflow

**Standard Process**:
1. Master agent receives problem (e.g., ticket content)
2. Understands problem type and context
3. Plans investigation path
4. Dispatches relevant sub-agents to执行分析
5. Sub-agents return results
6. Master aggregates and判断根因
7. Master generates solution
8. Master replies or transfers to human

## Advantages Over Workflows

### Extensibility
- **Workflow**: New scenario → Add nodes (explosion risk)
- **Hierarchical Agent**: New scenario → Add specialist agent (maintainable)

### Flexibility
- **Workflow**: Fixed path for all cases
- **Hierarchical Agent**: Different path per problem type

### Maintainability
- **Workflow**: 50-node workflow = impractical
- **Hierarchical Agent**: Modular sub-agents = isolated changes

### Scalability
- **Workflow**: Limited by node count
- **Hierarchical Agent**: Unlimited specialists

## When to Use Hierarchical Agents

**Trigger**: "每次情况都不同,需要根据实际问题灵活应对"

**Examples**:
- Ticket troubleshooting (problem types vary widely)
- Baseline operations (decisions depend on实时状态)
- Root cause analysis (investigation paths vary)

**Current Limitations**:
- Requires精细 prompt design (avoid无效循环)
- Keep tools/sub-agents精简 (avoid complexity难以收敛)
- RAG recall不够智能 (needs knowledge库设计)
- Only achieves ~10-step light reasoning for complex tasks

## Design Principles

### 1. Minimal Complexity
- Each sub-agent handles one domain
- Avoid nesting too deep (grand-agents optional)
- Balance specialization vs. coordination cost

### 2. Clear Interfaces
- Structured output from each sub-agent
- Master agent expects consistent result format
- Tools return JSON or typed data

### 3. Conservative Defaults
- High-risk operations: route to human
- Uncertain decisions: request confirmation
- Fallback paths for sub-agent failures

### 4. Observability
- Log master agent decisions
- Track sub-agent invocations
- Monitor tool call sequences

## Real-World Performance

**Taobao Ticket Operations**:
- Old 50-node workflow → Limited coverage, maintenance burden
- New hierarchical agent → More通用理论上
- **Reality**: Agent "笨" compared to old workflow in practice
- **Status**: Ongoing optimization

**Lesson**: Not all scenarios need agents; workflows may be更优 for fixed processes.

## Comparison with Other Agent Patterns

### Single Agent
- One agent handles entire task
- Simpler but limited capacity
-适合单步推理或简单多步

### Flat Multi-Agent
- Multiple agents coordinate peer-to-peer
- No clear hierarchy
- Risk of coordination chaos

### Hierarchical Agent
- Clear指挥链
- Structured coordination
- Best for complex, variable scenarios

### Swarm Agents
- Many simple agents with emergent behavior
- Distributed decision-making
-适合大规模并行任务

## Implementation Frameworks

- [[LangGraph]] - Graph-based agent orchestration
- [[Pydantic-AI]] - Structured agent development
- [[CrewAI]] - Multi-agent role-based collaboration
- [[AutoGen]] - Microsoft's multi-agent framework

## Key Challenges

### 1. Prompt Engineering
- Master agent must understand何时dispatch which sub-agent
- Sub-agents must understand their scope and boundaries
- Avoid circular reasoning or无效探索

### 2. Tool Management
- Each sub-agent needs appropriate toolset
- Too many tools = decision paralysis
- Too few tools = limited capability

### 3. Knowledge Integration
- RAG systems for domain knowledge
- Knowledge库设计影响召回质量
- Context window limits for large knowledge bases

### 4. Coordination Cost
- Multiple agent calls increase latency
- State synchronization between agents
- Error propagation across layers

## Cross-References

- [[Complex AI Task Processing Taobao]] - Hierarchical agent case study
- [[Workflow Automation]] - Alternative fixed-path approach
- [[LLM Agents]] - General agent architecture
- [[Multi-Agent Systems]] - Coordination patterns
- [[Subagents]] - Specialist agent concept
- [[LangGraph]] - Implementation framework
- [[MCP]] - Tool integration protocol
- [[RAG]] - Knowledge retrieval for agents

## Related Concepts

- [[Multi-Agent Systems]] - Multiple agents coordinating
- [[Agent Orchestration]] - Coordination of agent activities
- [[Specialist Agents]] - Domain-specific agents
- [[Master-Servant Pattern]] - Hierarchical control pattern
- [[Decision Trees]] - Hierarchical decision structure

---

*Last updated: 2026-04-28*