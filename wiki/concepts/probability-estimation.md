---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Probability Estimation

## Definition
Probability estimation is the process of assigning likelihood values to possible outcomes based on available data or model parameters. In machine learning, the softmax function is the standard mechanism for converting raw model outputs (logits) into a probability distribution over classes, enabling classification decisions and uncertainty quantification.

## Key Aspects
- The softmax function transforms a vector of real-valued logits into a probability distribution that sums to 1
- Softmax is differentiable, making it suitable for gradient-based optimization in neural networks
- Temperature scaling adjusts the sharpness of the probability distribution: lower temperature concentrates probability on the most likely class, higher temperature flattens it
- In LLMs, next-token prediction is fundamentally probability estimation over the vocabulary
- Probability estimation underlies classification, generation, and decision-making in ML systems
- Calibration measures how well predicted probabilities match actual frequencies: a well-calibrated model's 80% confidence predictions are correct 80% of the time
- Log-softmax is used for numerical stability in training, equivalent to softmax in the log domain

## Related Concepts
- [[softmax-classifier]]
- [[temperature-parameter]]
- [[llm-fundamentals]]

## Sources
- [[softmax-classifier]]
