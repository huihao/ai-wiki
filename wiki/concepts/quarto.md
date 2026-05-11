---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Quarto

## Definition
Quarto is an open-source scientific and technical publishing system built on Pandoc that renders plain-text Markdown (with optional code cells) into HTML, PDF, Word, ePub, and other formats. It is the documentation engine used by nbdev (fast.ai's literate programming framework), enabling developers to write prose, code, and tests in a single notebook environment and publish beautiful technical documentation with integrated CI.

## Key Aspects
- Open-source publishing framework built on Pandoc, supporting multiple output formats (HTML, PDF, Word, ePub, slides)
- Used by nbdev as the documentation engine for generating technical articles and API docs from Jupyter notebooks
- Supports executable code cells: code runs during rendering, ensuring documentation stays in sync with implementation
- Provides cross-referencing, bibliography management, and citation support for academic writing
- Generates static sites suitable for GitHub Pages hosting
- Integrates with CI/CD pipelines (GitHub Actions) for automated documentation updates
- Supports custom themes, templates, and styling for branded output
- Enables literate programming: the same notebook contains prose explanation, executable code, and tests

## Related Concepts
- [[nbdev]]
- [[literate-programming]]
- [[jupyter-notebook]]

## Sources
- [[nbdev-fastai]]
