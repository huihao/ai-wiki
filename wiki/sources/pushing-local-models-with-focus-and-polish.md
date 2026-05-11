---
created: 2026-05-09
updated: 2026-05-09
tags: [source, local-llm, inference, coding-agents]
sources: 1
---

# Pushing Local Models With Focus And Polish

## Metadata

- **Author**: [[armin-ronacher|Armin Ronacher]]
- **Date**: 2026-05-08
- **URL**: https://lucumr.pocoo.org/2026/5/8/local-models/
- **Fetched**: 2026-05-09
- **Raw file**: Clippings/Pushing Local Models With Focus And Polish.md

## Summary

Armin Ronacher (creator of Flask) argues that local model inference needs focus and polish rather than more fragmentation. He identifies the gap between "runnable" and "finished" local model experiences, highlights tool parameter streaming as a critical missing feature, and presents his ds4.c + pi-ds4 experiment: a deliberately narrow inference engine for DeepSeek V4 Flash on high-RAM Macs, embedded directly into the Pi coding agent with zero configuration.

## Key Takeaways

- **Runnable ≠ finished**: Local models are runnable but not polished. The gap between putting an API key into Pi (boring, easy) versus setting up local inference (engine → model → quant → template → context size → JSON configs) is the core UX problem.
- **Tool parameter streaming is critical**: Most local inference doesn't stream tool call parameters, meaning you can't see what edits are happening until the entire tool call finishes. This makes dead connections indistinguishable from slow ones and prevents interruption.
- **Fragmentation is the enemy**: llama.cpp, Ollama, LM Studio, MLX, Transformers, vLLM — too many options create a "bag of choices" that most users can't navigate, resulting in neither fair model evaluation nor polished product experience.
- **Pick one winner and polish it**: Hosted providers don't ship a bag of weights and ask you to figure out the rest. Local models need the same "pick one config and make it work perfectly" mentality. Bugs anywhere in the stack should be treated as product bugs.
- **ds4.c**: Salvatore Sanfilippo's (antirez) deliberately narrow inference engine for DeepSeek V4 Flash on Macs with 128GB+ RAM only. Not a generic runner — model-specific native engine with Metal path, model-specific loading, prompt rendering, KV handling, and SSD KV cache offloading.
- **pi-ds4**: Ronacher's Pi extension that embeds ds4.c directly into Pi, auto-compiling, downloading, starting/stopping the server, choosing quantization, and managing the lifecycle with zero configuration.
- **DeepSeek V4 Flash properties**: Large enough to feel different from small dense models, sparse enough for local inference, very large context window, suitable for SSD KV cache offloading.

## Entities Mentioned

- [[armin-ronacher]] — Flask creator, Pi advocate, author
- [[pi]] — Minimal coding agent framework
- [[ds4-c|ds4.c]] — antirez's DeepSeek V4 Flash inference engine
- [[pi-ds4]] — Pi extension embedding ds4.c
- [[llamacpp]] — mentioned as existing fragmentation
- [[ollama]] — mentioned as existing fragmentation
- [[mlx]] — Apple's ML framework for Apple Silicon

## Concepts Mentioned

- [[local-ai|Local AI]] — running LLMs on consumer hardware
- [[model-quantization|Quantization]] — compression for local inference
- [[tool-parameter-streaming|Tool Parameter Streaming]] — streaming tool call params during inference
- [[coding-agent-ux|Coding Agent UX]] — the polish gap in local model experiences
- [[kv-cache|KV Cache]] — key-value cache for inference, including SSD offloading

## Questions / Follow-ups

- How does ds4.c's performance compare to llama.cpp + Qwen3 on the same hardware?
- Will tool parameter streaming become standard across local inference engines?
- What hardware configurations beyond Mac 128GB+ could benefit from this focused approach?
