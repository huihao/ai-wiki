---
created: 2026-04-29
updated: 2026-04-29
tags: [concurrency, fairness, scheduling]
sources: 1
---
# Writer Starvation

## Definition

Writer starvation occurs in reader-writer lock implementations when writers are indefinitely delayed because readers continuously hold the lock. It is a form of resource starvation that can lead to stale data and reduced system throughput.

## Key Concepts

- In reader-preference implementations, arriving readers can preempt waiting writers indefinitely
- Starvation occurs when the scheduling policy favors one type of request over another
- Solutions include writer-priority locks (writers block new readers) and fair (FIFO) locks
- Writer starvation can cause data staleness as updates are delayed
- Reader starvation (in writer-preference systems) is generally less problematic but can cause fairness issues
- Priority-based scheduling can help but introduces additional complexity
- A truly fair reader-writer lock requires queueing all requests in arrival order
- In practice, the choice between reader-preference and writer-preference depends on the read/write ratio
- Real-world systems (database engines, file systems) typically use writer-preference or fair locking

## Related Concepts

- [[reader-writer-lock]]
- [[mutex]]
- [[concurrency]]
- [[synchronization]]

## Sources

- [[understanding-reader-writer-locks]]
