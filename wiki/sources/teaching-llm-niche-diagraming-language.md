---
created: 2026-04-28
updated: 2026-04-28
tags: [source, article, fine-tuning]
sources: 1
---

# Teaching an LLM a Niche Diagraming Language

## Metadata

- **Author**: Huy
- **Date**: 2025-01-12
- **URL**: https://www.huy.rocks/everyday/12-01-2025-ai-teaching-an-llm-a-niche-diagraming-language
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Teaching an LLM a Niche Diagraming Language.md`

## Summary

Huy documents his experiment teaching Qwen2.5-Coder-7B to work with Pintora, a niche diagramming language. The project involved two-phase training (continued pretraining and instruction finetune) and achieved 86% accuracy on syntax correctness with minimal training data (1000 CPT rows, 500 IFT rows).

## Key Takeaways

- Text-to-diagram solved for popular languages (Mermaid, PlantUML) but not niche languages (D2, Structurizr, Pintora)
- Two-phase training approach: Phase 1 (CPT) learns syntax/grammar, Phase 2 (IFT) learns task execution
- Used Unsloth's 4-bit quantized LoRA training for efficiency
- Data preparation challenge: manually typing failed, GitHub search yielded limited results, generated with AI
- Generated 2000 entries with Gemini 3 Pro/Claude Sonnet 4.5, cleaned to 1500 usable rows
- Cleanup process: deduplicate, render with `@pintora/cli`, remove syntax errors
- Training VRAM: 19.33GB for 7B model with 4-bit QLoRA (A40 GPU on Runpod $0.4/hr)
- Could save 5-6GB VRAM by removing `embed_tokens` and `lm_head` from target modules (no new tokens needed)
- Evaluation: 996 diagrams generated, 139 with syntax errors, 857 successfully rendered = **86% accuracy**

## Training Process

### Phase 1: Continued Pretraining (CPT)
- Feed model Pintora diagrams to learn syntax, grammar structure
- Dataset: 1000 rows of diagram examples
- Result: Model picks up syntax characteristics but still syntactically incorrect

### Phase 2: Instruction Finetune (IFT)
- Train on diagram generating/editing instructions
- Dataset: 500 rows with instruction, input, output format
- Result: Model generates accurate, syntactically correct code for both scratch and edit tasks

## Entities Mentioned

- [[huy|Huy]] — author
- [[pintora|Pintora]] — niche diagramming language
- Qwen — base model family
- Unsloth — training toolkit
- Runpod — GPU rental platform

## Concepts Mentioned

- [[continued-pretraining|Continued pretraining (CPT)]] — Phase 1 training
- [[instruction-finetuning|Instruction finetuning (IFT)]] — Phase 2 training
- [[fine-tuning|Fine-tuning]] — overall approach
- [[qlora|QLoRA]] — 4-bit quantized LoRA
- [[text-to-diagram|Text-to-diagram]] — application domain

## Resources

- Model: [huytd189/pintora-coder-7b](https://huggingface.co/huytd189/pintora-coder-7b)
- GGUF: [huytd189/pintora-coder-7b-gguf](https://huggingface.co/huytd189/pintora-coder-7b-gguf)
- CPT Dataset: [huytd189/pintora-instruct](https://huggingface.co/datasets/huytd189/pintora-instruct)
- IFT Dataset: [huytd189/pintora-edit-instruct](https://huggingface.co/datasets/huytd189/pintora-edit-instruct)

## Project Goal

- LLM ability to work with Pintora diagrams for: generating from scratch, editing existing diagrams
- Limited to models smaller than 30B (resource constraints)
- Picked Qwen2.5-Coder-7B (7B-14B range suitable for code generation and instruction following)

## Challenges

- Manual data creation abandoned after 5 rows
- GitHub search yielded only 5-6 repositories with Pintora code
- AI-generated data had syntax errors and duplicates
- VRAM constraints on Colab (T4 16GB) and Kaggle (2xT4) - needed A40 48GB

## Questions / Follow-ups

- Can RL improve the accuracy beyond 86%?
- How to apply this approach to other niche languages (Strudel)?
- What's the minimum viable dataset size for niche language learning?