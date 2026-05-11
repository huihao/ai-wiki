---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Mathematical Reasoning

## Definition

Mathematical reasoning is the ability to construct, evaluate, and verify formal logical arguments and proofs—a capability that was long considered beyond the reach of language models but is now actively pursued through specialized training, inference-time compute scaling, and small but highly focused models. It encompasses both continuous reasoning (calculus, analysis of infinitesimals) and discrete reasoning (formal theorem proving), and represents one of the hardest benchmarks for evaluating genuine AI reasoning ability.

## Key Aspects

- **Infinitesimals and orders of smallness**: Foundational to calculus and analysis, the concept of infinitesimals—quantities closer to zero than any standard real number—requires distinguishing between first-order, second-order, and higher-order smallness. Silvanus Thompson's *Calculus Made Easy* illustrates this through everyday analogies (seconds relative to minutes, pennies relative to fortunes), building the intuition essential for understanding derivatives and integrals.
- **Automated theorem proving with small models**: The lm-provers group's QED-Nano (a 4 billion parameter model) demonstrated that sufficiently small, specialized models can prove Olympiad-level mathematical theorems—challenging the assumption that trillion-parameter scale is required for advanced mathematical reasoning. This result suggests that task-specific training and data curation can substitute for raw parameter count.
- **Formal proof verification**: Mathematical reasoning in AI increasingly relies on formal proof assistants (Lean, Coq, Isabelle) that provide a machine-checkable guarantee of correctness. Language models generate proof steps that are verified by the assistant, combining LLM creativity with formal rigor to avoid plausible-sounding but incorrect proofs.
- **Reasoning models and inference-time scaling**: Modern reasoning models (OpenAI o1, DeepSeek-R1) use chain-of-thought prompting and process reward models to tackle multi-step math problems at inference time. Small models with proper inference-time compute scaling can match or exceed much larger models on mathematical benchmarks, making efficient reasoning a key research frontier.
- **Inverse scaling on complex tasks**: Apple research has shown that reasoning models may fail to develop genuinely generalizable problem-solving ability—performance can collapse beyond a certain complexity threshold, and longer chains of reasoning sometimes decrease accuracy. This suggests mathematical reasoning remains a meaningful frontier where current methods have clear limits.
- **Connecting continuous and discrete**: Mathematical reasoning spans two worlds—continuous analysis (infinitesimals, limits, calculus) and discrete logic (proofs, combinatorics). LLMs currently perform better on computational math than formal proofs, but hybrid approaches combining neural generation with formal verification are closing the gap.

## Related Concepts

- [[infinitesimals]]
- [[reasoning-llms]]
- [[process-reward-models]]
- [[theorem-proving]]
- [[chain-of-thought]]

## Sources

- [[infinitesimals]]
- [[lm-provers]]
- [[on-different-degrees-of-smallness]]
- [[qed-nano-teaching-tiny-model]]
