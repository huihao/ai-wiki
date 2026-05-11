---
created: 2026-04-28
updated: 2026-04-28
tags: [inference, reasoning, search]
sources: 2
---

# Tree Search for LLMs

## Definition

Tree search methods apply structured exploration (MCTS, beam search, best-of-N) to LLM reasoning, allowing models to explore multiple reasoning paths and select the best solution through process-level verification.

## Key Methods

- **Monte Carlo Tree Search (MCTS)** — AlphaZero-style tree search for LLM decoding and training
- **Beam Search** — explore top-k reasoning paths
- **Best-of-N Sampling** — generate multiple solutions, select best via reward model
- **Self-consistency** — majority voting over reasoning paths
- **Tree-of-Thought (ToT)** — explicit tree structure for reasoning
- **Forest-of-Thought** — multiple parallel reasoning trees

## Key Papers

- **AlphaZero-like Tree-Search can Guide LLM Decoding and Training** (2023)
- **Accessing GPT-4 level Mathematical Olympiad Solutions via Monte Carlo Tree Self-refine** (2024)
- **rStar-Math** — small LLMs master math via self-evolved deep thinking (2025)
- **DeepScaleR** — surpassing O1-Preview with 1.5B model by scaling RL (2025)
- **Search-o1** — agentic search-enhanced reasoning models (2025)

## Applications

- **Math reasoning** — solving competition-level problems
- **Code generation** — exploring multiple solution paths
- **Theorem proving** — LeanProgress, proof progress prediction
- **Planning** — reasoning with world models

## Trade-offs

- **Pros**: Significant accuracy improvements, systematic exploration
- **Cons**: High compute cost at inference time, requires process reward models

## Related Concepts

- [[reasoning-llms]] — reasoning models using tree search
- [[reinforcement-learning-from-human-feedback]] — training with process rewards
- [[inference-time-compute-scaling]] — test-time compute scaling
- [[chain-of-thought]] — intermediate reasoning steps

## Sources

- [[awesome-llm-post-training]] — comprehensive collection of tree search papers
- [[understanding-reasoning-llms]] — four approaches to reasoning models