---
created: 2026-04-28
updated: 2026-05-09
tags: [machine-learning, mlops, reproducibility]
sources: 0
---

# Experiment Tracking

## Definition

Experiment tracking is the practice of systematically recording all parameters, configurations, and outcomes of machine learning experiments to ensure reproducibility, facilitate comparison, and enable informed decision-making. Key data captured includes hyperparameters (learning rate, batch size, model architecture), training metrics (loss curves, accuracy over time), evaluation metrics (precision, recall, F1 on test sets), code versions (git commit hash), dataset versions, hardware configuration, and artifact outputs (trained model weights, tokenizer files). Experiment tracking transforms ML development from ad-hoc notebook experimentation into a disciplined engineering practice with full audit trails.

## Key Proponents / Critics

- [[weights-and-biases]] — Leading experiment tracking platform for ML research and production
- [[langfuse]] — Open-source observability platform for LLM-based experiments

## Related Concepts

- [[test-driven-development]] — TDD's discipline of recording expected behavior parallels experiment tracking
- [[reproducible-research]] — Experiment tracking is essential for research reproducibility
- [[model-versioning]] — Tracks model artifacts produced by experiments
- [[hyperparameter-optimization]] — Generates many experiments that need systematic tracking
- [[evaluation-metrics]] — The quantitative outcomes recorded during experiment tracking
- [[mlops]] — Experiment tracking is a foundational MLOps practice

## Related Entities

- [[weights-and-biases]] — W&B is the most widely adopted experiment tracking platform in ML
- [[langfuse]] — Open-source LLM observability and experiment tracking tool
- [[anthropic]] — Practices systematic evaluation and tracking in model development

## Sources

(No specific sources linked)

## Evolution

- **2015**: Weights & Biases (W&B) is founded, bringing structured experiment tracking to ML
- **2017**: MLflow (Databricks) introduces open-source experiment tracking with model registry
- **2018**: TensorBoard (TensorFlow) evolves from visualization to experiment comparison tool
- **2020**: Neptune.ai and Comet ML expand the experiment tracking tool ecosystem
- **2023**: LLM-specific experiment tracking emerges, tracking prompts, completions, and human evaluations
- **2024+**: Experiment tracking extends to AI agent evaluations, tracking agent trajectories, tool use patterns, and multi-turn conversation quality
