---
url: https://huggingface.co/learn/llm-course/en/chapter0/1
---

# Python Virtual Environments

Self-contained directory trees containing Python installation with specific version and required packages for an application.

## Purpose

- Keep main Python installation free of packages
- Application-specific dependencies
- Avoid compatibility issues between applications
- Isolated development environments

## Implementation with venv

Python's official package for virtual environments.

### Create Environment
```bash
python -m venv .env
```

### Activate Environment
```bash
source .env/bin/activate  # macOS/Linux
```

### Verify Activation
```bash
which python
# Should point to: /path/to/project/.env/bin/python
```

### Deactivate
```bash
deactivate
```

## vs. Conda

Alternative environment manager:

- [[conda]]: More feature-rich, handles non-Python dependencies
- `venv`: Lightweight, Python-only, standard library tool

## Usage in Courses

- [[hugging-face|Hugging Face LLM Course]] recommends virtual environments for local development
- [[d2l|Dive into Deep Learning]] uses Conda for environment setup

## Related Concepts

- [[conda]]
- [[pip]]
- [[package-management]]
- [[python]]

## Sources

- [[introduction-hugging-face]] — Setup guide for Hugging Face course
- https://docs.python.org/3/tutorial/venv.html
- https://docs.python.org/3/library/venv.html