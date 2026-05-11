---
created: 2026-04-28
updated: 2026-04-28
tags: [audio, gpu, shaders, sound]
sources: 1
---

# Sound Synthesis

## Definition

Sound synthesis refers to the generation of audio signals through computational methods. GPU-based sound synthesis, as demonstrated by Pico GPU, uses GPU shader programs to generate audio in parallel, enabling real-time synthesis of complex soundscapes directly on GPU hardware rather than traditional CPU-based audio engines.

## Key Approaches

- **Traditional**: CPU-based synthesis with dedicated audio engines
- **GPU-based**: Shader program execution for parallel audio generation
- **Real-time**: 48 KHz 32-bit audio generation via GPU kernels

## Related Concepts

- GPU Programming — shader-based audio computation
- Shader Programming — writing GPU programs for audio synthesis
- 3D Rendering — combination of graphics and audio in unified GPU environment
- Audio Processing — digital signal processing for sound generation

## Sources

- [[pico-gpu]] — demonstration of GPU-based 4-channel sound synthesis at 48 KHz

## Applications

- Game audio engines
- Real-time music synthesis
- Audio-visual demos
- Educational environments for audio programming

## Questions

- How does GPU-based synthesis compare to traditional audio engines?
- What are performance characteristics for complex synthesis?
- Can GPU synthesis replace dedicated audio hardware?