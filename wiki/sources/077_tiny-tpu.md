---
created: 2026-04-29
updated: 2026-04-29
tags: [source, tpu, hardware, systolic-array, verilog, ml-accelerator]
sources: 1
url: "https://www.tinytpu.com/"
title: "Tiny TPU"
---

# Tiny TPU

## Summary

A student project building a "toy" TPU (Tensor Processing Unit) from scratch to understand how ML accelerators work. The team designed the TPU using Verilog, implementing a systolic array for matrix multiplication, pipelining, double buffering, and weight-stationary dataflow. The project demonstrates both forward and backward passes on a simple XOR neural network, with a philosophy of "always try the hacky way first" to re-invent rather than reverse-engineer.

## Key Takeaways
- TPU is an ASIC optimized for matrix multiplications (80-90% of transformer compute, 70-80% of CNN compute)
- Systolic array is the heart of a TPU: PEs connected in a grid perform multiply-accumulate operations
- Weight-stationary dataflow: weights are loaded once and reused across multiple inputs
- Double buffering (inspired by video game screen tearing prevention) allows continuous inference by hiding weight-loading latency
- Pipelining splits operations into stages (bias, activation) that overlap like an assembly line
- Verilog is a hardware description language that synthesizes into boolean logic gates
- The project was built without AI assistance as an exercise in "cultivating a style of thinking"
- The XOR problem (hello world of neural networks) served as the test case

## Entities Mentioned
- [[tinytpu]]

## Concepts Mentioned
- [[tpu]]
- [[systolic-array]]
- [[matrix-multiplication]]
- [[pipelining]]
- [[double-buffering]]
- [[gradient-descent]]
- [[perceptron]]
