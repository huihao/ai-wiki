---
url: https://huggingface.co/learn/llm-course/en/chapter0/1
title: Introduction
author: Hugging Face
course: LLM Course
---

# Introduction

Welcome guide for Hugging Face LLM Course, covering environment setup with Colab notebooks or Python virtual environments.

## Prerequisites

- Hugging Face account recommended: [create account](https://huggingface.co/join)
- Python 3.x required
- Recommended to start with Chapter 1 first

## Setup Options

### Option 1: Google Colab Notebook

Simpliest setup: boot up notebook in browser and start coding.

**Steps**:
1. Create new Colab notebook
2. Install transformers: `!pip install transformers`
3. Import to verify: `import transformers`
4. Install development version: `!pip install transformers[sentencepiece]`

**Benefits**:
- No local setup required
- Free GPU/TPU access for smaller workloads
- Pre-configured environment
- Runs in browser

**Note**: Colab allows system commands with `!` prefix.

### Option 2: Python Virtual Environment

Local development environment using `venv`.

**Steps**:
1. Create project directory:
```bash
mkdir ~/transformers-course
cd ~/transformers-course
```

2. Create virtual environment:
```bash
python -m venv .env
```

3. Activate environment:
```bash
source .env/bin/activate
```

4. Verify activation:
```bash
which python
# Should show: /home/<user>/transformers-course/.env/bin/python
```

5. Install transformers:
```bash
pip install "transformers[sentencepiece]"
```

6. Deactivate when done:
```bash
deactivate
```

**Benefits**:
- Isolated dependencies
- Application-specific packages
- Avoid compatibility issues
- Keep main Python clean

**Note**: Windows users recommended to use Colab; course doesn't cover Windows system.

## Key Concepts

- **Virtual environments**: Self-contained directory trees with Python installation and packages
- **Package manager**: `pip` for Python package installation
- **Development version**: `transformers[sentencepiece]` includes all dependencies

## Related Concepts

- [[hugging-face]]
- [[transformers-library]]
- [[python-virtual-environments]]
- [[conda]]
- [[pip]]
- [[jupyter-notebook]]
- [[google-colab]]

## Related Entities

- [[hugging-face]]

## Sources

- https://huggingface.co/learn/llm-course/en/chapter0/1
- https://github.com/huggingface/course/blob/main/chapters/en/chapter0/1.mdx