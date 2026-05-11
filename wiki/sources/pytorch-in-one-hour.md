---
url: "https://sebastianraschka.com/teaching/pytorch-1h/"
author: "Sebastian Raschka"
date: "2025-07-01"
fetched_at: "2026-04-27"
---

# PyTorch in One Hour: From Tensors to Training Neural Networks on Multiple GPUs

Comprehensive one-hour tutorial covering PyTorch fundamentals for deep learning, including tensors, autograd, neural network implementation, data loaders, training loops, and multi-GPU distributed training.

## Core Components

**1. Tensor Library**: Extends NumPy with GPU acceleration. Tensors are multi-dimensional arrays (scalars = rank 0, vectors = rank 1, matrices = rank 2, etc.) that serve as fundamental data structures for deep learning.

**2. Automatic Differentiation (autograd)**: Computes gradients automatically by tracking operations on tensors with `requires_grad=True`. Uses computation graphs and the chain rule to enable backpropagation.

**3. Deep Learning Utilities**: Modular building blocks including layers, loss functions, optimizers, and pre-trained models.

## Tutorial Coverage

### Tensors
- Creating tensors from Python lists/integers
- Data types: `torch.int64` (default for integers), `torch.float32` (default for floats)
- Operations: `.reshape()`, `.view()`, `.T` (transpose), `.matmul()` or `@` operator
- Shape manipulation and matrix operations

### Computation Graphs
- Neural network forward passes create directed graphs of mathematical operations
- Used for gradient computation during backpropagation
- Logistic regression example showing graph structure

### Automatic Differentiation
- `grad()` function for manual gradient computation
- `.backward()` method for automatic gradient computation on all leaf nodes
- Gradients stored in `.grad` attributes
- `retain_graph=True` to preserve computation graph

### Neural Networks
- `torch.nn.Module` subclassing pattern
- `__init__` constructor for layer definition
- `forward()` method for computation flow
- `torch.nn.Sequential` for layer sequencing
- Linear layers, ReLU activations
- Parameter initialization and random seeding
- `torch.no_grad()` context manager for inference

### Data Loading
- Custom `Dataset` class: `__init__`, `__getitem__`, `__len__`
- `DataLoader` with batch_size, shuffle, num_workers
- `drop_last=True` to handle uneven batch sizes
- `num_workers=4` optimal for parallel data loading
- DistributedSampler for multi-GPU training

### Training Loop
- `model.train()` and `model.eval()` modes
- Optimizer initialization (SGD with learning rate)
- Forward pass → loss computation → `optimizer.zero_grad()` → `loss.backward()` → `optimizer.step()`
- `cross_entropy` loss function (combines softmax internally)
- Model evaluation and accuracy computation

### Model Persistence
- `torch.save(model.state_dict(), "model.pth")`
- `model.load_state_dict(torch.load("model.pth"))`
- `.pth` or `.pt` file extensions common

### GPU Training
- Single GPU: `.to("cuda")` for tensors and models
- Device detection: `torch.cuda.is_available()`
- Apple Silicon: `.to("mps")` for M1/M2/M3/M4 chips
- Multi-GPU: DistributedDataParallel (DDP)
- DDP: `torchrun --nproc_per_node=N` command
- Process groups, NCCL backend, gradient synchronization

## Author

Sebastian Raschka - ML educator and PyTorch expert, author of "Machine Learning with PyTorch and Scikit-Learn" and "Build A Large Language Model (From Scratch)"

## Key Technical Details

**Parameter Counting**: `sum(p.numel() for p in model.parameters() if p.requires_grad)`

**Learning Rate**: Hyperparameter controlling gradient descent step size

**Epoch**: One complete pass through training dataset

**Batch**: Subset of training data processed in single iteration

**DDP Architecture**: Each GPU receives model copy + unique batch, gradients averaged across GPUs

## Recommended Settings

- Python version: One or two releases older than latest (e.g., 3.11 if 3.13 is newest)
- num_workers=4 for data loading
- drop_last=True for batch handling
- Manual seeding for reproducibility

## Related Concepts

- [[PyTorch]]
- [[Tensor]]
- [[Automatic Differentiation]]
- [[Backpropagation]]
- [[Neural Network]]
- [[Deep Learning]]
- [[Gradient Descent]]
- [[Distributed Training]]
- [[GPU Computing]]
- [[KV Caching]]

## Related Entities

- [[Sebastian Raschka]]
- [[PyTorch]]
- [[NVIDIA]]
- [[Apple]]