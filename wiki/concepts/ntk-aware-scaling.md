# NTK-Aware Scaling

Frequency-based context extension modifying RoPE base frequency instead of position indices, addressing local distinction loss in linear interpolation.

## Problem with Linear Interpolation

Position interpolation compresses positions linearly:
- Adjacent tokens become harder to distinguish
- Position 100,101,102,103 → 25.0, 25.25, 25.5, 25.75
- Fine-grained distinctions lost at high compression ratios
- Catastrophic at high compression factors

## NTK Insight

Modify RoPE base frequency instead of positions:
```
base_new = base × α^(d/(d-2))
```

- α: context extension factor (e.g., 8 for 2K→16K)
- d: hidden dimension
- base: original base (typically 10000)

## Key Difference

**Position Interpolation**: Compress position indices, frequencies fixed
**NTK Scaling**: Keep position indices, adjust rotation frequencies

RoPE frequencies: θ_i = base^(-2i/d)

Increasing base slows down all rotation frequencies proportionally. This preserves local token distinctions better than compressing positions.

## Implementation

Remarkably simple—three lines:
```python
def compute_ntk_parameters(dim, factor=8, base=10000):
    base_new = base * factor ** (dim / (dim - 2))
    inv_freq = 1.0 / (base_new ** (torch.arange(0, dim, 2).float() / dim))
    return inv_freq
```

## Performance

Better perplexity than linear interpolation across extended contexts without any fine-tuning.

## Discovery

Reddit user bloc97 (2023) discovered approach using Neural Tangent Kernel theory.

## Limitation

Fixed scaling still problematic—single factor suboptimal across all frequency components.

## Related Concepts

- [[position-interpolation]] — Alternative approach scaling positions
- [[dynamic-scaling]] — Adaptive scaling based on sequence length
- [[ntk-by-parts]] — Frequency-aware blending strategy
- [[yarn]] — Combined NTK-by-parts + temperature scaling

## Related Sources

- [[how-llms-scaled-from-512-to-2m-context]] — Performance comparison graphs