---
created: 2026-04-29
updated: 2026-04-29
tags: [parallelism, programming, systems]
sources: 1
---
# Concurrency

## Definition

Concurrency is the ability of a system to handle multiple tasks simultaneously, where tasks can start, run, and complete in overlapping time periods. Concurrent execution improves throughput and responsiveness but introduces challenges like race conditions, deadlocks, and synchronization overhead.

## Key Concepts

- Concurrency (tasks making progress in overlapping time periods) differs from parallelism (tasks running simultaneously on multiple cores)
- Race conditions occur when the outcome depends on the non-deterministic timing of thread execution
- Deadlock occurs when two or more threads each hold a lock the other needs, creating a circular wait
- Livelock occurs when threads repeatedly change state in response to each other without making progress
- The ABBA problem: thread 1 holds lock A and wants B; thread 2 holds lock B and wants A
- Condition variables allow threads to wait for specific conditions to become true
- Semaphores generalize mutexes by allowing multiple threads (counting semaphore) or signaling (binary semaphore)
- Thread-local storage avoids synchronization by giving each thread its own copy of shared data
- Modern approaches: actors (Erlang, Akka), CSP (Go channels), software transactional memory

## Related Concepts

- [[mutex]]
- [[reader-writer-lock]]
- [[synchronization]]
- [[atomic-operations]]

## Sources

- [[understanding-reader-writer-locks]]
