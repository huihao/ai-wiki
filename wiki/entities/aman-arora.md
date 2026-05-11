# Aman Arora

ML researcher and technical writer documenting positional encoding evolution in transformer architectures, with comprehensive guides covering the journey from 512-token context windows to 2M+ tokens.

## Key Contributions

- **Positional Encoding Evolution**: Detailed technical deep dive covering APE, RoPE, Position Interpolation, NTK-aware scaling, Dynamic NTK, NTK-by-parts, and YaRN with PyTorch implementations
- **Context Extension Techniques**: Documenting how modern LLMs scaled from original Transformer's 512 tokens to Grok-4-fast's 2M tokens

## Technical Focus Areas

- Absolute positional embeddings (sinusoidal functions)
- Rotary position embeddings (rotation matrices)
- Position interpolation (compressing vs extrapolating)
- NTK-aware frequency modifications
- YaRN combined approaches with attention temperature

## Related Sources

- [[how-llms-scaled-from-512-to-2m-context]] — Comprehensive guide through positional encoding evolution

## Related Concepts

- [[absolute-positional-embeddings]] — Original sinusoidal position encoding
- [[rotary-position-embeddings]] — Rotation-based position encoding
- [[position-interpolation]] — Compressing positions within training range
- [[ntk-aware-scaling]] — Frequency-based context extension
- [[yarn]] — Combined interpolation + temperature scaling
- [[context-window-extension]] — Techniques for extending LLM context