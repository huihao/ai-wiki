---
created: 2026-04-29
updated: 2026-05-09
tags: [algorithms]
sources: 3
---

# Directed Acyclic Graph

## Definition

A directed acyclic graph (DAG) is a graph structure consisting of nodes connected by directed edges, with the constraint that no path through the graph can return to its starting node — there are no cycles. In computing, DAGs are used to represent dependencies, schedules, and execution plans where order matters but parallelism is possible. In personal planning, they provide a framework for mapping steps from a current state to a goal, clarifying which tasks depend on others.

## Key Aspects

- **No cycles**: Every edge has a direction, and following edges will never loop back to a previously visited node — this property makes DAGs suitable for representing causally ordered processes.
- **Dependency representation**: In task planning, a DAG captures which steps must precede others (edges) and what each step accomplishes (nodes), enabling identification of critical paths and parallelizable work.
- **Goal planning application**: The Wafflehouse Method uses a DAG to map hundreds of steps from one's current position to 5-year goals, making abstract ambitions concrete by decomposing them into ordered, actionable tasks.
- **Computational uses**: DAGs underpin build systems (Make), data pipelines (Apache Airflow), package managers (pip, npm), version control (Git), and backpropagation in neural networks — anywhere tasks have partial ordering.
- **Topological sorting**: DAGs can be linearly ordered so that every node appears before its successors, providing a valid execution sequence for dependent tasks.
- **Knot point resolution**: In planning DAGs, "knot points" represent vague or uncertain steps that must be researched and resolved before the plan can proceed — a metaphor for breaking ambiguity into concrete actions.

## Related Concepts

- [[goal-setting]]
- [[gradient]]

## Sources

- [[069_wafflehouse-method-stop-feeling-lost]]
- [[goal-setting]]
- [[wafflehouse-method]]
