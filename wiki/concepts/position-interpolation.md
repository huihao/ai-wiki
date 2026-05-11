# Position Interpolation

Context extension technique compressing position indices to stay within training range instead of extrapolating to positions model never saw, enabling 2K→32K+ context scaling.

## Core Insight

Models memorize position encodings rather than learning position mathematics:
- Extrapolation to position 1025 creates encoding patterns never seen during training
- Catastrophic failure: attention patterns wildly unstable outside training distribution
- Solution: Don't extrapolate—interpolate within learned range

## Mathematical Formulation

Replace RoPE f by f' with position scaling:
```
f'(x, m) = f(x, mL/L')
```

- L: original context window (e.g., 2048)
- L': target context window (e.g., 8192)
- Scale position indices from [0, L') to [0, L)

Position 8192 maps to 2047.75, staying within [0, 2048] training range.

## Implementation

HuggingFace implementation scales inverse frequencies:
```python
inv_freq /= factor  # factor = L'/L
```

Since embs = inv_freq @ position_ids, scaling inverse frequencies is mathematically equivalent to scaling positions.

## Discovery History

**kaiokendev breakthrough** (before Meta paper):
- Inspired by Ofir Press's ALiBi TED talk
- After month of experimentation: "stop fighting model's learned behavior"
- Scale RoPE frequencies by 0.25 (4x extension)
- Without finetuning: coherent to 7000 tokens
- Minimal finetuning: 400 samples pushed to 6K+ context

**Meta formalization**:
- Published Position Interpolation paper analyzing kaiokendev's approach
- Demonstrated 2K→8K-32K extension with simple scaling

## Visual Evidence

Extrapolation vs interpolation:
- Extrapolation: attention scores explode beyond 8000 (catastrophic)
- Interpolation: stays smooth and well-behaved within training range

## Limitation

Linear compression loses fine-grained distinctions:
- Adjacent tokens become harder to distinguish at high compression ratios
- Position 100-103 compresses to 25.0, 25.25, 25.5, 25.75
- High compression ratios problematic for local patterns

## Related Concepts

- [[rope]] — Base encoding method being scaled
- [[ntk-aware-scaling]] — Alternative modifying base frequency instead of positions
- [[dynamic-scaling]] — Adaptive scaling based on sequence length
- [[yarn]] — Combined interpolation + temperature scaling

## Related Sources

- [[how-llms-scaled-from-512-to-2m-context]] — Comprehensive evolution guide with kaiokendev story