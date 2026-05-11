---
created: 2026-04-28
updated: 2026-05-09
tags: [classification, loss-function, optimization]
sources: 3
---

# Cross-entropy loss

## Definition

Cross-entropy loss is a loss function widely used in classification tasks and language modeling that measures the dissimilarity between a predicted probability distribution and the true distribution of labels. When the model predicts a probability for each class, cross-entropy loss penalizes confident incorrect predictions exponentially more than uncertain ones. In [[next-word-prediction|language modeling]], cross-entropy loss measures how well the model's predicted token distribution matches the actual next token. It is derived from [[information-theory]] and is mathematically equivalent to maximizing the log-likelihood of the correct class under the predicted distribution.

## Key Proponents / Critics

- [[geoffrey-hinton]] — co-author of foundational work on using cross-entropy for training neural networks
- [[yoshua-bengio]] — contributor to deep learning methodology including loss function design
- [[jurgen-schmidhuber]] — researcher whose work on LSTM training involved cross-entropy optimization

## Related Concepts

- [[loss-function]] — cross-entropy is one of the most important loss functions in deep learning
- [[softmax]] — cross-entropy loss is typically paired with a softmax output layer to produce probability distributions
- [[logits-masking]] — cross-entropy over masked logits is used in transformer attention computation
- [[gradient-descent]] — cross-entropy provides gradients used by gradient descent for weight updates
- [[information-theory]] — cross-entropy is a core concept in information theory measuring surprise
- [[entropy]] — cross-entropy is the expected value of the negative log-probability under the true distribution
- [[kl-divergence]] — cross-entropy equals the entropy of the true distribution plus the KL divergence from true to predicted
- [[next-word-prediction]] — the training objective for autoregressive LLMs uses cross-entropy loss
- categorical-crossentropy — the specific form of cross-entropy used for multi-class classification

## Related Entities

- [[pytorch]] — provides `nn.CrossEntropyLoss` as a standard loss function
- [[tensorflow]] — provides `tf.keras.losses.CategoricalCrossentropy` and `SparseCategoricalCrossentropy`

## Sources

- [[essential-ml-equations]] — mathematical foundations including cross-entropy loss formulation
- [[deep-learning-fundamentals]] — covers cross-entropy as a core loss function for classification
- [[machine-learning-glossary]] — glossary entry defining cross-entropy and related terms

## Evolution

- **1948**: Claude Shannon introduces entropy in [[information-theory]], laying the mathematical foundation
- **1989**: Cross-entropy loss applied to neural network training, replacing mean squared error for classification
- **1990s**: Becomes the standard loss function for classification tasks in connectionist models
- **2006**: Hinton's deep learning resurgence uses cross-entropy for training deep belief networks
- **2017**: Cross-entropy becomes the primary training objective for [[transformers]] models
- **2018-2023**: Scaling cross-entropy training on massive datasets produces GPT, BERT, and other large language models
