---
created: 2026-04-28
updated: 2026-04-28
tags: [machine-learning, training]
---

# Instruction Finetuning (IFT)

## Definition

Instruction Finetuning (IFT) is the second phase of teaching an LLM a new domain, following Continued Pretraining. It trains the model to execute specific tasks using the domain knowledge learned in CPT.

## Purpose

- Learn task execution in target domain
- Follow instructions for generation/editing
- Apply domain knowledge to specific tasks
- Enable instruction following in new domain

## Training Process

1. Prepare instruction-response pairs
2. Format: instruction, input (optional), output
3. Train on task-specific examples
4. Result: model can execute tasks in new domain

## Example Use Cases

- Generating diagrams from scratch
- Editing existing diagrams
- Code generation in new language
- Domain-specific question answering

## Data Format

```
instruction: "Create a sequenceDiagram that shows: User requests login to AuthService"
input: "" (optional for editing tasks)
output: "sequenceDiagram User->>AuthService: requests login"
```

## Resource Requirements

- Dataset size: 500+ examples typically
- Training time: shorter than CPT
- VRAM: similar to CPT
- Prompt formatting: critical for success

## Related Concepts

- [[continued-pretraining|Continued pretraining (CPT)]] — Phase 1 training
- [[fine-tuning|Fine-tuning]] — overall process
- [[qlora|QLoRA]] — efficient training method

## Related Sources

- [[teaching-llm-niche-diagraming-language|Teaching an LLM a Niche Diagraming Language]] — IFT experiment

## CPT vs IFT

- **CPT**: Learn language syntax, grammar, patterns (passive)
- **IFT**: Learn task execution, instruction following (active)
- **CPT first**: Build foundation
- **IFT second**: Apply to tasks

## Dataset Preparation

- Task diversity: generation, editing, multiple task types
- Instruction clarity: specific, unambiguous instructions
- Input optional: editing tasks have input, generation tasks don't
- Output correctness: syntactically valid, semantically correct

## Evaluation

- Syntax correctness: can tool render the output?
- Semantic correctness: does output match instruction?
- Task coverage: generation vs editing success rates
- Accuracy metrics: percentage of valid outputs

## Open Questions

- What instruction formats work best for IFT?
- How to balance task diversity in IFT dataset?