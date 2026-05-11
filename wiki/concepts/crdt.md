---
created: 2026-04-29
updated: 2026-04-29
tags: [consistency, data-structures, distributed-systems]
sources: 1
---
# CRDT

## Definition

Conflict-free Replicated Data Types (CRDTs) are data structures designed for distributed systems where multiple replicas can be updated independently and concurrently, and all replicas are guaranteed to converge to the same state without requiring synchronization or consensus.

## Key Concepts

- CRDTs guarantee eventual consistency without coordination between replicas
- Two main families: state-based (convergent replicated data types, CvRDTs) and operation-based (commutative replicated data types, CmRDTs)
- State-based CRDTs merge by computing the join of states using a join-semilattice
- Operation-based CRDTs rely on causal ordering and commutativity of operations
- Common CRDT types include G-Counter, PN-Counter, G-Set, OR-Set, and LWW-Register
- The join operation must be commutative, associative, and idempotent
- CRDTs are used in collaborative editing (Figma, Google Docs), distributed databases (Riak, Redis), and version control systems
- A key challenge is garbage collection of tombstones and bounding state growth

## Related Concepts

- [[logical-clocks]]
- [[fault-tolerance]]
- [[merkle-tree]]
- [[b-tree]]
- [[lsm-tree]]

## Sources

- [[my-favorite-papers]]
