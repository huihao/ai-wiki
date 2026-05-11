---
url: https://matharena.ai
title: MathArena.ai
date: 2025-01-21
---

# MathArena.ai

> Source: [MathArena.ai](https://matharena.ai)

**Mission:** Evaluating LLMs on uncontaminated math competitions and olympiads

## Summary

MathArena is a platform for rigorous evaluation of LLM reasoning and generalization capabilities on new math problems that models have not seen during training. The platform publishes leaderboards for each competition showing individual model scores on specific problems.

**Authors:** Mislav Balunović, Jasper Dekoninck, Ivo Petrov, Nikola Jovanović, Martin Vechev

**Contact:** Jasper Dekoninck (jasper.dekoninck@inf.ethz.ch)

**Affiliation:** ETH Zurich (inferred from contact email)

**Evaluation Methodology:**
- Each model runs 4 times per problem
- Reports average score and cost (in USD)
- Expected performance computed via two-parameter item-response theory model
- Expected cost is weighted average per-problem cost
- Requires minimum 42 answered questions for inclusion

## Recent Updates (April 2026)

- Added [[DeepSeek]]-V4-Pro to leaderboard (April 25)
- Added [[GPT]]-5.5 to leaderboard (April 24)

## Mathematical Framework

**Two-parameter item-response theory:**
$$p_{m,q} = \sigma(\alpha_q(\theta_m - \beta_q))$$

Where:
- $\theta_m$: model ability
- $\beta_q$: question difficulty  
- $\alpha_q$: question discrimination

**Expected performance:** Mean predicted correctness across all questions from non-deprecated competitions.

**Expected cost:** Weighted average per-problem cost over non-deprecated, non-Euler competitions.

**Similar approach:** [[Epoch Capability Index]] — MathArena differs by fitting parameters per question rather than per benchmark.

## Key Features

- **Uncontaminated benchmarks:** Focus on latest math competitions/olympiads
- **Cost-performance analysis:** Expected performance vs. release date, expected cost vs. expected performance  
- **Transparent results:** Click cells to see raw model output
- **Competition-specific leaderboards:** Individual problem scores per competition

## Citation

```bibtex
@article{balunovic2025matharena,
  title={MathArena: Evaluating LLMs on Uncontaminated Math Competitions},
  author={Mislav Balunović and Jasper Dekoninck and Ivo Petrov and Nikola Jovanović and Martin Vechev},
  journal={Proceedings of the Neural Information Processing Systems Track on Datasets and Benchmark},
  year={2025}
}
```

## Related Concepts

- [[Reasoning LLMs]]
- [[Evaluation Metrics]]
- [[Data Contamination]]
- [[Math Competitions LLM Evaluation]]

## Cross-References

- Similar mission to [[AlgoTune]] (LLM capability benchmarks)
- Addresses [[Data Contamination]] concerns in evaluation
- Complements [[MMLU]] and other reasoning benchmarks
