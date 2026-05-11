---
created: 2026-04-28
updated: 2026-04-28
tags: [source, benchmark, optimization, llm, algorithms]
---

# AlgoTune

## Metadata

- **Author**: Ori Press
- **Date**: 2026-01-18
- **URL**: https://algotune.io/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/AlgoTune.md`

## Summary

AlgoTune is a benchmark for measuring whether language models can speed up general-purpose numerical programs. Each algorithm task includes three components: problem generation, solution verification, and a reference solver.

## Key Takeaways

- **Three-function architecture**: Every AlgoTune task implements a class with `generate_problem`, `solve`, and `is_solution` functions.
- **Problem generation**: Creates instances with hardness controlled by parameter `n` (e.g., PCA task generates matrix with 50×n samples).
- **Solution verification**: Checks correctness (e.g., PCA requires orthonormal matrix, checks shape, orthonormality, objective value).
- **Reference solver**: Uses standard implementations (e.g., scikit-learn PCA) as baseline for comparison.
- **Optimization goal**: LLMs should produce solutions that are faster than reference solvers while maintaining correctness.

## Example Task (PCA)

- **Problem generation**: Creates non-negative matrix Y = W × H + noise with configurable dimensions
- **Reference solver**: sklearn.decomposition.PCA
- **Verification**: Checks orthonormality (V × V^T ≈ I), checks objective value matches solver output
- **Hardness control**: `n` parameter scales matrix size (50×n samples, n×5 factorization rank)

## Methodology

- **Verification tolerance**: 1e-4 relative tolerance for orthonormality and objective checks
- **Error handling**: Returns trivial solution on solver failure (identity matrix for PCA)
- **Objective comparison**: Verifies that solution objective is close to solver objective

## Concepts Mentioned

- [[benchmarking]] — measuring LLM optimization capability
- [[numerical-algorithms]] — algorithm optimization domain
- [[program-optimization]] — speedup measurement
- [[pca]] — example task
- [[matrix-factorization]] — mathematical technique
- [[llm-code-generation]] — language model task

## Raw Notes

- Website shows code example for PCA task with full implementation of three functions.
- Verification is strict: checks both mathematical properties (orthonormality) and objective value.
- Error handling prevents crashes: returns trivial answer if solver fails.

## Questions / Follow-ups

- What other algorithms are benchmarked besides PCA?
- What speedup thresholds qualify as "successful" optimization?
- How do LLMs compare to traditional optimization techniques?