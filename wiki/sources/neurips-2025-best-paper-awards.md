---
created: 2026-04-28
updated: 2026-04-28
tags: [source, neurips, best-papers, ml-research]
sources: 1
---

# Announcing the NeurIPS 2025 Best Paper Awards

## Metadata

- **Author**: NeurIPS Communications Chairs
- **Date**: 2025-11-26
- **URL**: https://blog.neurips.cc/2025/11/26/announcing-the-neurips-2025-best-paper-awards/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Announcing the NeurIPS 2025 Best Paper Awards.md`

## Summary

Official announcement of NeurIPS 2025 best paper and runner-up awards, covering 7 groundbreaking papers across diffusion theory, RL, attention, reasoning, learning theory, scaling laws, and benchmarking.

## Key Takeaways

- **4 Best Papers** (1 from Datasets & Benchmarks track) and **3 Runners-Up** selected from Main Track and Datasets & Benchmark Track.
- **Best Papers**:
  1. **Artificial Hivemind** (Jiang et al.) — Infinity-Chat dataset (26K open-ended queries, 31K human annotations) revealing intra-model repetition and inter-model homogeneity in LMs. Raises concerns about long-term risks to human creativity and value plurality.
  2. **Gated Attention for LLMs** (Qiu et al.) — Head-specific sigmoid gate after SDPA consistently improves performance, training stability, and scaling. Mitigates attention sink and enhances long-context extrapolation. Used in Qwen3-Next models.
  3. **1000 Layer Networks for Self-Supervised RL** (Wang et al.) — Scaling depth to 1024 layers in self-supervised goal-conditioned RL significantly boosts performance. Challenges assumption that RL information is insufficient to guide deep networks.
  4. **Why Diffusion Models Don't Memorize** (Bonnaire et al.) — Identifies two distinct timescales: early generalization (dataset-independent) and later memorization (linear in dataset size). Creates a growing window for effective generalization via implicit dynamical regularization.
- **Runners-Up**:
  1. **Does RL Really Incentivize Reasoning Beyond Base Model?** (Yue et al.) — Critical negative finding: RLVR improves sampling efficiency but does NOT expand reasoning capacity beyond what's already in the base model. Base models achieve higher pass@k at large k.
  2. **Optimal Mistake Bounds for Transductive Online Learning** (Chase et al.) — Resolves 30-year-old open problem. Proves transductive mistake bound is Θ(√d) for Littlestone dimension d, establishing quadratic gap between transductive and standard online learning.
  3. **Superposition Yields Robust Neural Scaling** (Liu et al.) — Representation superposition (more features than dimensions) is a key contributor to neural scaling laws. Open-source LLMs operate in strong superposition regime with loss scaling inversely with dimension.

## Entities Mentioned

- [[neurips]] — conference
- Liwei Jiang — Artificial Hivemind lead author
- [[yejin-choi]] — Artificial Hivemind co-author
- Yulia Tsvetkov — Artificial Hivemind co-author
- Zihan Qiu — Gated Attention lead author
- [[from-kevin-bacon-to-hnsw|Kevin Wang]] — 1000 Layer RL lead author
- Benjamin Eysenbach — 1000 Layer RL co-author
- [[tony-alicea|Tony Bonnaire]] — Diffusion Memorization lead author
- Giulio Biroli — Diffusion Memorization co-author
- Marc Mezard — Diffusion Memorization co-author
- Yang Yue — RLVR Reasoning lead author
- Ziming Liu — Superposition Scaling lead author
- Jeff Gore — Superposition Scaling co-author
- [[qwen]] — Qwen3-Next models using gated attention

## Concepts Mentioned

- [[llm-leaderboard-artificial-analysis|Artificial Hivemind Effect]] — intra/inter-model homogeneity in open-ended generation
- [[self-attention|Gated Attention]] — sigmoid gating after SDPA for improved LLM performance
- [[self-attention|Attention Sink]] — phenomenon mitigated by gated attention
- [[reinforcement-learning-from-human-feedback|Self-Supervised Reinforcement Learning]] — goal-conditioned RL without demonstrations
- [[how-to-scale-your-model|Diffusion Model Generalization]] — implicit dynamical regularization preventing memorization
- RLVR — Reinforcement Learning with Verifiable Rewards
- [[machine-learning|Transductive Online Learning]] — learning with advance access to unlabeled data
- [[llm-context-scaling-512-to-2m|Neural Scaling Laws]] — power-law decrease of loss with model size
- Representation Superposition — overlapping feature representations
- Littlestone Dimension — complexity measure for online learning

## Raw Notes

- Best Paper Award Committee: Jacob Andreas, Sander Dieleman, Dilek Hakkani-Tur, Brian Kingsbury, Mirella Lapata, Vincent Lepetit, Ulrich Paquet, Violet Peng, Doina Precup, Masashi Sugiyama, Vincent Tan, Yee Whye Teh, Xing Xie, Luke Zettlemoyer.
- The diversity of topics demonstrates the vibrant and multifaceted nature of ML research.

## Questions / Follow-ups

- How will the gated attention mechanism be adopted by other model families beyond Qwen?
- What new RL paradigms might emerge in response to the finding that RLVR doesn't expand reasoning capacity?
