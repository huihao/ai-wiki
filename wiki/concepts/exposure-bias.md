---
created: 2026-04-29
updated: 2026-05-08
tags: [inference, llm, problem]
---

# Exposure Bias

## Definition

Exposure bias is a problem in autoregressive language model generation where, during inference, a single wrong token prediction can derail the generation process for all subsequent tokens. Because the model was trained on ground-truth token sequences but generates from its own predictions during inference, errors accumulate like a snowball effect. This is one of the key factors contributing to LLM hallucination.

## The Problem in Detail

### Training vs. Inference Mismatch

**During training** (teacher forcing):
- The model always sees the ground-truth previous token as input
- It never sees its own mistakes

**During inference** (autoregressive generation):
- The model feeds its own outputs back as inputs
- If it makes an error at step t, step t+1 sees a wrong token as context
- This compounds: errors cascade through the entire sequence

### Analogy

Like practicing a language by always hearing perfect pronunciation (training), then being thrown into a conversation with no preparation (inference) — the first stumble throws off everything after it.

## Consequences

- **Hallucination**: Model confidently generates plausible but wrong facts after a small initial error
- **Degeneration**: Repetitive or incoherent text after a mistake propagates
- **Inconsistency**: Contradictions within a single generation as errors compound

## Mitigation Strategies

### During Training
- **Scheduled Sampling**: During training, sometimes feed the model its own previous prediction instead of ground truth
- **Curriculum learning**: Gradually increase exposure to own predictions over training

### During Inference
- **Higher sampling temperature**: Adds randomness to potentially recover from wrong paths
- **Beam search**: Maintains multiple hypotheses, selecting the most probable overall
- **Self-correction**: Let the model revise its own output in a second pass

### Alternative Training
- **Non-autoregressive models**: Generate all tokens in parallel (e.g., diffusion LMs, masked language models like BERT)
- **[[reinforcement-learning-from-human-feedback|RLHF]]**: Reward model can penalize generations that diverge early

## Related Concepts

- [[teacher-forcing|Teacher Forcing]] — training technique that causes exposure bias
- [[next-word-prediction|Next-Word Prediction]] — training objective
- [[hallucination|Hallucination]] — a consequence of exposure bias

## Sources

- [[073_llms-know-about-linguistics]]
- [[teacher-forcing|Teacher Forcing]]

## Evolution

- **2015**: Bengio et al. identify exposure bias and propose scheduled sampling
- **2016–2020**: Scheduled sampling used in seq2seq models for machine translation
- **2022–2023**: With LLMs scaling up, exposure bias becomes a primary driver of hallucination research
- **Current**: Active research area; no complete solution exists — RLHF and inference-time techniques help but don't eliminate the core training/inference mismatch
