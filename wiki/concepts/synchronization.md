---
created: 2026-04-29
updated: 2026-04-29
tags: [concurrency, coordination, systems]
sources: 1
---
# Synchronization

## Definition

Synchronization is the coordination of concurrent processes or threads to ensure correct execution order and data consistency. It encompasses both mutual exclusion (preventing concurrent access to shared resources) and ordering (ensuring events happen in the correct sequence).

## Key Concepts

- Mutual exclusion synchronization prevents multiple threads from accessing shared resources simultaneously
- Ordering synchronization ensures that operations occur in a specific sequence (e.g., happens-before)
- Low-level primitives: atomic operations, memory barriers (fences), compare-and-swap (CAS)
- High-level primitives: mutexes, semaphores, condition variables, monitors, barriers
- Spin-waiting uses busy loops instead of sleeping, useful for short waits on multi-core systems
- Memory models define the visibility guarantees between threads (sequential consistency, relaxed consistency)
- Acquire-release semantics: acquire prevents reordering of subsequent operations; release prevents reordering of prior operations
- Lock-free and wait-free algorithms guarantee progress without using traditional locks
- The synchronization choice depends on contention level, critical section size, and platform support

## Related Concepts

- [[concurrency]]
- [[mutex]]
- [[reader-writer-lock]]
- [[atomic-operations]]

## Sources

- [[understanding-reader-writer-locks]]
