---
created: 2026-04-28
updated: 2026-04-28
tags: [source, tool, gpu]
sources: 1
---

# Pico GPU

## Metadata

- **Author**: Nicolas Cannasse
- **Date**: N/A
- **URL**: https://ncannasse.github.io/picogpu/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/Pico GPU.md`

## Summary

Pico GPU is a 300KB memory GPU for learning and experimenting with shaders. It supports 3D rendering and GPU-based sound synthesis in a constrained environment.

## Key Takeaways

- 640×480 at 60FPS, 24-bit depth, 8-bit stencil.
- 300KB GPU memory for textures, buffers, code, and shaders.
- 4-channel mono 32-bit sound synthesis at 48KHz via GPU shaders.
- Supports blending, culling, depth, stencil, clipping, render targets, instancing.
- Save/load entire app state as a 640×480 PNG screenshot.

## Entities Mentioned

- Nicolas Cannasse — creator

## Concepts Mentioned

- [[pico-gpu|GPU programming]] — educational embedded GPU
- Shaders — graphics programming
- Sound synthesis — GPU-based audio

## Questions / Follow-ups

- What educational use cases exist for a constrained 300KB GPU?
