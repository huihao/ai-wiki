---
concept: "Specialist Agents"
domain: "agentic-systems"
importance: "high"
---

# Specialist Agents

## Definition

AI agents optimized for specific sub-tasks rather than general-purpose capabilities. Like microservices, they focus on doing one thing well.

## Advantages

- **Simplicity**: Easier to design, debug, and maintain
- **Reliability**: Better performance on specific tasks
- **Testability**: Isolated evaluation and improvement
- **Modularity**: Composable into larger systems
- **Training**: Independent optimization for domain

## Design Philosophy

Instead of building one giant generalist agent:
- Break work into specialized sub-tasks
- Create focused agents for each domain
- Combine via orchestration for complex goals

## Examples

- **SQL Agent**: Database query generation
- **Summarization Agent**: Text condensation
- **API Agent**: External service integration
- **Testing Agent**: Code validation
- **Coding Agent**: Implementation
- **Deployment Agent**: Production release

## Combination Strategy

Specialist agents don't replace general LLMs:
- Use existing LLM capabilities
- Combine for higher-level functionality
- Orchestration handles routing

## Related Concepts

- [[agentic-systems]]
- [[multi-agent-orchestration]]
- [[agent-evaluation]]

## Key Sources

- [[designing-agentic-ai-systems-web-dev]]