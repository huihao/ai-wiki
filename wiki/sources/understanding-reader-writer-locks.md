---
created: 2026-04-29
updated: 2026-04-29
tags: [source, concurrency, synchronization, multithreading, systems]
sources: 1
url: "https://mohitmishra786.github.io/TheCoreDump/posts/Understanding-Reader-Writer-Locks-Enhancing-Concurrency-in-Multithreaded-Applications/"
title: "Understanding Reader-Writer Locks"
---

# Understanding Reader-Writer Locks

## Summary

A detailed guide to reader-writer locks, explaining how they improve concurrent access patterns compared to traditional mutex locks. The article covers read-preferring, write-preferring, and fair lock implementations, potential writer starvation issues, and provides a low-level C implementation using C11 atomic operations.

## Key Takeaways

- Traditional mutex locks force all threads to wait exclusively, even when multiple readers could safely access data concurrently
- Reader-writer locks (shared-exclusive locks) allow multiple concurrent readers while ensuring exclusive access for writers
- Three priority schemes exist: read-preferring, write-preferring, and fair (FIFO) ordering
- Writer starvation is a real risk in read-preferring implementations when readers continuously hold the lock
- Reader-writer locks have higher overhead than simple mutexes due to more complex internal state management
- A C11 atomic-based implementation uses atomic_int readers, atomic_bool writer, and atomic_int waiting_writers
- The lock's internal state can cause cache coherency traffic between CPU cores in highly contended scenarios

## Entities Mentioned

- None specific (educational tutorial)

## Concepts Mentioned

- [[reader-writer-locks]] -- synchronization primitive allowing concurrent reads but exclusive writes
- [[mutex]] -- mutual exclusion lock for protecting shared resources
- [[concurrency]] -- parallel execution of multiple threads accessing shared data
- [[synchronization]] -- mechanisms ensuring safe concurrent access
- [[atomic-operations]] -- indivisible operations for thread-safe data manipulation
- [[writer-starvation]] -- condition where writers never acquire the lock due to continuous reader access

## Raw Notes

- Includes complete C code examples using both pthread mutex and pthread_rwlock
- Shows compilation with gcc and -pthread flag
- Discusses performance characteristics: scalability under contention, cache effects, and lock acquisition overhead
