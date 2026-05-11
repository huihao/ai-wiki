---
created: 2026-04-28
updated: 2026-04-28
tags: [architecture, memory]
sources: 1
---

# Memory Hierarchy

## Definition

Multi-level memory architecture with different layers optimized for different access patterns and capacities. Similar to CPU cache hierarchy (L1, L2, L3).

## Layers

### Three-Level Architecture

From multi-agent memory perspective:

1. **I/O**: External storage layer
2. **Cache**: Fast access intermediate layer
3. **Memory**: Working memory layer

### Pancake Hierarchical Memory

- Multi-level index caching
- Exploits access patterns
- Hybrid graph index shared across agents
- Coordinated GPU-CPU execution

## Benefits

- Fast retrieval through caching
- Capacity scalability through hierarchy
- Access pattern optimization
- Shared resources in multi-agent systems

## Design Considerations

- Cache sharing protocols
- Memory access protocols
- Memory consistency
- Coordination between layers

## Related Concepts

- [[memory-architectures]]
- [[short-term-memory]]
- [[long-term-memory]]
- [[caching]]
- [[agents]]

## Related Entities

## Sources

- [[emerging-memory-architectures-agents]]

## Evolution

- 2026-04-28: Initial definition from Pancake and multi-agent architectures