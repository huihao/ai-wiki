---
created: 2026-04-29
updated: 2026-05-09
tags: [concurrency, performance]
sources: 1
---

# Synchronization Overhead

## Definition

Synchronization overhead is the performance cost incurred when concurrent threads or processes coordinate access to shared resources through mechanisms such as locks, mutexes, semaphores, barriers, or atomic operations. This overhead arises from thread serialization (preventing parallelism), cache coherence traffic, context switching, and OS-level scheduling, and represents one of the primary scaling bottlenecks in parallel computing systems.

## Key Aspects

- **Lock contention**: When multiple threads compete for the same lock, threads that cannot acquire it must wait (spin or block), reducing effective parallelism and creating serialization bottlenecks proportional to critical section frequency.
- **Cache coherence cost**: Synchronization primitives trigger cache line invalidations across CPU cores. On multi-socket systems, cross-socket cache coherence can cost 100+ nanoseconds per synchronization event, dwarfing the cost of the protected operation itself.
- **Atomic operations**: Hardware atomics (compare-and-swap, fetch-and-add) are faster than OS-level locks but still require memory fence instructions that prevent compiler and CPU reordering, adding latency to surrounding code.
- **Barriers and fences**: Thread barriers synchronize all threads at a program point, forcing the slowest thread to dictate overall throughput. Memory fences ensure ordering guarantees but prevent instruction-level parallelism optimizations.
- **Scalability impact**: Amdahl's Law quantifies the impact — if fraction p of code is parallelizable and fraction (1-p) is serialized by synchronization, maximum speedup is 1/(1-p) regardless of processor count.
- **Mitigation strategies**: Lock-free algorithms, read-copy-update (RCU), thread-local storage, work stealing, and reducing shared state frequency are standard techniques for minimizing synchronization overhead in high-performance systems.

## Related Concepts

- [[atomic-barriers]]
- [[concurrency]]
- [[parallel-computing]]
- [[cuda-architecture]]

## Sources

- [[atomic-barriers]]
