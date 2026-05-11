---
created: 2026-04-30
updated: 2026-05-09
tags: [deep-learning]
sources: 6
---

# Neural Networks

## Definition

Neural networks are computational models loosely inspired by biological neural systems, consisting of interconnected layers of artificial neurons that process inputs through learned weighted transformations. Each neuron computes a weighted sum of its inputs, applies a nonlinear activation function, and passes the result forward. Through training (typically via backpropagation and gradient descent), the network adjusts its weights to minimize a loss function, enabling it to learn patterns from data. Neural networks are the foundation of modern deep learning and underpin virtually all contemporary AI systems, from image classifiers to large language models.

## Key Aspects

- **Layered architecture**: Neural networks are organized into an input layer, one or more hidden layers, and an output layer. Each layer performs a linear transformation (matrix multiplication plus bias) followed by a nonlinear activation function. The depth (number of layers) and width (number of neurons per layer) determine the network's capacity and expressiveness.
- **Neuron computation**: Each artificial neuron computes two operations: (1) a weighted sum of all inputs plus a bias term, and (2) an activation function (sigmoid, tanh, ReLU, GELU) that introduces nonlinearity. Without activation functions, stacking layers would collapse into a single linear transformation.
- **Training via backpropagation**: Learning occurs in two passes -- a forward pass computes the network's output and loss, then a backward pass propagates the error gradient backward through the network using the chain rule. Stochastic gradient descent (SGD) and its variants (Adam, AdaGrad) update weights proportional to the gradient times a learning rate.
- **Universal approximation**: A neural network with a single hidden layer and sufficient width can theoretically approximate any continuous function. In practice, deeper networks learn hierarchical representations more efficiently -- early layers capture low-level features, deeper layers combine them into increasingly abstract concepts.
- **From perceptrons to deep networks**: The field evolved from Rosenblatt's single-layer perceptron (1957) through multi-layer perceptrons, convolutional neural networks (CNNs), recurrent neural networks (RNNs), and finally to transformers. Each generation addressed limitations of its predecessors -- RNNs handled sequences but suffered from vanishing gradients; transformers solved this with parallel self-attention.
- **Embeddings and representation learning**: A key capability of neural networks is learning dense vector representations (embeddings) that capture semantic relationships. Tokens in similar contexts cluster together in embedding space, enabling the model to generalize beyond memorized examples. Modern LLMs use embedding matrices with billions of parameters.
- **Scaling properties**: Neural networks exhibit scaling laws where performance improves predictably with more parameters, data, and compute. This empirical relationship has driven the scaling from millions to trillions of parameters, with larger networks often being easier to optimize due to having more directions to reach minima.
- **Loss functions and optimization**: Training minimizes a loss function (cross-entropy for classification, mean squared error for regression) that measures the gap between predicted and desired outputs. The choice of loss function, optimizer, learning rate schedule, and regularization techniques (dropout, weight decay, batch normalization) critically affect training dynamics.

## Related Concepts

- [[backpropagation]] -- the algorithm for computing gradients through network layers
- [[activation-function]] -- nonlinear functions applied at each neuron
- [[gradient-descent]] -- optimization algorithm for weight updates
- [[deep-learning]] -- neural networks with many layers trained on large datasets
- [[perceptron]] -- the earliest single-layer neural network model
- [[loss-function]] -- metrics measuring prediction error during training
- [[recurrent-neural-networks]] -- sequence-processing neural networks that preceded transformers
- [[convolutional-neural-network]] -- spatially-aware neural networks for vision tasks
- [[transformers]] -- the architecture that replaced RNNs using self-attention
- [[vector-embeddings]] -- learned numerical representations of discrete inputs
- [[machine-learning]] -- the broader field encompassing neural network training

## Sources

- [[what-is-chatgpt-doing-and-why-does-it-work]] -- Stephen Wolfram's explanation of neural networks in LLMs, covering weights, training, and gradient descent
- [[everything-about-transformers]] -- neural networks as foundation, tracing evolution from feedforward networks through RNNs to transformers
- [[vector-embeddings-from-baby-nlp-to-mature-llms]] -- evolution of neural network representations from one-hot encoding to transformer embeddings
- [[linear-classification]] -- basic neural network building blocks for classification tasks
- [[brandon-rohrer-blog]] -- educational content covering neural network fundamentals across 31 chapters
- [[neural-networks-made-easy]] -- hands-on tutorial building a neural network from scratch, covering perceptron architecture, backpropagation, and weight adjustment
