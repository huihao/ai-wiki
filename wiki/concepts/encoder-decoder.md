---
type: "concept"
tags: [architecture, neural-network, sequence-model]
---

# Encoder-Decoder Architecture

A neural network architecture designed for sequence-to-sequence tasks, where input and output sequences have different lengths. Fundamental to translation, summarization, and other transformation tasks.

## Structure

### Encoder

- Processes input sequence sequentially
- Generates compressed representation (hidden state)
- Often uses RNN variants (GRU, LSTM) for long sequences

### Decoder

- Takes encoder's hidden state as initial context
- Generates output sequence step-by-step
- Often trained with teacher forcing (using previous output as input)

## Evolution

### Basic RNN Encoder-Decoder

- Single fixed-length hidden state
- Information loss for long sequences
- Gradient issues (vanishing/exploding)

### With Attention Mechanism

- Context vector plugs encoder-decoder gap
- Decoder can access all encoder states
- Solves fixed-length bottleneck
- See [[attention-mechanisms]]

### Transformer Architecture

- Encoder-decoder without RNNs
- Self-attention replaces sequential processing
- Parallel computation possible
- [[transformers]]

## Applications

- Machine translation
- Text summarization
- Image captioning
- Question answering
- Speech recognition

## Key Insight

The encoder-decoder separation allows handling arbitrary input/output length mappings, crucial for tasks where source and target sequences differ significantly.

## Related Concepts

- [[attention-mechanisms]]
- [[gru]]
- [[lstm]]
- [[transformers]]
- [[teacher-forcing]]