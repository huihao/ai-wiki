---
created: 2026-04-28
updated: 2026-05-09
tags: [inference, llm, sampling]
sources: 0
---

# Temperature sampling

## Definition

Temperature sampling is a technique for controlling the randomness of text generation in language models by scaling the logits (pre-softmax output values) with a temperature parameter before applying the softmax function. A temperature of 1.0 preserves the original probability distribution; temperatures below 1.0 sharpen the distribution (making the model more deterministic and confident), while temperatures above 1.0 flatten it (increasing diversity and randomness). Temperature is one of the most widely used inference hyperparameters, allowing practitioners to trade off between coherent, predictable outputs and creative, diverse ones.

## Key Proponents / Critics

- [[openai]] — popularized temperature as a standard API parameter in GPT model deployments
- [[anthropic]] — exposes temperature control in the Claude API for fine-tuning generation behavior

## Related Concepts

- [[softmax]] — the softmax function that temperature directly modifies
- [[sampling-from-distributions]] — temperature sampling is a specific method within the broader class of sampling strategies
- [[top-k-sampling]] — a complementary sampling technique often used alongside temperature
- [[top-p-sampling]] — nucleus sampling, another complementary method commonly combined with temperature
- [[beam-search]] — an alternative to temperature-based sampling that uses deterministic search
- [[llm-inference]] — temperature is a key parameter in the LLM inference pipeline
- [[next-token-prediction]] — temperature controls how the predicted token distribution is sampled from
- [[inference-determinism]] — temperature = 0 yields deterministic generation; temperature > 0 introduces randomness
- [[temperature-parameter]] — related concept covering the mathematical role of temperature

## Related Entities

- [[openai]] — established temperature as a standard generation parameter in model APIs

## Sources

- No source pages currently link to this concept

## Evolution

- **2015**: Temperature scaling is used in neural network calibration (Guo et al.)
- **2019**: Holtzman et al. study decoding strategies, analyzing temperature's role in text quality
- **2020**: OpenAI makes temperature a first-class parameter in the GPT-3 API
- **2023**: Temperature becomes a standard parameter across all major LLM APIs
- **2025**: Temperature remains the most widely used knob for controlling generation diversity
