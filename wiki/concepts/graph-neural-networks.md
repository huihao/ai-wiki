---
created: 2026-04-29
updated: 2026-05-09
tags: [algorithms, machine-learning]
sources: 1
---

# Graph Neural Networks

## Definition

Graph Neural Networks (GNNs) are a class of neural networks designed to operate on graph-structured data, where nodes represent entities and edges represent relationships. GNNs propagate information across the graph through message passing, allowing each node to aggregate features from its neighbors and learn representations that capture both local and global graph structure.

## Key Aspects

- **Message Passing Framework**: Each layer, every node aggregates features from its neighbors (via sum, mean, or max), transforms them with learned weights, and updates its own representation
- **Permutation Invariance**: GNN operations are invariant to node ordering, making them natural for graph data where node indices are arbitrary
- **Building Blocks**: The Distill publication provides a comprehensive visual guide to GNN building blocks — aggregation functions, update rules, and readout mechanisms
- **Scalability Challenges**: Full-batch GNNs require the entire graph in memory; mini-batch approaches (GraphSAGE, Cluster-GCN) enable scaling to large graphs
- **Applications**: Social networks, molecular property prediction, knowledge graphs, recommendation systems, and traffic forecasting

## Related Concepts
- [[graph-neural-networks]]
- [[neural-network-interpretability]]

## Sources
- [[distill-pub]]
