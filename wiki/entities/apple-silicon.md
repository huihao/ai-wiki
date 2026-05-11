---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, hardware, ai, semiconductor]
sources: 3
---

# Apple Silicon

## Summary
Apple Silicon refers to Apple's family of custom ARM-based system-on-a-chip (SoC) processors designed in-house, starting with the M1 in 2020. These chips integrate CPU, GPU, Neural Engine, and unified memory architecture into a single package, delivering high performance-per-watt. Apple Silicon has made on-device AI inference practical on Macs, enabling local execution of large language models through unified memory that allows the GPU to access the full RAM pool.

## Key Attributes
- **Type**: hardware platform (custom SoC)
- **Notable for**: unified memory architecture enabling local LLM inference on consumer hardware
- **First release**: M1, November 2020
- **Current family**: M1, M2, M3, M4, and their Pro/Max/Ultra variants
- **Architecture**: ARM-based, designed by Apple

## Related Entities
- [[apple]] — parent company
- [[nvidia]] — competitor in GPU/AI accelerator space

## Related Concepts
- [[local-llm]] — Apple Silicon's unified memory makes it a popular platform for running local LLMs
- [[llm-inference]] — on-device inference enabled by Neural Engine and GPU cores

## Sources
- [[setting-up-local-llm-macos-ollama-continue-vscode]] — using Apple Silicon for local LLM development
- [[benchmarks-epoch-ai]] — performance benchmarks on various hardware

## Contradictions / Open Questions
- Performance comparisons with NVIDIA consumer GPUs for LLM inference vary significantly by model size
