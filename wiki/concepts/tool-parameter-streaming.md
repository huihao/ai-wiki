---
created: 2026-05-09
updated: 2026-05-09
tags: [inference, llm]
sources: 1
---

# Tool Parameter Streaming

## Definition

Tool parameter streaming is the ability of an LLM inference server to emit tool call parameters (function name, arguments) incrementally as tokens become available, rather than buffering the entire tool call until completion. This is analogous to token streaming for text output but applied to structured tool call JSON.

## Why It Matters

Without tool parameter streaming:

- **Dead connection ambiguity**: Local models are slow; with no tokens for 5 minutes, you can't tell if the connection died or the model is just thinking. Inactivity timeouts become meaningless.
- **No visibility into agent actions**: You can't see what bash command or file edit the model is constructing until the entire tool call is complete, preventing interruption of potentially harmful actions.
- **Wasted tokens**: If you spot an incorrect tool call mid-stream, you can't interrupt — the full call completes before you see it.

## Current State

Most local inference engines do not support tool parameter streaming, despite the completions API supporting it. Hosted providers (OpenAI, Anthropic) generally do support it. This is cited as a critical gap in local model UX for coding agents.

## Related Concepts

- [[local-ai|Local AI]] — tool parameter streaming is a key missing feature in local inference
- [[coding-agent-ux|Coding Agent UX]] — streaming affects agent interaction quality

## Sources

- [[pushing-local-models-with-focus-and-polish]]
