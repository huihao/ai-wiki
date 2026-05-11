---
created: 2026-04-27
updated: 2026-04-28
tags: [entity, education, visualization, machine-learning]
sources: 1
---

# explained.ai

## Summary

An educational platform providing deep, intuitive explanations of machine learning and related topics. Founded by Terence Parr (creator of ANTLR), the platform focuses on visual explanations, practical implementations, and dispelling myths about ML concepts. Known for creating popular visualization tools like dtreeviz and TensorSensor.

## Key Attributes

- **Founder**: Terence Parr (also created ANTLR parser generator)
- **Focus**: Visual, intuitive ML explanations
- **Approach**: "Try to illuminate not impress" philosophy
- **Tools**: Multiple open-source visualization libraries
- **Content**: Articles, books in progress, talks, academic papers

## Major Contributions

### TensorSensor
- Library for clarifying tensor dimension errors in deep learning code
- Visualizes Python code showing tensor shapes
- Works with JAX, TensorFlow, PyTorch, Numpy, Keras, fastai
- Augments error messages with shape information

### dtreeviz (Decision Tree Visualization)
- Python library for scikit-learn decision tree visualization
- Shows how decision nodes split feature space
- Inspired by R2D3 animation
- Used for model interpretation and learning

### lolviz
- Python data structure visualization tool
- Handles lists, dictionaries, linked lists, binary trees, numpy arrays
- Designed for Jupyter notebook teaching and presentations
- Function call stack visualization

### rfpimp (Random Forest Feature Importance)
- Package for permutation importance
- Addresses bias in default Random Forest feature importance
- More reliable than scikit-learn's default importance measures

## Educational Content

### Articles
1. **RNNs Without Neural Networks** — Explains vanilla RNNs stripped to essence: vector transformations creating embeddings for variable-length inputs (with PyTorch implementations)

2. **Regularization Visualized** — Intuitive visual explanation of regularization behavior, dispelling myths about what regularization actually does

3. **Gradient Boosting Machines** — Explains GBM intuition, mathematics, visualizations, and why it performs "gradient descent in function space"

4. **Matrix Calculus for Deep Learning** — Complete guide to differential matrix calculus needed for understanding neural network training (arxiv.org PDF available)

5. **How to Visualize Decision Trees** — Comprehensive guide to tree visualization with dtreeviz library

6. **Feature Importance vs Impact** — Mathematical definitions distinguishing feature importance (for selection) from feature impact (isolated effect on response)

7. **StratPD and CatStratPD** — Methods computing partial dependence curves directly from training data without model fitting

### Books
- **Machine Learning for Programmers** (in progress, 9 chapters posted)
  - Focus on few powerful models rather than broad survey
  - Emphasizes practical application and understanding
  - Co-author Jeremy: #1 Kaggle competitor for two consecutive years

### Talks
- **Rethinking ML Papers (ICLR 2021)** — Thoughts on presenting technical subjects
  - "Peer review and our egos ... are the enemy of simplicity and clarity"
  - "Try to illuminate not impress!"
  - "What we need: correct, deep, and obvious"

- **Deep Learning Crash Course** — PyTorch basics video lecture (USF data science seminar)

- **Dissatisfaction and Innovation** — How dissatisfaction spurs innovation (USF seminar)

### Academic Papers
- **Feature Impact vs Importance** — Mathematical definitions derived from partial dependence curves
- **StratPD Methods** — Direct partial dependence computation without model fitting
- **CodeBuff** — Automatic code formatter derivation using k-nearest neighbor with rich features (demonstrates simple ML model effectiveness)

## Philosophy

The platform emphasizes:
- Deep understanding over surface-level knowledge
- Visual explanations over abstract mathematics
- Practical implementation over theoretical discussion
- Dispelling myths and correcting misconceptions
- Accessibility for practitioners without ML expertise
- "Correct, deep, and obvious" presentation style

## Tools & Libraries

- **TensorSensor**: github.com/parrt/tensor-sensor
- **dtreeviz**: github.com/parrt/dtreeviz
- **rfpimp**: github.com/parrt/random-forest-importances
- **lolviz**: github.com/parrt/lolviz
- **autodiff**: github.com/parrt/autodiff (junk drawer for learning, not production)
- **stratx**: github.com/parrt/stratx (StratPD implementation, pip install stratx)
- **CodeBuff**: github.com/antlr/codebuff

## Related Concepts

- [[decision-trees|Decision Trees]] — Core topic with extensive visualization work
- [[gradient-boosting|Gradient Boosting Machines]] — Detailed explanation article
- [[recurrent-neural-networks|Recurrent Neural Networks]] — Implementation-focused explanation
- [[feature-importance|Feature Importance]] — Bias correction and methodology
- [[partial-dependence|Partial Dependence]] — StratPD methods
- [[model-interpretation|Model Interpretation]] — Visual tools and explanations
- [[regularization|Regularization]] — Visual explanation of behavior

## Related Entities

- [[terence-parr|Terence Parr]] — Founder, ANTLR creator, USF professor
- [[antlr|ANTLR]] — Parser generator created by Parr
- [[scikit-learn|Scikit-learn]] — dtreeviz target platform
- [[pytorch|PyTorch]] — Framework for RNN implementations

## Sources

- explained.ai — Platform homepage, 2022-01-01, raw/ai/explained.ai.md

## Contradictions / Open Questions

- How effective are visual explanations compared to traditional mathematical presentations?
- What's the completion timeline for "Machine Learning for Programmers" book?
- How do StratPD methods compare to model-based partial dependence in practice?
