---
created: 2026-04-29
updated: 2026-04-29
tags: [concurrency, synchronization]
sources: 1
---

# Reader-Writer Lock

## Definition

A synchronization primitive that allows concurrent access for read-only operations while requiring exclusive access for write operations. Also known as shared-exclusive locks, they significantly improve performance in read-heavy scenarios compared to mutexes.

## Key Properties

- Multiple readers can hold the lock simultaneously
- Writers require exclusive access (no readers or other writers)
- Higher overhead than simple mutexes due to complex internal state
- Benefit diminishes with frequent write operations

## Priority Schemes

- **Read-preferring**: Prioritize readers (risk of writer starvation)
- **Write-preferring**: Prioritize writers (prevents writer starvation)
- **Fair (FIFO)**: First-come-first-served regardless of lock type

## Tradeoffs

- **Writer starvation**: Continuous readers can prevent writers from ever acquiring the lock (in read-preferring implementations)
- **Cache coherency traffic**: Internal state causes inter-core communication overhead
- **Upgradeable locks**: Some implementations support atomically upgrading read → write

## Related Concepts

- [[mutex]] — Mutual exclusion lock allowing only one thread
- [[concurrency]] — Multiple threads executing simultaneously
- [[writer-starvation]] — Writers never acquiring lock due to continuous readers

## Sources

- [[understanding-reader-writer-locks]] — Mohit Mishra's guide with C implementations
