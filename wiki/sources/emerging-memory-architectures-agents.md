---
created: 2026-04-28
updated: 2026-04-28
tags: [source, memory, agents, architecture, episodic-memory]
sources: 1
---

# 7 Emerging Memory Architectures for AI Agents

## Metadata

- **Author**: Alyona Vert
- **Date**: 2026-03-15
- **URL**: https://www.turingpost.com/p/agenticmemory
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/memory/7 Emerging Memory Architectures for AI Agents.md`

## Summary

Compilation of 7 emerging memory architectures and frameworks for AI agents. Memory is becoming central as agents tackle longer tasks and complex environments. Covers unified memory, indexed storage, reinforcement learning-based memory, and hierarchical systems.

## Memory Architectures

### 1. Agentic Memory (AgeMem)

**Concept**: Unified short-term memory (STM) and long-term memory (LTM) inside the agent itself.

**Key Features**:
- Memory management becomes part of decision-making
- Agent decides what to store, retrieve, summarize, discard
- Reinforcement learning training improves performance
- Better memory efficiency on long tasks

**Paper**: arxiv.org/abs/2601.01885

### 2. Memex

**Concept**: Indexed experience memory mechanism with external storage and compact summaries.

**Key Features**:
- Stores full interactions in external memory database
- Keeps compact summaries and indices in context
- Retrieve exact past information when needed
- Improves long-horizon reasoning
- Keeps context small

**Paper**: arxiv.org/abs/2603.04257

### 3. MemRL

**Concept**: Improve agents over time using episodic memory instead of retraining.

**Key Features**:
- Stores past experiences
- Reinforcement learning learns best strategies
- Separates stable reasoning from flexible memory
- Adapt without updating model weights

**Paper**: arxiv.org/abs/2601.03192

### 4. UMA (Unified Memory Agent)

**Concept**: RL-trained agent actively managing memory while answering questions.

**Key Features**:
- Dual memory system:
  - Compact global summary
  - Structured key-value Memory Bank
- Supports CRUD operations (create, update, delete, reorganize)
- Improved long-horizon reasoning
- Better state tracking

**Paper**: arxiv.org/abs/2602.18493

### 5. Pancake

**Concept**: High-performance hierarchical memory for large-scale vector retrieval.

**Key Features**:
- Multi-level index caching (exploits access patterns)
- Hybrid graph index shared across agents
- Coordinated GPU-CPU execution
- Fast updates and search

**Paper**: arxiv.org/abs/2602.21477

### 6. Conditional Memory

**Concept**: Selective knowledge lookup during inference instead of activating everything.

**Techniques**:
- Sparse memory tables (Engram N-gram lookup)
- Key-value memory slots
- Routing/gating networks for query decisions
- Hashed indexing for O(1) retrieval

**Benefits**:
- Access specific knowledge cheaply
- No model size increase
- No context increase

**Reference**: turingpost.com/p/conditionalmemory

### 7. Multi-Agent Memory (Computer Architecture Perspective)

**Concept**: Memory for multi-agent LLM systems as computer architecture.

**Key Ideas**:
- Shared vs distributed memory
- Three-layer memory hierarchy (I/O, cache, memory)
- Missing protocols for cache sharing
- Memory access between agents
- Memory consistency as key challenge

**Paper**: arxiv.org/abs/2603.10062

## Key Themes

### Memory Functions

- Store past experiences
- Retrieve useful information
- Track context
- Use history for better decisions
- Learn and adapt over time

### Design Patterns

- **Unified Systems**: Integrate STM and LTM
- **External Storage**: Separate storage from context
- **Hierarchical**: Multi-level caching and indexing
- **Selective Activation**: Conditional retrieval
- **Multi-Agent**: Shared vs distributed memory

### Performance Optimizations

- Index caching
- GPU-CPU coordination
- Hashed indexing for O(1) retrieval
- Compact summaries in context
- Full data in external memory

### Learning Approaches

- Reinforcement learning for memory management
- Episodic memory instead of retraining
- Adaptive strategies without weight updates

## Related Concepts

- [[agentic-memory]]
- [[episodic-memory]]
- [[memory-architectures]]
- [[short-term-memory]]
- [[long-term-memory]]
- [[memory-hierarchy]]
- [[reinforcement-learning]]
- [[agents]]

## Related Entities

- [[alyona-vert]]
- [[turing-post]]

## Sources

- [7 Emerging Memory Architectures](https://www.turingpost.com/p/agenticmemory)

## Evolution

- 2026-04-28: Initial creation from memory architectures article