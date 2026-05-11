---
url: https://d2l.ai/chapter_installation/index.html
title: Installation
book: Dive into Deep Learning
---

# Installation

Setup guide for Dive into Deep Learning (D2L) book environment: Python, Jupyter Notebook, deep learning frameworks, and book code.

## Installing Miniconda

Python 3.x version required (tested with Python 3.9). Visit Miniconda website for appropriate version.

### macOS (Intel Macs)
```bash
sh Miniconda3-py39_4.12.0-MacOSX-x86_64.sh -b
~/miniconda3/bin/conda init
```

### Linux
```bash
sh Miniconda3-py39_4.12.0-Linux-x86_64.sh -b
~/miniconda3/bin/conda init
```

### Windows
Download and install following online instructions.

### Environment Setup
```bash
conda create --name d2l python=3.9 -y
conda activate d2l
```

## Installing Deep Learning Frameworks

### PyTorch
```bash
pip install torch==2.0.0 torchvision==0.15.1
```

### MXNet

GPU version (CUDA 11.2):
```bash
pip install mxnet-cu112==1.9.1
```

CPU version:
```bash
pip install mxnet==1.9.1
```

### JAX and Flax

GPU version:
```bash
pip install "jax[cuda11_pip]==0.4.13" -f https://storage.googleapis.com/jax-releases/jax_cuda_releases.html flax==0.7.0
```

CPU version:
```bash
pip install "jax[cpu]==0.4.13" flax==0.7.0
```

### TensorFlow
```bash
pip install tensorflow==2.12.0 tensorflow-probability==0.20.0
```

## Installing d2l Package

```bash
pip install d2l==1.0.3
```

Package encapsulates frequently used functions and classes from the book.

## Downloading and Running Code

### Option 1: Download from website
Click "Notebooks" tab at D2L.ai website.

### Option 2: Command line
```bash
mkdir d2l-en && cd d2l-en
curl https://d2l.ai/d2l-en-1.0.3.zip -o d2l-en.zip
unzip d2l-en.zip && rm d2l-en.zip
cd pytorch  # or mxnet, jax, tensorflow
```

## Running Jupyter

```bash
jupyter notebook
```

Open http://localhost:8888 in browser.

**Note**: Always run `conda activate d2l` before working with notebooks.

## Related Concepts

- [[deep-learning]]
- [[pytorch]]
- [[tensorflow]]
- [[jax]]
- [[mxnet]]
- [[conda]]
- [[jupyter-notebook]]

## Related Entities

- [[d2l|Dive into Deep Learning]]

## Sources

- https://d2l.ai/chapter_installation/index.html