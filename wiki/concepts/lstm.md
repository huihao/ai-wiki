---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# LSTM

## Definition

Long Short-Term Memory (LSTM) — a special kind of Recurrent Neural Network (RNN) capable of learning long-term dependencies. Introduced by Hochreiter & Schmidhuber (1997), refined and popularized by many researchers.

## Architecture

**Core innovation: cell state** — horizontal line running through top of diagram, acting as conveyor belt. Information flows unchanged along chain with minimal linear interactions.

**Three gates regulate cell state**:

1. **Forget Gate** (sigmoid layer):
   - Looks at h_{t-1} and x_t, outputs 0-1 for each number in cell state C_{t-1}
   - 1 = "completely keep this", 0 = "completely get rid of this"
   - Example: language model forgetting old subject gender when new subject appears

2. **Input Gate** (two parts):
   - Sigmoid layer: decides which values to update
   - Tanh layer: creates vector of new candidate values C̃_t to add
   - Example: adding new subject gender to replace forgotten one

3. **Output Gate**:
   - Sigmoid: decides what parts of cell state to output
   - Tanh (push values to -1 to 1) × sigmoid gate: output filtered version
   - Example: outputting singular/plural info for upcoming verb conjugation

## Step-by-Step Process

1. Forget irrelevant information from cell state
2. Decide what new information to store (input gate + candidate values)
3. Update old cell state C_{t-1} → new cell state C_t (forget × old + input × candidate)
4. Output filtered cell state based on current context

## Variants

- **Peephole Connections** (Gers & Schmidhuber 2000): Gate layers look at cell state
- **Coupled Forget and Input Gates**: Forget only when inputting new information
- **Gated Recurrent Unit (GRU)** (Cho et al. 2014): Simplified version combining forget/input into single "update gate", merging cell and hidden states
- Comparative studies (Greff et al. 2015): variants roughly equivalent in performance

## Key Insight

LSTMs explicitly designed to avoid long-term dependency problem. Remembering information for long periods is their default behavior, not something they struggle to learn like standard RNNs.

## Problem Solved

- Standard RNNs: struggle connecting information when gap between relevant info and usage point is large
- Example: "I grew up in France... I speak fluent French" requires distant context
- LSTMs: handle such long-term dependencies naturally

## Applications

- Speech recognition
- Language modeling
- Machine translation
- Image captioning
- Text generation

## Historical Context

- 2015: "almost all exciting results based on recurrent neural networks are achieved with [LSTMs]" (Olah)
- Post-2017: Transformers (attention mechanisms) largely replaced RNNs/LSTMs for most NLP tasks
- LSTMs still relevant for: real-time sequential data, time series, small datasets

## Related Concepts

- [[Recurrent Neural Network]]
- [[Attention Mechanism]]
- [[Deep Learning]]
- [[Neural Network]]
- [[GRU]]

## Related Entities

- [[christopher-olah|Christopher Olah]]
- [[jurgen-schmidhuber|Jürgen Schmidhuber]]
- [[Sepp Hochreiter]]

## Sources

- [[understanding-lstm-networks|Understanding LSTM Networks]] — Christopher Olah's classic visual explanation with gate mechanics, variants, and future directions

## Evolution

- 1997: Hochreiter & Schmidhuber introduce LSTM
- 2000-2014: Variants (peephole, coupled gates, GRU)
- 2015: LSTMs dominate RNN applications
- 2017+: Transformers with attention supersede for most NLP tasks
- Present: LSTMs remain useful for specific sequential processing domains