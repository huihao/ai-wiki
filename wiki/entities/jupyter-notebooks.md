---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Jupyter Notebooks

## Summary

Jupyter Notebooks are an interactive computing environment that allows users to combine executable code (primarily Python), mathematical notation, visualizations, and explanatory prose in a single document organized as a sequence of cells. Originally developed for scientific computing, they have become the dominant format for machine learning education, research prototyping, and reproducible data science workflows, with deep learning textbooks like *Dive into Deep Learning* structured entirely as executable notebooks.

## Key Aspects

- **Code + narrative in one document**: Jupyter's cell-based structure lets authors interleave executable code blocks with Markdown prose and LaTeX equations, making it ideal for teaching technical concepts where readers can run and modify every example as they read. This format replaced static code listings in textbooks with living, runnable documents.
- **Foundation of interactive ML education**: Major deep learning courses and textbooks—Stanford CS231n (Justin Johnson's NumPy tutorial), *Dive into Deep Learning* (adopted at 500 universities across 70 countries)—are built as Jupyter notebooks. The interactive format enables students to tune hyperparameters and see immediate results, building practical intuition alongside theoretical understanding.
- **Multi-framework support**: Notebooks support implementations across PyTorch, JAX, TensorFlow, and MXNet in the same document format, allowing learners to compare frameworks or choose their preferred tool without changing the pedagogical structure. Google Colab extends this by providing free GPU/TPU access with zero setup.
- **Scientific computing workflow**: Beyond ML education, notebooks are the standard tool for exploratory data analysis (EDA), combining NumPy for numerical computation, SciPy for scientific algorithms, Matplotlib for visualization, and pandas for data manipulation in a single interactive session. Justin Johnson's Stanford CS231n tutorial remains a canonical reference for this stack.
- **Reproducibility and sharing**: Notebooks capture the full computational state of an analysis—code, data, outputs, and visualizations—making research results reproducible. GitHub renders notebooks natively; nbdev extends this by enabling library development directly in notebooks with automatic export to production Python modules.
- **Limitations for production**: Despite their educational and prototyping value, notebooks have well-documented drawbacks for production code: hidden state management issues, difficulty with version control (cell outputs create noisy diffs), lack of modularity, and challenges with testing. They are best understood as exploration and education tools rather than software engineering environments.

## Related Concepts

- [[interactive-deep-learning-education]]
- [[deep-learning]]
- [[python]]
- [[numpy]]
- [[reproducible-research]]

## Sources

- [[dive-into-deep-learning]]
- [[interactive-deep-learning-education]]
- [[justin-johnson]]
- [[python-numpy-tutorial]]
