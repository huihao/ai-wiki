---
url: https://deepanshusachdeva5.medium.com/understanding-transformers-step-by-step-word-embeddings-4f4101e7c2f
author: Deepanshusachdeva
date: 2023-06-14
---

# Understanding Transformers Step by Step — Word Embeddings

Tutorial on word embeddings as first step in transformer training, focusing on Word2Vec's Continuous Bag of Words (CBOW) approach with TensorFlow implementation.

## Core Content

### One-Hot Encoding Limitations

- Sparse vectors (dimension = vocabulary size)
- Do not capture semantic relationships between words
- Computational inefficiency due to redundancy

### Learned Word Embeddings

Unsupervised learning method to capture semantic relationships:
- Example: "women" and "queen" should have significant correlation
- Benefits: paraphrasing, machine translation

### Word Embedding Types

1. Word2Vec:
   - Calculated Bag of Words (CBOW)
   - Skip Gram
2. Glove

This article focuses on CBOW.

### CBOW (Continuous Bag of Words)

**Concept**: Words have features (domain, gender, plurality, verb tense). Represent words as quantitative feature matrix (neural network weights) for similarity comparison.

**Sliding Window Technique**:
- For each sentence, define window size
- For each window, pick target word with remaining words as context
- Training data: input = context words array, output = target word
- Result: embedding matrix size (vocab size, embedding dimensions)
- Embedding dimensions = hyperparameter (number of features)

### TensorFlow Implementation

```python
import tensorflow as tf
import numpy as np
from tensorflow.keras.preprocessing.sequence import pad_sequences

# Sample sentences
sentences = [
    ["I", "love", "chocolate"],
    ["I", "love", "ice", "cream"],
    ["I", "enjoy", "playing", "tennis"]
]

# Create vocabulary and mappings
vocab = set([word for sentence in sentences for word in sentence])
word2idx = {word: idx for idx, word in enumerate(vocab)}
idx2word = {idx: word for idx, word in enumerate(vocab)}
vocab_size = len(vocab)

# Generate training data with sliding window
window_size = 4
train_data = []
for sentence in sentences:
    for i, target_word in enumerate(sentence):
        context_words = [sentence[j] for j in range(
            max(0, i - window_size),
            min(i + window_size + 1, len(sentence))
        ) if j >= 0 and j != i]
        train_data.append((context_words, target_word))

# Preprocess to indices
train_inputs, train_labels = [], []
for context_words, target_word in train_data:
    context_idxs = [word2idx[word] for word in context_words]
    train_inputs.append(context_idxs)
    train_labels.append(word2idx[target_word])

train_inputs = pad_sequences(train_inputs, maxlen=window_size*2)
train_labels = np.array(train_labels)

# Define CBOW model
embedding_dim = 10
cbow_model = tf.keras.Sequential([
    tf.keras.layers.Embedding(
        input_dim=vocab_size,
        output_dim=embedding_dim,
        input_length=window_size*2
    ),
    tf.keras.layers.Flatten(),
    tf.keras.layers.Dense(units=vocab_size, activation='softmax')
])

# Train
cbow_model.compile(optimizer='adam', loss='sparse_categorical_crossentropy')
cbow_model.fit(train_inputs, train_labels, epochs=10, verbose=1)

# Extract learned embeddings
word_embeddings = cbow_model.get_weights()[0]
for i, embedding in enumerate(word_embeddings):
    word = idx2word[i]
    print(f"Word: {word}, Embedding: {embedding}")
```

### Production Considerations

- Sample sentences produce poor results due to small corpus
- Better results: increase number of sentences (train on large corpus like Wikipedia)
- Embedding dimensions typically larger in production (hundreds vs. 10)

## Key Insight

Word embeddings convert sparse one-hot representations into dense feature vectors that capture semantic relationships, enabling downstream NLP tasks to understand word similarity and context.

## Related

- [[Word Embedding]]
- [[Word2Vec]]
- [[Transformer Architecture]]
- [[Natural Language Processing]]

## Sources

- Original article: https://deepanshusachdeva5.medium.com/understanding-transformers-step-by-step-word-embeddings-4f4101e7c2f