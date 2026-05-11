---
created: 2026-04-28
updated: 2026-04-28
tags: [memory, systems]
sources: 1
---

# Memory Architectures

## Definition

Structural designs for how AI agents store, retrieve, and manage information. Different architectures balance context size, retrieval speed, and management complexity.

## Types

### Unified Memory

- **Agentic Memory (AgeMem)**: STM + LTM unified in agent
- **UMA**: Global summary + key-value Memory Bank

### Indexed External Memory

- **Memex**: Full interactions in external DB, summaries in context
- **Pancake**: Hierarchical memory with multi-level caching

### Episodic Memory

- **MemRL**: Past experiences stored, RL learns strategies

### Conditional Memory

- Selective knowledge lookup during inference
- Sparse memory tables, routing/gating networks
- O(1) retrieval with hashed indexing

### Multi-Agent Memory

- Shared vs distributed memory
- Three-layer hierarchy (I/O, cache, memory)
- Memory consistency challenges

## Key Design Dimensions

- **Storage Location**: Internal context vs external database
- **Management**: Agent-controlled vs system-managed
- **Hierarchy**: Flat vs multi-level caching
- **Access**: Full retrieval vs selective lookup
- **Sharing**: Single-agent vs multi-agent

## Performance Optimizations

- Index caching
- GPU-CPU coordination
- Hashed indexing
- Compact summaries
- Multi-level indices

## Related Concepts

- [[agentic-memory]]
- [[episodic-memory]]
- [[short-term-memory]]
- [[long-term-memory]]
- [[memory-hierarchy]]
- [[agents]]

## Related Entities

- [[alyona-vert]]
- [[turing-post]]

## Sources

- [[emerging-memory-architectures-agents]]

## Evolution

- 2026-04-28: Initial taxonomy from memory architecture compilation