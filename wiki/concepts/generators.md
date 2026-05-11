---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Generators

## Definition

In the context of Retrieval-Augmented Generation (RAG) pipelines, generators are the LLM components responsible for producing natural language responses from retrieved context and prompts. Within the Haystack framework, generators encapsulate different LLM backends (OpenAI, HuggingFace local models, HuggingFace TGI) behind a unified interface, enabling pipeline-level abstraction over model selection.

## Key Aspects

- **Abstraction Layer**: Generators wrap LLM API calls so the pipeline remains backend-agnostic; swapping from OpenAI to a local model requires only changing the generator component
- **OpenAIGenerator**: Supports GPT-3.5/GPT-4 with streaming callbacks and custom parameters
- **HuggingFaceLocalGenerator**: Runs models locally via the HuggingFace Transformers library
- **HuggingFaceTGIGenerator**: Connects to HuggingFace Text Generation Inference endpoints for hosted inference
- **Pipeline Integration**: Generators receive structured prompts from PromptBuilder and return generated text; the two are connected via Haystack's Pipeline API

## Related Concepts
- [[generative-modeling]]
- [[gans]]

## Sources
- [[rag-pipelines-from-scratch]]
