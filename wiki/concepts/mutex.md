---
created: 2026-04-29
updated: 2026-04-29
tags: [concurrency, locks, synchronization]
sources: 1
---
# Mutex

## Definition

A mutex (mutual exclusion) is a synchronization primitive that ensures only one thread can access a shared resource or critical section at a time, preventing race conditions and ensuring data consistency.

## Key Concepts

- A mutex has two states: locked and unlocked; only one thread can hold the lock at a time
- Lock acquisition is blocking: threads waiting for the lock are put to sleep until it becomes available
- The critical section is the code region protected by the mutex that accesses shared resources
- Mutexes protect against data races but can lead to deadlocks if locking discipline is not followed
- Spinlocks busy-wait instead of sleeping, useful for very short critical sections
- Priority inversion occurs when a high-priority thread waits for a low-priority thread holding the mutex
- Mutexes can be recursive (allowing the same thread to lock multiple times) or non-recursive
- Pthreads (POSIX) and std::mutex (C++) provide standard mutex implementations
- The overhead of mutex operations grows with contention; at low contention, they are very efficient

## Related Concepts

- [[reader-writer-lock]]
- [[concurrency]]
- [[synchronization]]
- [[atomic-operations]]

## Sources

- [[understanding-reader-writer-locks]]
