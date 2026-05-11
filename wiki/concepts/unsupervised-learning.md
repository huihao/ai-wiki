---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Unsupervised Learning

## Definition

Unsupervised learning is a class of machine learning methods that discover patterns, structure, and relationships in data without labeled examples. Unlike supervised learning, which learns from input-output pairs, unsupervised learning operates on raw data to find clusters, reduce dimensionality, and learn latent representations.

## Key Aspects

- Core techniques include clustering (k-means, DBSCAN, hierarchical), dimensionality reduction (PCA, t-SNE, UMAP), and density estimation
- Autoencoders learn compressed representations by encoding input to a lower-dimensional bottleneck and reconstructing, discovering essential features without labels
- Self-supervised learning (a subset of unsupervised learning) creates pseudo-labels from the data itself, forming the basis of modern pretraining: GPT predicts next tokens, BERT masks and predicts words
- Generative models (VAEs, GANs, diffusion models) learn the underlying data distribution to generate new samples, a form of unsupervised density estimation
- Clustering algorithms group similar data points, enabling customer segmentation, anomaly detection, and document organization
- Dimensionality reduction techniques visualize high-dimensional data and remove noise, critical for exploratory data analysis and preprocessing for downstream tasks
- Unsupervised pretraining followed by supervised fine-tuning is the dominant paradigm in modern ML: large unlabeled corpora build general representations, labeled data refines for specific tasks
- Word embeddings (Word2Vec, GloVe) learn semantic relationships through unsupervised co-occurrence patterns

## Related Concepts

- [[clustering]]
- [[dimensionality-reduction]]
- [[self-supervised-learning]]

## Sources

- [[introduction-to-machine-learning]]
