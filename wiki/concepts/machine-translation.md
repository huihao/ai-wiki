---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Machine Translation

## Definition

Machine translation is the task of automatically translating text from one language to another, which served as the motivating application for the transformer architecture introduced in "Attention Is All You Need" (2017). Transformers replaced RNNs and CNNs for translation by using self-attention to directly model relationships between all words in a sentence, achieving state-of-the-art performance on English-German and English-French benchmarks while being far more parallelizable.

## Key Aspects

- **RNN Limitations**: Sequential processing prevents parallelization; distant word dependencies require many steps, leading to vanishing gradients
- **Transformer Revolution**: Self-attention achieves O(1) operations for any position distance, compared to O(n) for RNNs; all tokens process in parallel
- **Self-Attention for Translation**: Each word attends to every other word in the sentence, capturing context regardless of distance; "bank" in "I arrived at the bank after crossing the river" immediately attends to "river"
- **Encoder-Decoder Architecture**: Encoder generates context-aware representations of the input; decoder generates output tokens one at a time, attending to both encoder output and previously generated tokens
- **Coreference Resolution**: Attention visualization shows the model correctly resolving "it" to "animal" vs. "street" based on context -- a task where older Google Translate failed
- **Performance**: Transformers outperformed recurrent and convolutional models on standard translation benchmarks while requiring less computation to train
- **Beyond Translation**: The architecture extends to parsing, question answering, summarization, and eventually all of NLP (GPT, BERT, etc.)
- **Vector Embeddings**: Translation relies on learning cross-lingual embedding spaces where semantically equivalent phrases occupy similar positions regardless of language

## Related Concepts

- [[gpt-2]]
- [[llm-embeddings]]
- [[masked-attention]]

## Sources

- [[transformer-novel-neural-network-architecture-language-understanding]]
- [[vector-embeddings]]
