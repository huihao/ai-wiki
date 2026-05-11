---
created: 2026-04-29
updated: 2026-05-09
tags: [ai, mathematics]
sources: 2
---

# Theorem Proving

## Definition

Automated theorem proving is the task of generating machine-verifiable mathematical proofs using formal proof assistants (such as Lean 4, Coq, or Isabelle). Language models are increasingly applied to this domain, generating proof steps that are checked by the underlying proof assistant for correctness, with the goal of achieving fully automated formal verification of mathematical statements.

## Key Aspects

- QED-Nano demonstrates that a 4 billion parameter model can prove Olympiad-level mathematical theorems, challenging the assumption that massive scale is required for complex proof generation
- Gödel-Code-Prover uses hierarchical proof search with recursive lemma decomposition and iterative completion, achieving 62% prove success across benchmarks (2.6x improvement over baselines)
- The decomposition score drives both inference candidate selection and RL training reward, creating a unified framework for proof strategy
- Average verified problems require 8-17 auxiliary lemmas and 130+ lines of proof, highlighting the multi-step nature of formal verification
- QuickCheck random testing filters incorrect decomposition candidates before they consume expensive proof assistant resources
- Knowledge distillation from frontier models to smaller specialized provers (like QED-Nano) represents an efficient path to capable theorem provers
- Training combines supervised fine-tuning on frontier-model trajectories with hybrid RL (GRPO for decomposition, SFT replay for completion)
- Formal verification has applications beyond mathematics: software correctness, hardware verification, and smart contract auditing

## Related Concepts

- [[formal-verification]]
- [[reasoning-llms]]
- [[small-language-models]]

## Sources

- [[qed-nano-teaching-tiny-model]]
- [[goedel-code-prover-hierarchical-proof-search]]
