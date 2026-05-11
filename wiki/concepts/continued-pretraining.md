---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, training]
---

# Continued Pretraining (CPT)

## Definition

Continued Pretraining (CPT) is the first phase of teaching an LLM a new domain or language. It involves feeding the model examples of the target domain to learn syntax, grammar, and structure before task-specific instruction.

## Purpose

- Learn syntax and grammar of new language/domain
- Build foundational knowledge before task execution
- Adapt model to domain-specific patterns
- Minimal task-specific behavior at this stage

## Training Process

1. Collect domain-specific examples (diagrams, code, documents)
2. Format as raw text for model consumption
3. Train on examples without task instructions
4. Result: model recognizes domain patterns but can't execute tasks

## Example Use Cases

- Teaching niche diagramming languages (Pintora, D2, Structurizr)
- Domain adaptation for specialized codebases
- New programming language introduction
- Domain-specific vocabulary learning

## Resource Requirements

- Dataset size: 1000+ examples typically
- Training time: depends on model size and dataset
- VRAM: varies by model size (19GB+ for 7B QLoRA)
- Cost: depends on GPU rental (e.g., $0.4/hr for A40)

## Related Concepts

- [[instruction-finetuning|Instruction finetuning (IFT)]] — Phase 2 training
- [[fine-tuning|Fine-tuning]] — overall process
- [[qlora|QLoRA]] — efficient training method

## Related Sources

- [[teaching-llm-niche-diagraming-language|Teaching an LLM a Niche Diagraming Language]] — CPT experiment

## CPT vs IFT

- **CPT**: Learn language syntax, grammar, patterns
- **IFT**: Learn task execution, instruction following
- **CPT comes first**: Foundation before application
- **IFT comes second**: Apply knowledge to tasks

## Dataset Preparation

- Manual creation: labor-intensive, low scale
- GitHub mining: limited for niche domains
- AI generation: scale but needs cleanup
- Deduplication and validation required

## Open Questions

- What's minimum viable dataset size for CPT?
- When does CPT not need new token embeddings?