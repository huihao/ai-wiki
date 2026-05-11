---
created: 2026-04-27
updated: 2026-04-27
tags: [frontier, llm]
sources: 4
---

# Reasoning LLMs

## Definition

Large language models that employ extended test-time compute — chain-of-thought reasoning, lookahead search, or reinforcement learning — to solve complex problems. Rather than generating an answer in a single pass, reasoning models "think longer" at inference time, often producing intermediate reasoning steps before a final answer.

More precisely: reasoning = answering questions that require complex, multi-step generation with intermediate steps. Factual QA ("What is the capital of France?") is not reasoning. Solving a math competition problem or debugging a tricky code bug is.

## Key Proponents / Critics

- **Leading labs**: [[openai]] (o1, o3), [[deepseek-sparse-attention|DeepSeek]] (R1, R1-Zero, R1-Distill), [[alibaba]] (QwQ, QVQ), [[answer-ai-source|Fireworks AI]] (f1)
- **Key researchers**: [[sebastian-raschka]], Noam Brown, Denny Zhou, Shunyu Yao
- **Key papers**: *Let's Verify Step By Step* (2023), *s1: Simple test-time scaling* (2025), *STaR* (Self-Taught Reasoner)
- **Critics / Skeptics**: Some argue reasoning is just search over latent thoughts; others question whether gains justify compute cost.

## Four Approaches to Building Reasoning Models

Based on [[sebastian-raschka]]'s analysis of the DeepSeek R1 pipeline:

1. **[[inference-time-compute-scaling]]** — No training required. Methods: CoT prompting, majority voting, beam/search with process reward models. Increases per-query cost but improves already-strong models. Suspected major component of OpenAI o1/o3.
2. **Pure Reinforcement Learning** — DeepSeek-R1-Zero skipped SFT entirely and trained the V3 base model with RL using accuracy + format rewards. Produced the famous "Aha!" moment where reasoning emerged spontaneously. More of a research milestone than a practical top performer.
3. **SFT + RL** — DeepSeek-R1 used R1-Zero to generate "cold-start" SFT data, then instruction-tuned + RL with consistency rewards. Additional 600K CoT + 200K knowledge SFT samples, then final RL. This is the blueprint for high-performance open-weight reasoning models.
4. **Pure SFT / Distillation** — Smaller models (Llama 8B/70B, Qwen 0.5B–32B) trained on the same SFT data as R1. Surprisingly strong. More effective than pure RL for smaller models. Sky-T1 achieved o1-parity at $450 with 17K samples.

## Trade-offs

- **Strengths**: Excel at puzzles, advanced math, coding challenges, multi-step planning.
- **Weaknesses**: More expensive per query, verbose, prone to "overthinking," unnecessary for simple tasks (summarization, translation, knowledge QA).
- **Rule of thumb**: Use the right tool for the task. Not everything needs a reasoning model.

## Key Implementations

- **OpenAI o1/o3**: Reasoning effort adjustable (low/medium/high)
- **DeepSeek-R1**: Open-source model with transparent training methodology
- **Claude 3.7 Sonnet**: API users control thinking duration
- **IBM Granite 3.2**: Toggleable reasoning mode for efficiency
- **Google Gemini**: Thinking budget parameterization

## Training Methods

### Reinforcement Learning
- **Outcome Reward Models (ORM)**: Reward based on final answer accuracy
- **Process Reward Models (PRM)**: Score each reasoning step individually
- **Rules-Based Rewards**: Simple verification (formatting, accuracy) without reward models
- DeepSeek-R1-Zero: Pure RL with no prior instruction, model discovers reasoning naturally

### Supervised Fine-Tuning
- Knowledge distillation from larger reasoning models
- Synthetic data generation from high-quality reasoning traces
- Self-improvement bootstrapping (STaR, ReST)

### Search-Based Methods
- Monte Carlo Tree Search (MCTS): Explore multiple reasoning paths
- Self-consistency: Majority voting across multiple outputs
- Best-of-N sampling: Generate multiple outputs, select highest-quality

## Prompting Tips

- **Zero-shot > few-shot** for reasoning models (contrary to traditional LLM best practices).
- **Direct problem description wins** — state the problem and desired output format simply; avoid complex prompting patterns.
- **Language consistency matters** — mixed-language prompts cause mixed-language reasoning chains.

## Related Concepts

- [[chain-of-thought]] — foundational technique
- [[reinforcement-learning-from-human-feedback|RLHF]] — training methodology
- [[inference-time-compute-scaling|Test-Time Compute]] — the key scaling dimension for reasoning models
- [[llm-agents]] — reasoning models often used as the "brain" of agent systems
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Benchmarks and Evaluation]] — math competitions (AIME, FrontierMath) are key evals
- [[supervised-fine-tuning|SFT]] — core technique in building reasoning models
- [[on-policy-distillation-source|Distillation]] — cost-effective way to create smaller reasoning models
- [[pytorch|Process Reward Models]] — guide search during inference-time scaling

## Sources

- [[ai-engineering|The 2025 AI Engineering Reading List]] — identifies reasoning models as the 2025 frontier
- [[understanding-reasoning-llms]] — comprehensive technical deep-dive into the four approaches, DeepSeek R1 case study, and low-budget alternatives
- [[what-is-reasoning-model-ibm|What Is a Reasoning Model?]] — IBM overview of training methods, reward signals, and limitations
- [[state-of-llm-reasoning-raschka|State of LLM Reasoning]] — Sebastian Raschka's survey of the reasoning landscape
- [[awesome-llm-post-training]] — curated collection of post-training papers, benchmarks, frameworks

## Evolution

- **2023**: *Let's Verify Step By Step* establishes process reward models as a way to train reasoning.
- **2024**: OpenAI launches o1-preview, demonstrating that test-time scaling can dramatically improve performance on hard reasoning tasks. DeepSeek-V3 released as a 671B MoE base model.
- **2025**: DeepSeek-R1 (Jan) shows open-weight models can match o1. Sky-T1 ($450) and TinyZero (3B, <$30) prove core ideas are replicable on tiny budgets. QwQ, QVQ, f1 expand the ecosystem. By mid-2025 reasoning models dominate the frontier LLM landscape.
