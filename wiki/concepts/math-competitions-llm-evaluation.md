---
concept: math-competitions-llm-evaluation
---

# Math Competitions LLM Evaluation

**Domain:** Evaluation Methodology

**Definition:** Using mathematics competitions and olympiads as uncontaminated benchmarks for evaluating LLM reasoning capabilities.

## Key Principles

**Uncontaminated Problems:**
- Latest math competitions/olympiads
- Models haven't seen these during training
- Tests genuine reasoning vs. memorization

**Evaluation Rigor:**
- Multiple runs per problem (typically 4)
- Item-response theory modeling
- Cost-performance trade-off analysis
- Raw output transparency

## Representative Platforms

- [[MathArena]] — Primary platform for math competition evaluation
- Similar philosophy to [[AlgoTune]] (uncontaminated algorithm benchmarks)

## Mathematical Framework

**Two-parameter item-response theory:**
$$p_{m,q} = \sigma(\alpha_q(\theta_m - \beta_q))$$

Where:
- $\theta_m$: model ability
- $\beta_q$: question difficulty
- $\alpha_q$: question discrimination

**Expected performance:** Mean predicted correctness across all questions

## Advantages

1. **Addresses data contamination:** Novel problems prevent training leakage
2. **Reasoning focus:** Math requires multi-step logical deduction
3. **Difficulty control:** Problems naturally graded by difficulty
4. **Objective evaluation:** Clear correctness criteria

## Challenges

1. **Problem freshness:** Requires constant new competition problems
2. **Coverage:** Limited to mathematical reasoning domain
3. **Cost:** Running multiple evaluations per problem is expensive

## Related Concepts

- [[Reasoning LLMs]]
- [[Evaluation Metrics]]
- [[Data Contamination]]
- [[Benchmark Saturation]]

## Cross-References

- [[MathArena]] — Implements this methodology
- [[AlgoTune]] — Similar uncontaminated benchmark approach
- [[MMLU]] — Contrast: contaminated static benchmark
- [[Understanding Reasoning LLMs]] — Context for why this matters