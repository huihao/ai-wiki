---
created: 2026-04-28
updated: 2026-04-28
tags: [llm, prompting, reasoning]
sources: 3
---

# Chain of Thought

## Definition

A prompting technique and training methodology where language models generate intermediate reasoning steps before producing a final answer. CoT prompting ("think step by step") significantly improves performance on complex reasoning tasks. Modern reasoning models are explicitly trained to generate these "reasoning traces" as a core behavior.

## Key Proponents / Critics

- **Originators:** Jason Wei et al. — "Chain-of-Thought Prompting Elicits Reasoning in LLMs" (2022)
- **Extenders:** [[deepseek-sparse-attention|DeepSeek]] — trained models to spontaneously generate CoT via RL
- **Critics:** [[apple]] (2025) — casts doubt on whether current reasoning abilities generalize

## Key Aspects

- **Inference-time compute scaling**: CoT allows models to "think longer" by spending more tokens on intermediate steps, a core strategy in test-time scaling alongside self-consistency, beam search, and process reward models
- **Probability manipulation**: Each reasoning step is a smaller, more probable conditional distribution than jumping directly to the final answer — reducing the chance of compounding errors
- **Self-consistency**: Sample multiple reasoning paths from the same prompt and take a majority vote over final answers — simple yet effective for boosting accuracy
- **Budget forcing**: Techniques like "Wait" tokens (s1 paper) encourage self-verification by inserting special tokens that prompt the model to extend its reasoning
- **Training for CoT**: Reasoning models like DeepSeek R1 are specifically trained via RL (e.g., GRPO) to produce reliable chains of thought, not just prompted
- **Cost-performance trade-off**: CoT increases inference costs but may still be cheaper than training larger models; commercial offerings now offer toggleable "thinking" modes

## Related Concepts

- [[what-is-reasoning-model-ibm|reasoning model]] — models fine-tuned for CoT generation
- [[in-context-learning]] — CoT is a form of few-shot prompting
- [[inference-time-compute-scaling]] — CoT increases tokens used at inference
- [[self-attention|self-consistency]] — sampling multiple CoT paths and voting
- [[chain-of-thought|ToT]] — branching exploration of reasoning paths
- [[machine-learning|journey learning]] — training on both correct and incorrect reasoning paths

## Sources

- [[what-is-reasoning-model-ibm]]
- [[understanding-reasoning-llms]]
- [[what-is-chatgpt-doing-wolfram]]

## Evolution

- **2022:** "Let's think step by step" shown to dramatically improve reasoning
- **2023:** Few-shot CoT with exemplars became standard practice
- **2024:** OpenAI o1 introduced models that inherently generate long reasoning chains
- **2025:** DeepSeek-R1 showed reasoning can emerge from pure RL; journey learning explored training on incorrect paths
- **Current debate:** Whether reasoning traces faithfully reflect model's actual computation
