---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, reference, programming-language, mojo]
---

# Mojo Manual

Official documentation for the Mojo programming language by Modular, covering language features from Python-compatible syntax through systems-level programming.

## Summary

The Mojo Manual is the comprehensive reference for Mojo — the first language built from the ground up using MLIR for heterogeneous hardware (CPUs, GPUs, AI ASICs). It covers everything needed to write high-performance Mojo code, from Python interop through ownership, SIMD, and GPU programming.

## Key Topics

- **Python Interop**: Full bidirectional interop with existing Python code and libraries
- **Struct-Based Types**: All types defined as structs (no built-in types); custom types have same capabilities as standard library
- **Zero-Cost Traits**: Interface-like contracts with compile-time type checking and no runtime overhead
- **Value Ownership**: Ownership system ensuring single-owner deallocation without garbage collection (similar to Rust)
- **Compile-Time Metaprogramming**: Template-like parameterization that generates unique type/function versions
- **Hardware Portability**: No hardware assumptions; behaviors handled by libraries (SIMD, gpu package)

## Getting Started

- Install Mojo and build a complete program
- GPU programming tutorial
- GPU puzzles for increasingly complex challenges

## Related Entities

- [[modular|Modular]] — company behind Mojo

## Related Concepts

- [[python|Python]] — Mojo is a superset of Python
- [[mlir|MLIR]] — compiler infrastructure behind Mojo

## Sources

- [[mojo-manual]]
