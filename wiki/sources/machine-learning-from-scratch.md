# Machine Learning from Scratch

> Implementations of ML algorithms using only NumPy, with educational explanations.

**Source:** [GitHub - DorsaRoh/Machine-Learning](https://github.com/DorsaRoh/Machine-Learning) by DorsaRoh (August 1, 2024)

---

## Overview

Educational repository implementing core [[Machine Learning]] and [[Deep Learning]] algorithms from scratch using only [[NumPy|NumPy]]. Focus on understanding fundamentals through implementation.

---

## Neural Networks Section

### Basic Architecture

**Neuron:**
- Simple unit holding a number called its *"activation"*
- Organized into layers: Input → Hidden → Output

**Weights and Connections:**
- Each neuron connected to all neurons in next layer
- Connection strength = `weight`
- Weights adjusted during training to identify patterns

**Activation Calculation:**
```
weighted_sum = w1*a1 + w2*a2 + ... + wn*an + bias
```

**Activation Functions:**
- **ReLU (Rectified Linear Unit)** — outputs input if positive, else 0
- **Sigmoid** — normalizes output to [0, 1]

---

## Forward Propagation

Process of passing input through network:

1. Start with input layer
2. For each subsequent layer:
   - Calculate weighted sum for each neuron
   - Apply activation function
3. Repeat until output layer

---

## Loss Function

**MSE (Mean Squared Error):**
```python
def mse_loss(self, y, activations):
    return np.mean((activations-y)**2)
```

**Goal:** Minimize loss to improve network performance.

---

## Training Process

### Gradient Descent

Optimization algorithm to minimize loss function:

- Calculate gradient of loss (how changing weights/biases affects loss)
- Update weights/biases in direction that reduces loss
- Repeat many times

**Key:** Negative gradient indicates direction for most rapid loss decrease.

---

### Backpropagation

Algorithm for calculating gradients for each weight and bias:

**Chain Rule:**
```
∂C/∂w = ∂C/∂a × ∂a/∂z × ∂z/∂w
```

Where:
- C = loss/cost
- w = weight
- a = activation (output)
- z = weighted sum (input before activation)

**Interpretation:**
- Direction: Positive derivative → decrease weight to reduce error
- Magnitude: Larger derivative → weight has bigger impact on error

---

## Implementation Structure

### Classes

**Neuron:**
- Implements forward pass with ReLU
- Implements backward pass with chain rule
- Updates weights/bias based on gradients

**Layer:**
- Manages collection of neurons
- Implements forward/backward passes for entire layer

**NeuralNetwork:**
- Manages multiple layers
- Implements full training loop:
  1. Forward pass
  2. Loss calculation
  3. Backward pass (backpropagation)
  4. Weight/bias updates

---

## Example Code (Feed-Forward Multilayer Perceptron)

```python
class Neuron:
    def __init__(self, num_inputs):
        self.weights = np.random.randn(num_inputs, 1) * 0.01
        self.bias = np.zeros((1, 1))
    
    def relu(self, z):
        return np.maximum(0, z)
    
    def relu_derivative(self, z):
        return np.where(z > 0, 1, 0)
    
    def forward(self, activations):
        self.last_input = activations
        z = np.dot(activations, self.weights) + self.bias
        self.last_output = self.relu(z)
        return self.last_output
    
    def backward(self, dC_da, learning_rate):
        da_dz = self.relu_derivative(self.last_output)
        dC_dz = dC_da * da_dz
        dC_dw = np.dot(self.last_input.T, dC_dz)
        dC_db = np.sum(dC_dz, axis=0, keepdims=True)
        self.weights -= learning_rate * dC_dw
        self.bias -= learning_rate * dC_db
        return np.dot(dC_dz, self.weights.T)

class Layer:
    def __init__(self, num_neurons, num_inputs_per_neuron):
        self.neurons = [Neuron(num_inputs_per_neuron) for _ in range(num_neurons)]
    
    def forward(self, activations):
        return np.hstack([neuron.forward(activations) for neuron in self.neurons])
    
    def backward(self, output_gradient, learning_rate):
        return np.sum([neuron.backward(output_gradient[:, [i]], learning_rate) 
                       for i, neuron in enumerate(self.neurons)], axis=0)

class NeuralNetwork:
    def __init__(self, layer_sizes):
        self.layers = []
        for i in range(len(layer_sizes) - 1):
            self.layers.append(Layer(layer_sizes[i+1], layer_sizes[i]))
    
    def train(self, X, y, epochs, learning_rate, batch_size=32):
        for epoch in range(epochs):
            total_loss = 0
            for i in range(0, len(X), batch_size):
                X_batch = X[i:i+batch_size]
                y_batch = y[i:i+batch_size]
                outputs = self.forward(X_batch)
                loss = self.mse_loss(y_batch, outputs)
                total_loss += loss * len(X_batch)
                output_gradient = self.derivative_mse_loss(y_batch, outputs)
                for layer in reversed(self.layers):
                    output_gradient = layer.backward(output_gradient, learning_rate)
            avg_loss = total_loss / len(X)
            print(f"Epoch {epoch+1}/{epochs}, Loss: {avg_loss}")
```

---

## Transformers Section

### Embeddings

**Tokens:** "Little pieces" of information (words, combinations, images)

**Embedding Matrix (W_E):**
- Single column for each word
- Vector encodes meaning of that piece
- Similar meanings → vectors near each other in embedding space
- **Distributional semantics:** words used in same context → similar meanings

**Dimensions:** Can be very high (e.g., 12,288)

**Example relationship:**
```
E(man) - E(woman) ~= E(king) - E(queen)
```

---

### Positional Encoding

- Provides info about order of tokens in sequence
- Fixed positional encoding vector added to word's embedding
- **Separate from word embeddings:** Word embeddings = semantic meaning; Positional encodings = token order

---

### Softmax

Converts sequence of numbers to probability distribution:

```python
import numpy as np
seq = [2, 4, 5]
print(np.exp(seq)/np.sum(np.exp(seq)))
# [0.03511903 0.25949646 0.70538451]
```

**Properties:**
- All numbers positive [0-1] (from e^i)
- Sum of all numbers = 1

**Temperature T:** Added to denominator exponent for more creative text generation (makes outputs less extreme)

---

### Self-Attention

**Goal:** Update each token's embedding to include its context.

**Mechanism:**

Each token projected into 3 vectors:

1. **Query (Q)** — what current token is looking for
2. **Key (K)** — how token describes itself (acts as label)
3. **Value (V)** — actual information token provides

**Computation:**

```python
Q = x @ Weights_Q
K = x @ Weights_K
V = x @ Weights_V
```

---

### Attention Scores

**Similarity calculation:**
```python
score[i][j] = dot(Q_i, K_j)
```

Higher dot product → Key more relevant to Query.

**Normalization:**
```python
attention_weights = softmax(score)
```

Turns scores into probability distribution (weights sum to 1).

---

### Weighted Sum

Each token gets what it wants from others:

```python
output_i = sum over j of (W_qk[i][j] * V_j)
```

Where:
- `W_qk[i][j]` = attention weight from token i to token j
- `V_j` = Value vector of token j
- `output_i` = final context-aware embedding for token i

---

### Multi-Head Attention

Multiple attention heads running in parallel:

- Each head learns different aspects of input
- Each head has own weight matrices (W_q, W_k, W_v)
- Outputs concatenated along embedding dimension
- Final linear transformation combines insights

**Reason:** Different heads capture different types of relationships.

---

### Self-Attention Implementation

```python
from transformers import AutoTokenizer, AutoModel
import torch
from torch import nn

input_text = "Despite everything, it's still you."
tokenizer = AutoTokenizer.from_pretrained("bert-base-uncased")
input_tokens = tokenizer(input_text, return_tensors="pt")

model = AutoModel.from_pretrained("bert-base-uncased")
outputs = model(**input_tokens)
input_embeddings = outputs.last_hidden_state  # [batch, seq_len, embedding_dim]

hidden_dim = input_embeddings.shape[2]  # 768
head_dim = 64

W_q = nn.Linear(hidden_dim, head_dim, bias=False)
W_k = nn.Linear(hidden_dim, head_dim, bias=False)
W_v = nn.Linear(hidden_dim, head_dim, bias=False)

Q = W_q(input_embeddings)
K = W_k(input_embeddings)
V = W_v(input_embeddings)

K_transposed = K.transpose(-2, -1)
attention_scores = torch.matmul(Q, K_transposed)

normalize = nn.Softmax(dim=-1)
attention_weights = normalize(attention_scores / (head_dim ** 0.5))

output_tensors = torch.matmul(attention_weights, V)
```

---

### Parallelism in Transformers

**Types:**

1. **Data Parallelism (DP)** — parallelism over data
   - Shard input along batch dimension
   - Replicate model weights across devices
   - Each device processes own batch independently
   - Gather and concatenate outputs

2. **Tensor Parallelism (TP)** — parallelism over model weights
   - Shard model parameters across devices
   - Replicate input data
   - Each device computes with its weight shard
   - Gather and combine partial outputs

3. **Sequence Parallelism (SP)** — parallelism over sequence length
   - Shard input along sequence dimension
   - Reduces activation memory for LayerNorm/RMSNorm

---

### Weight Matrix Sharding

**Column Sharding:**
- Split along output dimension (columns)
- Input replicated
- Output: concatenate along last dimension

**Row Sharding:**
- Split along input dimension (rows)
- Input sharded
- Output: reduce (sum) across last dimension

---

## Key Educational Insights

**Gradient Descent:** Negative gradient = direction for fastest loss decrease.

**Backpropagation:** Chain rule calculates how each weight/bias affects loss.

**Self-Attention:** Contextual representation = weighted sum of Value vectors, weighted by Query-Key similarity.

**Multi-Head:** Parallel heads capture diverse relationship types.

**Parallelism:** Shard data or weights based on bottleneck (compute vs. memory).

---

## Related

- [[Machine Learning]] — foundational concepts
- [[Deep Learning]] — neural network architectures
- [[Transformer Architecture]] — attention mechanisms
- [[NumPy]] — implementation foundation
- [[Backpropagation]] — gradient calculation
- [[Gradient Descent]] — optimization algorithm
- [[Self-Attention]] — contextual embedding update

---

## Sources

- GitHub: [DorsaRoh/Machine-Learning](https://github.com/DorsaRoh/Machine-Learning)
