---
created: 2026-04-27
updated: 2026-04-27
tags: [source, documentation, programming-language]
sources: 1
---

# Mojo Manual

## Metadata

- **Author**: Modular Inc.
- **Date**: 2026-03-19
- **URL**: https://docs.modular.com/mojo/manual/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/Mojo Manual _ Modular.md`

## Summary

Official documentation for the Mojo programming language — a systems language for AI infrastructure built on MLIR. Covers language basics, Python interop, structs, traits, value semantics, ownership, parameterization, and GPU programming.

## Key Takeaways

- Mojo is positioned as the successor to Python for AI/ML production workloads.
- Built by Chris Lattner (LLVM, Swift creator) at Modular.
- Key differentiator: single language from high-level AI apps down to GPU kernels, no CUDA/ROCm needed.
- Full bidirectional Python interoperability — can import Python libraries and expose Mojo code to Python.
- Value ownership system provides memory safety without garbage collector overhead.

## Entities Mentioned

- [[mojo-manual|Mojo]] — the programming language
- Modular Inc. — the company
- Chris Lattner — founder, creator of LLVM and Swift

## Concepts Mentioned

- MLIR — compiler infrastructure
- [[python-numpy-tutorial|Python]] — interoperability target
- [[cuda]] — target for replacement

## Raw Notes

- The manual is comprehensive but the ecosystem is still early. Best evaluated alongside Python for specific performance-critical AI infrastructure needs.
