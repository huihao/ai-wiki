---
created: 2026-04-29
updated: 2026-05-09
tags: [llm]
sources: 2
---

# Temperature Parameter

## Definition

The temperature parameter is a hyperparameter that controls the randomness of token sampling in language model text generation by scaling the logits before softmax. A temperature of 1.0 preserves the model's learned distribution; values below 1.0 sharpen the distribution toward high-probability tokens (more deterministic); values above 1.0 flatten it (more random and creative).

## Key Proponents / Critics

- [[openai]] — popularized temperature as a standard API parameter in GPT model deployments
- [[anthropic]] — exposes temperature control in the Claude API for fine-tuning generation behavior

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
- [[softmax]] — the softmax function that temperature directly modifies
- [[top-k-sampling]] — a complementary sampling technique often used alongside temperature
- [[top-p-sampling]] — nucleus sampling, another complementary method commonly combined with temperature
- [[beam-search]] — an alternative to temperature-based sampling that uses deterministic search
- [[llm-inference]] — temperature is a key parameter in the LLM inference pipeline
- [[next-token-prediction]] — temperature controls how the predicted token distribution is sampled from
- [[inference-determinism]] — temperature = 0 yields deterministic generation; temperature > 0 introduces randomness

## Evolution

- **2015**: Temperature scaling is used in neural network calibration (Guo et al.)
- **2019**: Holtzman et al. study decoding strategies, analyzing temperature's role in text quality
- **2020**: OpenAI makes temperature a first-class parameter in the GPT-3 API
- **2023**: Temperature becomes a standard parameter across all major LLM APIs
- **2025**: Temperature remains the most widely used knob for controlling generation diversity

## Sources

- [[an-intuitive-guide-to-how-llms-work]]
