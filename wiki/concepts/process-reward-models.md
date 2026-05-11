---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 4
---

# Process Reward Models

## Definition

Process Reward Models (PRMs) are reward models that evaluate and score each individual step in an LLM's chain-of-thought reasoning process, rather than judging only the final answer. By providing step-level feedback during reinforcement learning or inference-time search, PRMs guide reasoning models toward logically sound intermediate steps, enabling more reliable multi-step problem solving on complex tasks like mathematics and code generation.

## Key Aspects

- **Step-level vs. outcome-level evaluation**: Outcome Reward Models (ORMs) assign a single reward based on whether the final answer is correct. PRMs instead score every intermediate reasoning step, catching errors early and providing finer-grained training signal—critical for long chains of thought where a single early mistake invalidates all subsequent reasoning.
- **Core training method for reasoning models**: PRMs are a central tool in the RL-based training of reasoning models (OpenAI o1, DeepSeek-R1, Claude). During training, the model generates multiple reasoning paths, and the PRM scores each step, reinforcing paths with high step-level rewards and suppressing paths with logical errors.
- **Used in inference-time search**: At inference time, PRMs drive search strategies such as best-of-N sampling, beam search, and Monte Carlo Tree Search (MCTS). By scoring intermediate steps, the system can prune bad reasoning paths early and allocate more computation to promising ones.
- **Alternative: rules-based rewards**: DeepSeek-R1-Zero demonstrated that simple rules-based rewards (accuracy checks plus formatting rules) can sometimes substitute for a learned PRM, avoiding the complexity and annotation cost of step-level labeling—though this approach may be less effective for tasks requiring subtle logical judgment.
- **Enables inference-time compute scaling**: PRMs are a key component of inference-time compute scaling, where additional computation at test time improves reasoning without changing model weights. The quality of step-level scoring directly determines how efficiently search-based methods can find correct solutions.
- **Annotation cost trade-off**: Building high-quality PRMs requires human-annotated datasets of reasoning steps rated for correctness, which is expensive and labor-intensive. Research into automated PRM generation—using model self-consistency checks or outcome-based proxies—aims to reduce this bottleneck.

## Related Concepts

- [[reasoning-llms]]
- [[inference-time-compute-scaling]]
- [[outcome-reward-models]]
- [[chain-of-thought]]
- [[reinforcement-learning-from-human-feedback]]

## Sources

- [[inference-time-compute-scaling]]
- [[reasoning-llms]]
- [[the-state-of-llm-reasoning-model-inference]]
- [[what-is-a-reasoning-model]]
