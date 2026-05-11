---
created: 2026-04-29
updated: 2026-05-09
tags: [llm]
sources: 2
---

# Temperature Parameter

## Definition

The temperature parameter is a hyperparameter that controls the randomness of token sampling in language model text generation by scaling the logits before softmax. A temperature of 1.0 preserves the model's learned distribution; values below 1.0 sharpen the distribution toward high-probability tokens (more deterministic); values above 1.0 flatten it (more random and creative).

## Key Aspects

- Temperature scales the logits (raw output scores) by dividing by T before softmax: lower T concentrates probability mass on fewer tokens, higher T spreads it more evenly
- At T approaching 0, generation becomes greedy (always selecting the most probable token), producing repetitive but coherent text
- At T = 1.0, the model samples exactly according to its learned probability distribution
- At T > 1.0, less likely tokens gain relatively higher probability, introducing novelty and surprise but risking incoherence
- Temperature is one of the core probability manipulation techniques: by adjusting the sampling distribution, it directly shapes output characteristics
- Compounding errors mean that an unlikely token chosen at high temperature becomes context that shifts future distributions, potentially cascading into gibberish
- Different tasks benefit from different temperatures: factual Q&A benefits from low temperature, creative writing benefits from higher temperature
- Production systems often use T = 0.0-0.3 for deterministic tasks and T = 0.7-1.0 for creative tasks

## Related Concepts

- [[sampling-from-distributions]]
- [[stochastic-processes]]
- [[text-generation]]

## Sources

- [[an-intuitive-guide-to-how-llms-work]]
