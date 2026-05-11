---
created: 2026-04-29
updated: 2026-05-09
tags: [machine-learning]
sources: 1
---

# MLIR

## Definition

MLIR (Multi-Level Intermediate Representation) is a compiler infrastructure framework designed to build reusable and extensible compiler components for machine learning workloads. Created by Chris Lattner (also the creator of LLVM and Swift) at Modular Inc., MLIR serves as the compilation backbone for the Mojo programming language, enabling a single language to target everything from high-level AI applications down to GPU kernels.

## Key Aspects

- **Compiler infrastructure for AI**: MLIR provides a unified intermediate representation that bridges high-level ML abstractions with low-level hardware execution
- **Mojo integration**: The Mojo programming language is built on MLIR, positioning it as a successor to Python for AI/ML production workloads
- **No CUDA/ROCm needed**: MLIR-based compilation eliminates the need for separate GPU programming frameworks by generating optimized code across hardware targets
- **Multi-level optimization**: Enables optimizations at different abstraction levels, from graph-level transformations down to instruction-level scheduling
- **Extensible dialect system**: MLIR uses "dialects" to represent operations at various abstraction levels, allowing custom extensions for specific hardware or domains
- **Python interoperability**: MLIR-based languages like Mojo maintain full bidirectional Python compatibility while offering systems-level performance
- **Created by LLVM/Swift inventor**: Chris Lattner's experience building LLVM and Swift directly informed MLIR's design principles for reusability and extensibility

## Related Concepts

- [[mojo]]
- [[compiler-infrastructure]]
- [[llvm]]
- [[gpu-programming]]

## Sources

- [[mojo-manual]]
