---
created: 2026-04-29
updated: 2026-04-29
tags: [cryptography, data-structures, distributed-systems]
sources: 1
---
# Merkle Tree

## Definition

A Merkle tree (hash tree) is a tree data structure where every leaf node contains a hash of a data block, and every non-leaf node contains a hash of the concatenation of its children's hashes. It enables efficient and secure verification of large data structures.

## Key Concepts

- The root hash (Merkle root) summarizes all data in the tree with a single hash value
- Verifying membership requires only O(log n) hash comparisons, compared to O(n) for linear verification
- Merkle trees are used in Bitcoin and other blockchains to verify transaction integrity
- Git uses Merkle trees internally to represent repository states and detect corruption
- IPFS uses Merkle DAGs (directed acyclic graphs) for content addressing
- Tampering with any data block changes its hash, propagating up to the Merkle root, enabling tamper detection
- Sparse Merkle trees allow proving non-existence of keys efficiently
- Merkle proofs (authentication paths) enable light clients to verify data without downloading the entire tree

## Related Concepts

- [[b-tree]]
- [[lsm-tree]]
- [[crdt]]
- [[fault-tolerance]]

## Sources

- [[my-favorite-papers]]
