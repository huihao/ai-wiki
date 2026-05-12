---
created: 2026-04-28
updated: 2026-05-09
tags: [foundations, mathematics, theory]
sources: 3
---

# Information theory

## Definition

Information theory is the mathematical study of the quantification, storage, and communication of information, founded by Claude Shannon in his landmark 1948 paper "A Mathematical Theory of Communication." Its core concepts include entropy (a measure of uncertainty or information content), mutual information (shared information between variables), and channel capacity (the maximum rate of reliable communication). Information theory provides the mathematical foundations for many machine learning concepts including [[cross-entropy-loss|cross-entropy loss]], [[kl-divergence]], [[entropy]], and the theoretical underpinnings of how [[large-language-models]] compress and predict natural language.

## Key Proponents / Critics

- Claude Shannon — founder of information theory, published the foundational work in 1948
- [[geoffrey-hinton]] — applied information-theoretic principles to neural network training and the [[dropout]] technique
- [[yoshua-bengio]] — contributor to applying information theory to representation learning and deep learning
- [[jurgen-schmidhuber]] — researcher who has explored connections between information theory and artificial intelligence

## Related Concepts

- [[entropy]] — the fundamental measure of information content or uncertainty in a random variable
- [[cross-entropy-loss]] — derived from information theory; measures the difference between predicted and true distributions
- [[kl-divergence]] — measures how one probability distribution diverges from another, foundational to variational methods
- [[maximum-likelihood]] — estimation principle grounded in information-theoretic foundations
- [[tokenization]] — information-theoretic principles inform vocabulary design in language models
- [[byte-pair-encoding|BPE]] — tokenization algorithm that uses information-theoretic compression principles
- [[conditional-probability]] — a core concept in information theory underlying prediction and language modeling
- [[probability]] — the mathematical foundation upon which information theory is built
- [[next-word-prediction]] — language model training objective closely related to minimizing cross-entropy

## Related Entities

- [[stanford-university]] — Claude Shannon was associated with MIT and Bell Labs; Stanford hosts ongoing information theory research
- [[deepmind]] — applies information-theoretic tools to AI research
- [[microsoft-research]] — conducts research at the intersection of information theory and machine learning

## Sources

- [[essential-ml-equations]] — mathematical foundations including information-theoretic concepts used in ML
- [[machine-learning-glossary]] — definitions of information-theoretic terms in the ML context
- [[deep-learning-fundamentals]] — foundational material covering the role of information theory in deep learning

## Evolution

- **1948**: Claude Shannon publishes "A Mathematical Theory of Communication," founding information theory
- **1951**: Shannon measures the entropy of English text, an early connection to [[natural-language-processing]]
- **1959**: Solomon Kullback and Richard Leibler introduce the KL divergence
- **1978**: Minimum description length principle connects information theory to model selection
- **2000s**: Information-theoretic approaches gain traction in feature selection and representation learning
- **2015**: Variational autoencoders use information-theoretic objectives (ELBO) for generative modeling
- **2020s**: [[large-language-models]] are understood as next-token predictors optimizing cross-entropy, an information-theoretic objective
