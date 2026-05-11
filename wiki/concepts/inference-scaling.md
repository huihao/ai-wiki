---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 2
---

# Inference Scaling

## Definition

Inference scaling is the strategy of increasing computational resources at inference time (during model prediction) to improve output quality, rather than only scaling model size or training data. Pioneered by reasoning models like OpenAI's o1 and DeepSeek-R1, inference scaling involves generating intermediate reasoning steps (chain-of-thought traces) that consume more tokens and compute but produce more accurate results on complex tasks like mathematics and coding.

## Key Aspects

- **Test-Time Compute**: Allocating more computational budget during generation; reasoning models may consume 1,953% more tokens than standard models on average
- **Chain-of-Thought (CoT)**: Breaking complex problems into sequential reasoning steps, making each step more probable and reducing compounding errors
- **Reward Models**: Outcome Reward Models (ORM) verify final answers; Process Reward Models (PRM) score each reasoning step individually
- **Search-Based Methods**: Monte Carlo Tree Search (MCTS) and self-consistency/majority voting generate multiple reasoning paths and select the best
- **Knowledge Distillation**: Transferring reasoning capabilities from larger models to smaller ones (e.g., DeepSeek distilled to Qwen/Llama)
- **Overthinking Problem**: Reasoning models can engage in circular reasoning or consume excessive tokens on simple tasks; hybrid models with toggleable reasoning modes address this
- **Inverse Scaling**: Research shows more reasoning does not universally improve outputs; performance can degrade beyond a complexity threshold (Apple research)
- **Hybrid Models**: IBM Granite 3.2 and Claude 3.7 Sonnet offer toggleable reasoning modes for task-appropriate compute allocation

## Related Concepts

- [[llm-training-scaling]]
- [[loss-function]]
- [[hallucination]]

## Sources

- [[reasoning-llms]]
- [[what-is-a-reasoning-model]]
