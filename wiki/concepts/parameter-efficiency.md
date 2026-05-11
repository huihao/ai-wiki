---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Parameter Efficiency

## Definition

Parameter efficiency is the practice of designing neural network architectures and training procedures that achieve strong performance while minimizing the number of trainable parameters, reducing memory footprint, computational cost, and the risk of overfitting.

## Key Aspects

- **Weight Tying**: Sharing embedding matrices across encoder, decoder, and pre-softmax layers -- a standard technique in transformers that saves approximately 31M parameters for a typical 30K-vocabulary, 512-dimension model by using one matrix where three were previously needed
- **Parameter Sharing Rationale**: Tokens that are similar in embedding space should produce similar output logits; tying weights enforces this consistency while reducing redundancy
- **Regularization Effect**: Weight tying acts as implicit regularization by constraining the model to learn shared representations, improving generalization on smaller datasets
- **Benefits Beyond Size**: Fewer parameters mean faster training (fewer gradient updates), lower inference memory, and better generalization through reduced model complexity
- **Scaling Implications**: As models grow to billions of parameters, efficiency techniques like weight tying, factorization, and low-rank adaptation become proportionally more important for practical deployment

## Related Concepts

- [[weight-tying]] -- The specific parameter sharing technique most commonly associated with efficiency
- [[embedding-layers]] -- Components where weight tying delivers the largest parameter savings
- [[parameter-efficient-fine-tuning]] -- Adapting large models with minimal additional parameters
- [[quantization]] -- Reducing parameter precision as a complementary efficiency approach

## Sources

- [[weight-tying]]
