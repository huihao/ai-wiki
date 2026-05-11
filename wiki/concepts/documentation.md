---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Documentation

## Definition

Documentation in software development encompasses the written materials that explain how code works, how to use it, and how to contribute to it. Tools like nbdev by fast.ai demonstrate a modern approach where documentation is written directly in Jupyter notebooks alongside code, eliminating the context-switching between writing, testing, and documenting.

## Key Aspects

- nbdev provides a single environment for writing prose, code, and tests without switching between notebooks, IDEs, and documentation tools
- Beautiful technical documentation is generated using Quarto, a scientific publishing system
- Out-of-the-box CI with GitHub Actions ensures documentation stays in sync with code changes
- Publishes to PyPI and conda for code, and GitHub Pages for prose, from the same notebook source
- Git-friendly notebooks produce human-readable merge conflicts and strip unwanted metadata
- Two-way sync with favorite IDEs allows developers to work in their preferred environment
- The approach enforces a literate programming style where documentation, implementation, and tests coexist
- Documentation-as-code practices treat documentation with the same rigor as source code

## Related Concepts

- [[jupyter-notebooks]]
- [[literate-programming]]
- [[continuous-integration]]
- [[documentation-access]]
- [[documentation-skill]]

## Sources

- [[nbdev-fastai]]
