---
created: 2026-04-29
updated: 2026-04-29
tags: [concurrency, hardware, low-level]
sources: 1
---
# Atomic Operations

## Definition

Atomic operations are indivisible operations that execute completely or not at all, with no intermediate state visible to other threads. They are the fundamental building blocks for lock-free data structures and high-performance synchronization.

## Key Concepts

- Compare-and-Swap (CAS) is the most common atomic operation: compare expected value with current value, swap if equal
- Test-and-Set atomically sets a value and returns the old value, used to implement spinlocks
- Fetch-and-Add atomically increments a value and returns the old value, useful for counters
- Atomic loads and stores ensure that reads and writes are not partially visible to other threads
- Memory ordering constraints (relaxed, acquire, release, sequentially consistent) control reordering
- CAS can suffer from ABA problem: a value changes A->B->A, and CAS succeeds even though state changed
- Lock-free algorithms guarantee system-wide progress; wait-free algorithms guarantee per-thread progress
- Hardware support: x86 provides LOCK prefix for atomic operations; ARM uses LL/SC (load-linked/store-conditional)
- Atomic operations are implemented in C++ (std::atomic), Java (AtomicInteger), and at the hardware level

## Related Concepts

- [[mutex]]
- [[reader-writer-lock]]
- [[concurrency]]
- [[synchronization]]

## Sources

- [[understanding-reader-writer-locks]]
