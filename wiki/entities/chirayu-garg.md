---
created: 2026-04-28
updated: 2026-04-28
tags: [entity, person]
---

# Chirayu Garg

## Overview

NVIDIA engineer and author of technical blog post on GPU memory oversubscription performance analysis. Expertise in CUDA Unified Memory and GPU performance optimization.

## Key Contributions

- Comprehensive benchmarking of Unified Memory oversubscription performance
- Analysis of three access patterns: grid stride, block stride, random warp
- Evaluation across multiple hardware platforms (V100, A100, Power9)
- Development of optimization strategies for memory management

## Technical Insights

Identified critical performance factors:

1. **Access pattern impact** — Block stride outperforms grid stride in oversubscription scenarios
2. **Hardware sensitivity** — More SMs generate more page faults, improving migration
3. **Zero-copy benefits** — Direct system memory access eliminates migration overhead
4. **Page size matters** — 2MB pages optimal for GPU MMU operations
5. **Alignment importance** — 128-byte warp alignment critical for performance

## Related Concepts

- [[unified-memory|Unified Memory]] — Core expertise area
- [[gpu-oversubscription|GPU Memory Oversubscription]] — Main research topic
- [[cuda|CUDA]] — Programming platform focus
- [[zero-copy|Zero-Copy Memory]] — Optimization strategy analyzed

## Affiliations

- NVIDIA — Employer, developer blog author

## Sources

- [[improving-gpu-memory-oversubscription-performance|Improving GPU Memory Oversubscription Performance]] — Primary technical publication