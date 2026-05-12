---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# Scratch Training

## Definition

Scratch training is the process of building a foundation model from the ground up, starting with raw data collection and proceeding through tokenization, pre-training, and evaluation, without leveraging pre-trained weights from existing models. It represents the most resource-intensive approach to creating AI models and is generally only feasible for large technology companies and well-funded research organizations.

## Key Aspects

- Requires massive datasets (e.g., The Pile), enormous compute resources (thousands of GPUs/TPUs), and scarce, expensive ML expertise
- Cost examples illustrate the barrier: Facebook's LLaMA 65B cost approximately $4M, Google's PaLM 540B cost approximately $27M
- Training steps: collect dataset, prepare/clean data, tokenize, configure hyperparameters, train (weeks to months), evaluate, deploy
- Data collection is a major challenge: requires curating terabytes of text from diverse, high-quality sources
- Compute requirements: specialized AI supercomputers (e.g., IBM's Vela) with thousands of high-end GPUs
- Expertise barrier: average ML engineer salary at top labs exceeds $900K, reflecting extreme scarcity
- Most businesses should instead customize pre-trained models through fine-tuning or Parameter-Efficient Fine Tuning (PEFT)
- Only large tech firms (Google, Meta, OpenAI, Anthropic) and well-funded startups can afford scratch training
- The "selling shovels during a gold rush" analogy applies: companies like NVIDIA profit regardless of which models win

## Related Concepts

- [[fine-tuning]] -- Adapting pre-trained models, the more practical alternative for most organizations
- [[parameter-efficient-fine-tuning]] -- Efficient customization without full retraining
- [[foundation-models]] -- Large AI models trained on massive unlabeled data
- [[compute-resources]] -- GPU/TPU infrastructure required for training

## Sources

- [[what-it-takes-to-train-foundation-model]]
