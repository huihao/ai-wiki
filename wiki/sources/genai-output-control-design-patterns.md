---
created: 2026-04-28
updated: 2026-04-28
tags: [source, genai, output-control, design-patterns, chinese]
sources: 1
---

# GenAI输出内容控制的5种设计模式

## Metadata

- **Author**: Mario (淘天集团-直播技术团队)
- **Date**: 2024-09-26
- **URL**: https://mp.weixin.qq.com/s/Sy3vBB5AMdjLJ5u7YZ9Eag
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/GenAI输出内容控制的5种设计模式.md`

## Summary

A Chinese-language article systematically introducing five design patterns for controlling generative AI model outputs: Logits Masking, Grammar (GBNF), Style Transfer, Reverse Neutralization, and Content Optimization (DPO). Each pattern includes use cases, anti-patterns, and implementation guidance.

## Key Takeaways

1. **Logits Masking**: Intervene during beam search by zeroing out disallowed token logits. Best for explicit rule-based constraints.
2. **Grammar (GBNF)**: Built-in grammar-constrained generation using Grammar-Based Normal Form. Best for structured outputs (JSON, SQL).
3. **Style Transfer**: Use few-shot examples or fine-tuning to match desired output style. Best when rules are hard to formalize.
4. **Reverse Neutralization**: Generate neutral intermediate output, then fine-tuned model converts to target style. Best when only target-style examples exist.
5. **Content Optimization**: Preference tuning (DPO) based on human/LLM-as-judge rankings without explicit difference factors.

## Entities Mentioned

- 淘天集团 (Taobao/Tmall Group) — author's affiliation
- [[anthropic]] — recommended JSON formatting in prompts
- [[openai]] — JSON mode API reference

## Concepts Mentioned

- Logits masking — constraining generation by manipulating token probabilities
- [[why-genai-based-coding-agents-are-a-complex-domain-in-cynefin|Grammar-based generation]] — GBNF-constrained output formatting
- [[machine-learning|Few-shot learning]] — style transfer via examples
- [[supervised-fine-tuning|Fine-tuning]] — adapting model weights for style control
- [[dpo]] — Direct Preference Optimization for content optimization
- [[dont-just-slap-on-a-chatbot|LLM-as-a-judge]] — using larger models to evaluate output quality

## Raw Notes

See raw file for Chinese-language implementation examples with transformers and transformers_cfg.

## Questions / Follow-ups

- How do these patterns compose in practice for complex production systems?
