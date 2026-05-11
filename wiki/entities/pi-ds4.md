---
created: 2026-05-09
updated: 2026-05-09
tags: [entity, tool]
sources: 1
---

# pi-ds4

## Summary

pi-ds4 is a Pi extension by Armin Ronacher that embeds ds4.c directly into the Pi coding agent, providing zero-configuration local inference for DeepSeek V4 Flash. It auto-compiles, downloads, starts/stops the ds4 server, selects quantization based on hardware, and manages the full lifecycle.

## Key Attributes

- Created by Armin Ronacher (Flask creator)
- Pi extension for ds4.c integration
- Registers `ds4/deepseek-v4-flash` as a provider in Pi
- Auto-downloads, compiles, and starts ds4-server on demand
- Automatic quantization selection based on machine hardware
- Watchdog-based server lifecycle management
- Zero configuration — no knobs exposed yet

## Related Entities

- [[armin-ronacher]] — creator of pi-ds4
- [[ds4-c|ds4.c]] — the underlying inference engine
- [[pi]] — the coding agent framework

## Related Concepts

- [[local-ai|Local AI]] — pi-ds4's core purpose
- [[coding-agent-ux|Coding Agent UX]] — zero-config local inference UX

## Sources

- [[pushing-local-models-with-focus-and-polish]]
