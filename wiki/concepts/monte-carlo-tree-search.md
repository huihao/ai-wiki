---
created: 2026-04-29
updated: 2026-05-09
tags: [algorithms]
sources: 1
---

# Monte Carlo Tree Search

## Definition

Monte Carlo Tree Search (MCTS) is a search algorithm that combines tree exploration with random sampling to find optimal decisions in large decision spaces. Originally famous for game-playing AI (Go, Chess), MCTS has been adapted for inference-time compute scaling in LLMs, where it explores multiple reasoning paths to find better solutions.

## Key Aspects

- **Tree exploration with random sampling**: MCTS builds a search tree by simulating many random trajectories from each candidate node, using statistics to guide exploration
- **Four phases**: Selection (traverse tree using UCB1), Expansion (add new node), Simulation (random rollout to terminal), Backpropagation (update statistics)
- **Inference-time scaling application**: Applied to LLM reasoning through Chain-of-Associated-Thoughts (CoAT), combining MCTS with associative memory for better reasoning paths
- **Best-of-N selection**: Process reward models evaluate multiple MCTS-generated candidates to select the best reasoning chain
- **Budget forcing interaction**: MCTS can be combined with token budgets to control exploration depth vs. breadth trade-offs
- **DeepSeek R1 perspective**: Categorized MCTS-based scaling as "unsuccessful attempts" in their training, though these techniques can be incorporated at the application layer
- **Complementary to chain-of-thought**: While CoT generates linear reasoning, MCTS explores branching alternatives, potentially finding non-obvious solution paths
- **Computational cost**: Requires running the model many times per decision, making it expensive but potentially more effective than single-pass reasoning

## Related Concepts

- [[reasoning-llms]]
- [[inference-time-compute-scaling]]
- [[chain-of-thought]]
- [[process-reward-models]]

## Sources

- [[the-state-of-llm-reasoning-model-inference]]
