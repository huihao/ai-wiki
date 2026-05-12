---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Announcing the NeurIPS 2025 Best Paper Awards

## Metadata

- **Author**: Communications Chairs
- **Date**: 2025-11-26
- **URL**: https://blog.neurips.cc/2025/11/26/announcing-the-neurips-2025-best-paper-awards/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/Announcing the NeurIPS 2025 Best Paper Awards.md

## Summary

Announcement of NeurIPS 2025 Best Paper Awards recognizing seven groundbreaking papers across diffusion model theory, self-supervised reinforcement learning, attention mechanisms, reasoning capabilities, online learning theory, neural scaling laws, and benchmarking methodologies. The awards span four best papers (including one from datasets & benchmarks track) and three runner-ups, highlighting advances across generative modeling, RL, NLP, learning theory, neural scaling, and AI benchmarking.

## Key Takeaways

- Four Best Paper Awards:
  1. **Artificial Hivemind** (Infinity-Chat dataset) — Reveals LLM homogeneity crisis in open-ended generation, introducing 26K diverse queries with 31K human annotations, demonstrating intra-model repetition and inter-model homogenization that threatens long-term creativity and value plurality
  2. **Gated Attention for Large Language Models** — Simple sigmoid gating after scaled dot-product attention consistently improves performance, enhances training stability, mitigates attention sink, and enables long-context extrapolation; validated across 30 variants on 15B MoE and 1.7B dense models with 3.5T tokens
  3. **1000 Layer Networks for Self-Supervised RL** — Challenges assumption that RL can't train deep networks; demonstrates 1024-layer networks significantly boost self-supervised RL performance in goal-reaching tasks without demonstrations or rewards, revealing depth as critical scaling factor
  4. **Why Diffusion Models Don't Memorize** — Identifies two timescales in diffusion training: early generalization phase (dataset-independent) and later memorization phase (linear in dataset size), revealing implicit dynamical regularization that prevents memorization in overparameterized settings through expanding generalization window
- Three Runner-Up Awards:
  1. **Does RL Really Incentivize Reasoning Capacity in LLMs?** — Masterfully executed negative finding: RLVR enhances sampling efficiency but doesn't expand reasoning capacity beyond base models; RL narrows exploration while rewarded trajectories are amplified, suggesting need for new RL paradigms
  2. **Optimal Mistake Bounds for Transductive Online Learning** — Breakthrough resolving 30-year-old open problem; proves tight Ω(√d) mistake bound for transductive online learning, establishing quadratic gap vs. standard online learning, using sophisticated adversary strategy and innovative "sparse encoding" hypothesis class construction
  3. **Superposition Yields Robust Neural Scaling** — Demonstrates representation superposition (more features than dimensions) as primary mechanism governing neural scaling laws; under strong superposition, loss scales inversely with model dimension across broad frequency distributions, confirmed in open-source LLMs and Chinchilla laws

## Entities Mentioned

- [[neurips-2025|NeurIPS 2025]] — Conference awarding best papers in machine learning research
- [[liwei-jiang|Liwei Jiang]] — Lead author of Artificial Hivemind paper
- [[yejin-choi|Yejin Choi]] — Senior author of Artificial Hivemind paper
- [[zihan-qiu|Zihan Qiu]] — Lead author of Gated Attention paper
- [[junyang-lin|Junyang Lin]] — Senior author of Gated Attention paper (Qwen team)
- [[kevin-wang|Kevin Wang]] — Lead author of 1000 Layer Networks for Self-Supervised RL paper
- [[benjamin-eysenbach|Benjamin Eysenbach]] — Senior author of 1000 Layer Networks paper
- [[tony-bonnaire|Tony Bonnaire]] — Lead author of diffusion memorization paper
- [[marc-mezard|Marc Mezard]] — Senior author of diffusion memorization paper
- [[yang-yue|Yang Yue]] — Lead author of RL reasoning paper
- [[gao-huang|Gao Huang]] — Senior author of RL reasoning paper
- [[zachary-chase|Zachary Chase]] — Lead author of transductive learning paper
- [[shay-moran|Shay Moran]] — Co-author of transductive learning paper
- [[yizhou-liu|Yizhou Liu]] — Lead author of superposition scaling paper
- [[jeff-gore|Jeff Gore]] — Senior author of superposition scaling paper
- [[infinity-chat|Infinity-Chat]] — Dataset introduced in Artificial Hivemind paper (26K queries, 31K annotations)
- [[qwen3-next|Qwen3-Next]] — Model family implementing gated attention mechanism
- [[best-paper-award-committee|Best Paper Award Committee]] — 14-member committee selecting awardees (Jacob Andreas, Sander Dieleman, Doina Precup, Yee Whye Teh, etc.)

