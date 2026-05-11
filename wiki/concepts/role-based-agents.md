---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 1
---

# Role-Based Agents

## Definition

Role-based agents are AI agents in multi-agent systems that are assigned specific roles, responsibilities, and personas to collaborate on complex tasks. Each agent specializes in a particular domain or function, enabling decomposition of large problems into manageable subtasks handled by the most appropriate agent.

## Key Aspects

- Each agent is configured with a system prompt defining its persona, expertise boundaries, and communication style
- Tool access is restricted per role: security auditors may only read/search, while code reviewers have broader but still limited access
- Model selection per role enables cost optimization: use smaller, cheaper models (e.g., Haiku) for read-only exploration, reserve powerful models (Sonnet/Opus) for generation tasks
- Roles can be defined in configuration files (e.g., `.claude/agents/`) with system prompts, tool restrictions, and model preferences
- Enable separation of concerns: one agent handles research, another writes code, a third reviews for security
- Facilitate specialization: each agent can be fine-tuned or prompted for its specific domain without polluting other roles
- Coordination patterns include sequential handoff, parallel execution, and hierarchical delegation
- Used in frameworks like AutoGen, CrewAI, and LangGraph for building multi-agent workflows

## Related Concepts

- [[multi-agent-systems]] -- Broader field of coordinating multiple AI agents
- [[agents-config]] -- Configuration files defining agent roles and permissions
- [[separation-of-concerns]] -- Design principle applied to agent role design
- [[human-in-the-loop]] -- Safety mechanism for role-based agent oversight

## Sources

- [[multi-agent-systems]]
