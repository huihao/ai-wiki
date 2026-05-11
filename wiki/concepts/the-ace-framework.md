---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, architecture]
---

# The ACE Framework

## Definition

The ACE (Agentic Context Engineering) framework treats agent context as an evolving playbook that adapts through a generator/reflector/curator pipeline, rather than a static file. It outperforms static approaches by 12.3% on agent benchmarks.

## Core Components

- **Generator**: Creates context instructions dynamically
- **Reflector**: Evaluates context effectiveness
- **Curator**: Maintains and refines context quality
- **Pipeline**: Continuous improvement loop

## Key Principles

- Context is dynamic, not static
- Instructions adapt to task types
- Performance feedback drives refinement
- Automated maintenance replaces manual updates

## Performance

- +12.3% improvement over static context approaches
- Adaptation to task patterns
- Reduced manual maintenance burden
- Better task-specific context loading

## Related Concepts

- [[agents-md|AGENTS.md]] — static context file alternative
- [[context-engineering-coding-agents|Context engineering]] — broader framework
- [[agentic-engineering|Agentic engineering]] — agent architecture
- [[prompt-engineering|Prompt engineering]] — foundational

## Related Sources

- [[stop-using-init-for-agents-md|Stop Using /init for AGENTS.md]] — ACE mentioned
- ICLR 2026 paper — research publication

## ACE vs Static AGENTS.md

| Aspect | Static AGENTS.md | ACE Framework |
|--------|------------------|---------------|
| Maintenance | Manual | Automated |
| Adaptation | None | Task-specific |
| Performance | Baseline | +12.3% |
| Updates | Periodic | Continuous |

## Generator Process

1. Analyze task type and requirements
2. Generate context instructions dynamically
3. Apply task-specific patterns
4. Load focused context, not monolithic

## Reflector Process

1. Evaluate task outcomes
2. Identify context gaps
3. Measure instruction effectiveness
4. Generate improvement suggestions

## Curator Process

1. Integrate reflection feedback
2. Refine generator rules
3. Maintain context quality
4. Prevent context rot

## Implementation Challenges

- Requires lifecycle hooks in agent tools
- Feedback loop integration
- Pipeline orchestration
- Quality metrics definition

## Open Questions

- How to implement ACE in current coding agents?
- What metrics best reflect context quality?
- How to balance automation vs control?