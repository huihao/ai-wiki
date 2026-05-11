---
created: 2026-04-27
updated: 2026-04-27
tags: [compound-ai, framework, prompt-optimization]
sources: 1
---

# DSPy

## Definition

A declarative framework for building modular AI software with language models. DSPy (Declarative Self-improving Python) enables developers to write structured, typed code with natural-language signatures rather than brittle prompt strings. The framework compiles high-level programs into optimized prompts or model weight updates via built-in optimizers.

## Core Abstractions

### Modules
Reusable components that implement strategies for invoking LMs:
- `Predict` — basic prediction
- `ChainOfThought` — reasoning before answering
- `ReAct` — reasoning + acting (agent loop)
- `Retrieve` — retrieval for RAG pipelines

### Signatures
Natural-language type declarations that separate *what* the LM should do from *how* to prompt it:
```
question -> answer: float
context, question -> answer
```

### Optimizers
Algorithms that automatically improve prompts and weights:
| Optimizer | Mechanism | Cost (typical) |
|---|---|---|
| `BootstrapRS` | Synthesize few-shot examples | Low |
| `MIPROv2` | Bootstrapping + instruction proposal + discrete search | ~$2, 20min |
| `GEPA` | Intelligent instruction exploration | Medium |
| `BootstrapFinetune` | Build datasets and finetune weights | Higher |

## Related Concepts

- [[prompt-engineering]] — paradigm DSPy replaces
- [[prompt-engineering|Automatic Prompt Engineering]] — DSPy's core capability
- [[chain-of-thought]] — available as a module
- [[react-framework|ReAct]] — available as a module
- [[retrieval-augmented-generation]] — extensively supported
- [[supervised-fine-tuning|Fine-tuning LLMs]] — via `BootstrapFinetune`
- [[designing-agentic-ai-systems-web-dev|Compound AI Systems]] — architectural paradigm
- [[llm-agents]] — agent loops via `ReAct` module

## Sources

- [[large-language-models|DSPy: The Framework for Programming—Not Prompting—Language Models]]

## Evolution

- **2022**: Stanford NLP begins research on compound LM systems (ColBERT-QA, Baleen, Hindsight)
- **Dec 2022**: First release as "DSP"
- **Oct 2023**: Evolved into "DSPy" with modular architecture and optimizers
- **2024**: MIPROv2, BetterTogether, LeReT published. Community grows to 250+ contributors.
- **2025**: Production adoption increases. DSPy is positioned as the "PyTorch for LLM applications" — a lower-level, research-friendly alternative to LangChain.
