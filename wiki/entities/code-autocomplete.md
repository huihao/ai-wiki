---
created: 2026-04-29
updated: 2026-05-09
tags: [entity]
sources: 1
---

# Code Autocomplete

## Summary
Code autocomplete is an AI-powered developer tool feature that suggests code completions as a developer types. Modern code autocomplete systems use large language models trained on code repositories to predict likely next tokens, function bodies, or multi-line code blocks. Leading implementations include GitHub Copilot, Cursor's completions, and local completions via models served through Ollama.

## Key Attributes
- **Type**: concept/tool-category
- **Notable for**: dramatically increasing developer productivity by reducing boilerplate and suggesting contextually relevant code
- **Other facts**: early autocomplete was based on simple pattern matching and syntax parsing; modern systems use LLMs for intelligent, context-aware suggestions; latency is a critical factor -- local models can offer faster completions; privacy concerns arise when code is sent to cloud APIs for completion

## Related Entities
- [[github-copilot]] -- GitHub's AI code autocomplete tool powered by OpenAI Codex
- [[cursor]] -- an AI-native code editor with built-in code completion
- [[ollama]] -- a tool for running local LLMs that can power code autocomplete
- [[vs-code]] -- VS Code supports code autocomplete through extensions like Copilot

## Related Concepts
- [[ai-coding-tools]] -- the broader category of AI-assisted development tools
- [[ai-programming-assistant]] -- AI tools that assist with various programming tasks
- [[code-generation-with-llms]] -- using LLMs to generate code
- [[llm-inference]] -- the inference process that powers real-time code suggestions

## Sources
- [[setting-up-local-llm-macos-ollama-continue-vscode]] -- covers setting up local LLM-based code autocomplete using Ollama and Continue in VS Code

## Contradictions / Open Questions
- The quality vs. latency trade-off remains unresolved: larger models produce better suggestions but may introduce noticeable delay. Local deployment reduces latency and privacy concerns but may sacrifice completion quality compared to cloud-hosted models.
