---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, project, hardware, education, machine-learning]
sources: 2
---

# TinyTPU

## Summary

TinyTPU is a student-built toy Tensor Processing Unit (TPU) implemented from scratch using Verilog, designed to demonstrate how ML accelerator hardware works at a fundamental level. The project implements a systolic array with pipelining, double buffering, and a weight-stationary dataflow architecture. It successfully demonstrates both forward and backward passes on a simple XOR neural network, making it a valuable educational project for understanding the intersection of hardware design and machine learning.

## Key Attributes

- **Type**: Educational hardware project
- **Notable for**: Complete TPU implementation in Verilog including systolic array, pipelining, and backpropagation support
- **Technology**: Verilog HDL, FPGA-targeted
- **Other facts**: Implements weight-stationary dataflow; demonstrates XOR neural network training; showcases how matrix multiply units (the core of neural network computation) map to hardware

## Related Entities

- [[tensor]] — the core data structure TPU is designed to process efficiently
- [[tpu]] — the category of ML accelerator TinyTPU is modeled after
- [[nvidia]] — company whose GPUs dominate ML compute, providing context for why TPU research matters
- [[aws-inferentia]] — another custom ML accelerator in the broader hardware ecosystem

## Related Concepts

- [[systolic-array]] — the compute architecture at the heart of TinyTPU
- [[hardware-acceleration]] — TinyTPU demonstrates the principle of purpose-built ML hardware
- [[hardware-design]] — TinyTPU is a practical hardware design project
- [[cuda-programming]] — GPU programming paradigm that TPU-style hardware aims to complement
- [[matrix-multiplication]] — the fundamental operation TinyTPU accelerates

## Sources

- [[077_tiny-tpu]] — the original source article describing the TinyTPU project
- [[tiny-tpu-the-why-and-how]] — detailed explanation of the TinyTPU's design and motivation

## Contradictions / Open Questions

- (none)
