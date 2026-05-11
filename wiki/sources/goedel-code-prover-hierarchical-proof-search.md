---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Goedel-Code-Prover: Hierarchical Proof Search for Open State-of-the-Art Code Verification

## Metadata

- **Author**: Zenan Li, Ziran Yang, Deyuan He, Haoyu Zhao, Andrew Zhao, Shange Tang
- **Date**: 2026 (website publication)
- **URL**: https://goedelcodeprover.github.io/
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/Goedel-Code-Prover Hierarchical Proof Search for Open State-of-the-Art Code Verification.md`

## Summary

A research project proposing a hierarchical proof search framework for automated code verification in Lean 4. The system uses recursive lemma decomposition and iterative lemma completion, trained via supervised initialization and hybrid RL, achieving 62% prove success across benchmarks — a 2.6× improvement over the strongest baseline.

## Key Takeaways

- Core innovation: hierarchical proof search with recursive lemma decomposition + iterative lemma completion.
- Decomposition score drives both inference candidate selection and RL training reward.
- Model: Göedel-Code-Prover-8B, a single unified model for both decomposition and completion.
- Training: supervised fine-tuning on frontier-model trajectories, then hybrid RL (GRPO for decomposition + SFT replay for completion).
- Results: 68.8% Verina, 54.0% Clever, 62.3% AlgoVeri (overall 62.0%) — surpassing provers 4–84× larger.
- QuickCheck random testing filters incorrect decompositions; built-in quickcheck disproves 23/10/14 problems respectively.
- Average verified problem requires 8–17 auxiliary lemmas and 130+ lines of proof.

## Entities Mentioned

- [[bojie-li|Zenan Li]] — researcher
- Ziran Yang — researcher
- Shange Tang — researcher

## Concepts Mentioned

- Formal verification — machine-checkable proof of correctness
- [[phi-4-microsoft-collection|Lean 4]] — interactive theorem prover
- [[goedel-code-prover-hierarchical-proof-search|Hierarchical proof search]] — recursive decomposition + iterative completion
- [[claude-code-source-leak-harness|Code verification]] — proving code satisfies specifications
- [[grpo]] — reinforcement learning algorithm used
- QuickCheck — random testing for filtering decompositions

## Questions / Follow-ups

- Can this approach scale to larger, industrial codebases beyond algorithmic verification?
- How does the 8B model's performance compare to emerging reasoning models like o3?
