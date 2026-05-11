---
created: 2026-04-29
updated: 2026-05-08
tags: [hardware, optimization, tpu]
---

# Double Buffering

## Definition

Double buffering is a technique borrowed from video game graphics (where it prevents screen tearing) and applied to ML accelerators. In the context of TPUs and systolic arrays, a second "shadow" buffer holds the weights of the next layer while the current layer is being computed. This allows new weights to be loaded during computation, hiding the weight-loading latency and enabling continuous inference across multiple layers.

## How It Works

```
Without double buffering:
[Load W1] → [Compute W1] → [Load W2] → [Compute W2] → ...
              ↑ idle            ↑ idle

With double buffering:
Buffer A: [Load W1] → [Compute W1] → [Load W3] → ...
Buffer B:              [Load W2] →   [Compute W2] → ...
                         ↑ hidden     ↑ hidden
```

The two buffers alternate roles — while one is being used for computation, the other is being filled with the next layer's weights. This eliminates idle cycles between layers.

## Application in ML Accelerators

### TPUs

- Two on-chip weight buffers (SRAM) hold alternating layers
- Weight loading from DRAM overlaps with systolic array computation
- Critical for inference throughput on sequential models

### GPUs

- CUDA streams and double-buffered memory transfers
- Overlaps host-to-device data copies with kernel execution
- Reduces PCIe transfer stalls in inference pipelines

## Memory Trade-off

Double buffering requires 2× the on-chip memory compared to single buffering:
- For a TPU with limited SRAM, larger buffers reduce the number of weight tiles that fit
- Tile size must balance: enough tiles per layer to saturate the array, but small enough to fit two layers in SRAM

## Key Proponents

- The concept dates to graphics hardware (Sega Genesis, 1988); adapted for ML accelerators by Google's TPU team

## Related Concepts

- [[pipelining|Pipelining]] — double buffering enables pipelined execution by hiding load latency
- [[systolic-array|Systolic Array]] — the compute unit double buffering is designed around
- [[matrix-multiplication|Matrix Multiplication]] — the operation being accelerated
- [[tpu|TPU]] — primary ML accelerator using double buffering

## Sources

- [[077_tiny-tpu|Tiny TPU]]
- [[tiny-tpu-the-why-and-how]]

## Evolution

- **1988**: Double buffering first used in gaming consoles to eliminate screen tearing
- **2015+**: Adapted for ML accelerator inference pipelines
- **2017**: Google TPU documentation describes double-buffered weight loading as key inference optimization
- **Current**: Standard technique in all ML inference accelerators; combined with pipelining and weight quantization for maximum throughput
