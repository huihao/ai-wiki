---
created: 2026-04-28
updated: 2026-05-09
tags: [llm, pretraining, training]
sources: 3
---

# Next-word prediction

## Definition

Next-word prediction is the fundamental training objective for autoregressive language models like [[gpt]]. Given a sequence of tokens, the model is trained to predict the probability distribution over the next token in the sequence. Despite its simplicity, this objective forces the model to learn rich statistical patterns, grammar, syntax, semantics, and factual knowledge from massive text corpora. The model's weights, particularly in the [[embedding-layers]], become semantically meaningful representations as a byproduct of this training. Next-word prediction is optimized using [[cross-entropy-loss]] and scaled to billions of parameters across trillions of tokens.

## Key Proponents / Critics

- [[ilya-sutskever]] — argued that predicting the next word, at sufficient scale, leads to emergent intelligence
- [[andrej-karpathy]] — has produced influential educational content explaining how next-word prediction works
- [[sebastian-raschka]] — has published detailed walkthroughs of implementing next-word prediction training
- [[stephen-boyd]] — mathematician whose optimization work supports the mathematical foundations of this training objective

## Related Concepts

- [[gpt]] — the model family whose success demonstrated the power of next-word prediction
- [[transformers]] — the neural network architecture used for next-word prediction
- [[cross-entropy-loss]] — the loss function used to optimize next-word prediction
- [[autoregressive-models]] — the class of models that generate text by predicting one token at a time
- [[tokenization]] — the process of segmenting text into tokens that the model predicts
- [[context-window]] — limits how many preceding tokens are available for the model to make its prediction
- [[language-modeling]] — the broader task of which next-word prediction is the core mechanism
- [[teacher-forcing]] — the training technique where the true previous token is fed as input
- [[embedding-layers]] — learns semantically meaningful representations as a byproduct of next-word prediction
- [[temperature-parameter]] — controls the randomness of sampling from the predicted next-token distribution
- [[top-k-sampling]] — sampling strategy applied to the predicted next-token distribution
- [[top-p-sampling]] — nucleus sampling applied to predicted next-token distributions

## Related Entities

- [[openai]] — pioneered scaling next-word prediction to produce GPT-3 and ChatGPT
- [[anthropic]] — uses next-word prediction as the foundation for training Claude
- [[deepseek]] — trains open-source models using the same next-word prediction paradigm
- [[google]] — trains PaLM and Gemini models on next-word prediction objectives

## Sources

- [[an-intuitive-guide-to-how-llms-work]] — intuitive walkthrough of how language models predict the next token
- [[how-llms-generate-text-conditional-probability]] — explanation of the conditional probability approach to text generation
- [[llm-text-generation-conditional-probability]] — deep dive into probabilistic token prediction

## Evolution

- **2003**: Bengio et al. introduce neural probabilistic language models, predicting the next word with neural networks
- **2013**: [[word2vec]] shows that next-word prediction objectives produce meaningful word embeddings
- **2018**: GPT-1 demonstrates that pre-training via next-word prediction transfers effectively to downstream NLP tasks
- **2020**: GPT-3 shows that scaling next-word prediction to 175B parameters produces emergent few-shot capabilities
- **2022**: ChatGPT demonstrates that next-word prediction, combined with [[reinforcement-learning-from-human-feedback]], produces conversational AI
- **2023-2025**: The paradigm persists as the foundation for all frontier autoregressive language models
