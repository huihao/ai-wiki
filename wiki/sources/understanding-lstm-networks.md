---
url: https://colah.github.io/posts/2015-08-Understanding-LSTMs/
author: Christopher Olah
date: 2015-08-27
---

# Understanding LSTM Networks

Classic 2015 blog post explaining Long Short-Term Memory (LSTM) networks — recurrent neural networks capable of learning long-term dependencies.

## Core Content

### Recurrent Neural Networks (RNNs)

- Traditional neural networks lack persistence: they process each input independently, throwing away previous state
- RNNs address this by introducing loops that allow information to persist across sequence processing
- Visualization: unrolled RNN chain reveals it's the natural architecture for sequence and list data
- Success applications: speech recognition, language modeling, translation, image captioning

### Long-Term Dependency Problem

- **Short gap success**: RNNs work when relevant information is close to where it's needed (e.g., "the clouds are in the sky")
- **Long gap failure**: RNNs struggle when context is far away (e.g., "I grew up in France... I speak fluent French")
- Root cause explored by Hochreiter (1991) and Bengio et al. (1994): fundamental difficulty learning long-term dependencies

### LSTM Architecture

**Core idea: cell state** — horizontal conveyor belt running through the chain with minimal linear interactions. Information flows unchanged unless gates intervene.

**Three gates regulate cell state:**

1. **Forget gate layer** (sigmoid): Decides what to throw away from cell state
   - Example: language model forgetting old subject gender when seeing new subject
   - Output 0-1 per cell state number: 1 = "keep this", 0 = "get rid of this"

2. **Input gate layer** (two parts):
   - Sigmoid layer: Decides which values to update
   - Tanh layer: Creates new candidate values to add
   - Example: adding new subject gender to replace forgotten one

3. **Output gate layer**:
   - Sigmoid: Decides what parts of cell state to output
   - Tanh (push to -1 to 1) × sigmoid gate: Output filtered version
   - Example: outputting singular/plural info for upcoming verb conjugation

### LSTM Variants

- **Peephole connections** (Gers & Schmidhuber 2000): Gates look at cell state
- **Coupled forget and input gates**: Forget only when adding new information
- **Gated Recurrent Unit (GRU)** (Cho et al. 2014): Simplified model merging forget/input gates into single "update gate", combining cell and hidden states
- Comparative studies (Greff et al. 2015, Jozefowicz et al. 2015): variants roughly equivalent, some architectures beat LSTMs on specific tasks

### Future Directions (from 2015)

- **Attention**: Let every RNN step pick information to look at from larger collection (e.g., image captioning attending to specific image regions)
- Grid LSTMs (Kalchbrenner et al. 2015)
- Generative models with RNNs (Gregor et al. 2015, Chung et al. 2015, Bayer & Osendorfer 2015)

## Key Insight

LSTMs explicitly designed to avoid long-term dependency problem. Remembering information for long periods is their default behavior, not something they struggle to learn.

## Related

- [[LSTM]]
- [[Recurrent Neural Network]]
- [[Attention Mechanism]]
- [[Deep Learning]]
- [[Neural Network]]

## Sources

- Original article: https://colah.github.io/posts/2015-08-Understanding-LSTMs/
- Referenced papers: Hochreiter & Schmidhuber (1997), Gers & Schmidhuber (2000), Cho et al. (2014), Greff et al. (2015), Jozefowicz et al. (2015)