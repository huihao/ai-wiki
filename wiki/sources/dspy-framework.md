---
created: 2026-04-27
updated: 2026-04-27
tags: [source, framework, dspy, optimization]
sources: 1
---

# DSPy: The Framework for Programming—Not Prompting—Language Models

## Metadata

- **Author**: Stanford NLP group / DSPy community
- **Date**: 2024-07-18 (site content)
- **URL**: https://dspy.ai/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/DSPy.md`

## Summary

DSPy (Declarative Self-improving Python) is a framework that shifts LLM application development from manual prompt engineering to structured programming. Users define natural-language modules with typed signatures, and DSPy compiles them into effective prompts or weight updates. It supports optimizers that automatically synthesize few-shot examples, propose better instructions, or finetune model weights.

## Key Takeaways

- **Programming, not prompting**: DSPy decouples AI system design from specific LMs or prompting strategies. You write structured code with signatures (e.g., `question -> answer: float`), and DSPy handles prompt generation and output parsing.
- **Three pillars**:
  1. **Modules** — `dspy.Predict`, `dspy.ChainOfThought`, `dspy.ReAct`, etc. Each module takes a signature and implements a strategy for invoking the LM.
  2. **Optimizers** — Automatically tune prompts and weights:
     - `BootstrapRS` — synthesizes good few-shot examples
     - `MIPROv2` — proposes and explores better instructions via bootstrapping + grounded proposal + discrete search
     - `BootstrapFinetune` — builds datasets and finetunes LM weights
     - `GEPA` — intelligent instruction exploration
  3. **Ecosystem** — Open-source community advancing compositional architectures, inference-time strategies, and optimizers.
- **Practical results**:
  - ReAct agent on HotPotQA: 24% → 51% with MIPROv2 optimization
  - GPT-4o-mini classification: 66% → 87% with optimization
  - RAG system over StackExchange: ~10% relative gain
  - Typical simple optimization run: ~$2 USD, ~20 minutes
- **Research lineage**: Started at Stanford NLP (Feb 2022), building on ColBERT-QA, Baleen, and Hindsight. First released as DSP (Dec 2022), evolved to DSPy (Oct 2023). Now 250+ contributors.
- **Key research outputs**: MIPROv2, BetterTogether, LeReT, STORM, IReRa, DSPy Assertions, PAPILLON, PATH.

## Entities Mentioned

- Stanford NLP — originating research group
- [[huggingface-skills|Hugging Face]] — datasets integration
- [[openai]] — model provider (GPT-4o-mini used in examples)
- [[anthropic]] — model provider
- Databricks — platform integration
- [[comprehensive-rag-ollama-langchain|Ollama]] — local model integration
- [[litellm]] — provider abstraction layer used by DSPy

## Concepts Mentioned

- [[dspy-framework|DSPy]] — core framework/methodology
- [[prompt-engineering]] — paradigm DSPy aims to replace
- [[prompt-engineering|Automatic Prompt Engineering]] — what DSPy optimizers do
- [[chain-of-thought]] — available as `dspy.ChainOfThought`
- [[react-framework|ReAct]] — available as `dspy.ReAct`
- [[retrieval-augmented-generation]] — extensively supported
- [[supervised-fine-tuning|Fine-tuning LLMs]] — via `BootstrapFinetune`
- [[inference-time-scaling]] — ensembles via `dspy.Ensemble`
- [[designing-agentic-ai-systems-web-dev|Compound AI Systems]] — architectural paradigm DSPy enables

## Raw Notes

- DSPy treats prompt engineering as a compiler optimization problem: you write high-level code, and the framework compiles it to low-level prompts/weights.
- The "signature" abstraction (`input -> output`) is powerful because it separates *what* the model should do from *how* to tell it.
- Optimizers can be composed: run MIPROv2, then feed output to BootstrapFinetune, or build an ensemble of top candidate programs.
- This aligns well with the 8-Factor Agent methodology's emphasis on treating prompts as first-class citizens and maintaining ground-truth examples.

## Questions / Follow-ups

- How does DSPy compare to other prompt optimization tools (e.g., PromptLayer, Weights & Biases Prompts, OpenAI's prompt caching)?
- What is the ceiling of DSPy optimization? When does it fail to improve over hand-crafted prompts?
- How does the community size and production adoption compare to LangChain/LlamaIndex?
- Should we track individual optimizer papers (MIPROv2, BetterTogether, LeReT) as separate concepts?
