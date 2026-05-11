---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Neural Scaling Laws

## Definition

Neural scaling laws are empirical power-law relationships describing how model performance (typically loss) improves predictably as a function of model parameter count, dataset size, or compute budget, providing a framework for forecasting the returns of scaling investments.

## Key Aspects

- **Power-Law Behavior**: Loss decreases as a power law L(N) ~ N^(-alpha) with model size N, and similarly for dataset size D and compute C, holding other factors constant
- **Superposition as Scaling Driver**: Recent work (NeurIPS 2025) demonstrates that representation superposition -- representing more features than dimensions -- is the primary mechanism governing neural scaling laws, with loss scaling inversely with model dimension under strong superposition
- **Chinchilla-Optimal Training**: The landmark Chinchilla paper established that for a given compute budget, model parameters and training tokens should be scaled equally for optimal performance, challenging the prior trend of training very large models on insufficient data
- **Predictive Power**: Scaling laws enable forecasting performance at larger scales, guiding resource allocation decisions before committing to expensive training runs
- **Broad Frequency Distributions**: Superposition-based scaling holds across broad feature frequency distributions, confirmed empirically in open-source LLMs and consistent with Chinchilla scaling laws

## Related Concepts

- [[neural-network-training]] -- The process whose cost-performance trade-offs scaling laws describe
- [[representation-superposition]] -- The geometric mechanism underlying observed scaling behavior
- [[chinchilla]] -- Landmark paper defining compute-optimal training ratios
- [[llm-evaluation]] -- Benchmarking frameworks that measure scaling law predictions

## Sources

- [[announcing-neurips-2025-best-paper-awards]]