## Concepts Mentioned

- [[artificial-hivemind|Artificial Hivemind]] — Phenomenon of LLM output homogenization (intra-model repetition + inter-model homogeneity)
- [[open-ended-generation|Open-Ended Generation]] — LLM responses to queries with multiple plausible answers and no single ground truth
- [[gated-attention|Gated Attention]] — Sigmoid gating applied after scaled dot-product attention to improve performance and stability
- [[attention-sink|Attention Sink]] — Phenomenon where attention mechanisms disproportionately weight certain tokens
- [[self-supervised-reinforcement-learning|Self-Supervised Reinforcement Learning]] — RL training without demonstrations or explicit rewards
- [[deep-network-scaling-in-rl|Deep Network Scaling in RL]] — Using very deep networks (1000+ layers) to boost RL performance
- [[diffusion-model-memorization|Diffusion Model Memorization]] — Study of when and why diffusion models transition from generalization to memorization
- [[implicit-dynamical-regularization|Implicit Dynamical Regularization]] — Training dynamics that naturally prevent overfitting without explicit regularization
- [[rlvr-limitations|RLVR Limitations]] — Finding that RL with Verifiable Rewards doesn't expand reasoning capacity beyond base models
- [[transductive-online-learning|Transductive Online Learning]] — Online learning with advance access to unlabeled instance sequence
- [[optimal-mistake-bounds|Optimal Mistake Bounds]] — Tight theoretical bounds on learning mistakes (Ω(√d) for transductive case)
- [[representation-superposition|Representation Superposition]] — LLMs representing more features than they have dimensions
- [[scaling-laws|Neural Scaling Laws]] — Empirical patterns where loss decreases as power law with model/dataset/compute size
- [[llm-diversity-evaluation|LLM Diversity Evaluation]] — Benchmarking language model output variety and heterogeneity
- [[mode-collapse-in-llms|Mode Collapse in LLMs]] — Tendency of LLMs to generate similar outputs repeatedly

## Raw Notes

The Artificial Hivemind paper addresses critical AI safety concern: repeated exposure to homogeneous LLM outputs could homogenize human thought long-term. Infinity-Chat provides first large-scale resource for studying open-ended queries. The committee emphasized that current reward models and automated judges are miscalibrated to diverse human preferences. Gated Attention finding is easily implementable and expected to be widely adopted; the extensive evidence (30 variants, 3.5T tokens) makes it highly credible. The 1000 Layer Networks paper overturns conventional assumption that RL information is insufficient for deep networks, introducing novel paradigm. Diffusion memorization paper provides rigorous theory (random matrix theory, spectral analysis) explaining practical success. RL reasoning paper delivers important negative finding challenging widely accepted assumption, incentivizing new RL paradigms. Transductive learning paper's proof techniques are remarkable: adversary balances forcing mistakes with version space management, upper bound uses "sparse encoding" design and "Danger Zone Minimization." Superposition paper identifies geometric overlaps in strong superposition regime as scaling driver.

## Questions / Follow-ups

- How will gated attention adoption impact next-generation LLM architectures?
- What new RL paradigms can genuinely expand reasoning capacity beyond base model bounds?
- Can Infinity-Chat benchmark drive development of diversity-preserving alignment methods?