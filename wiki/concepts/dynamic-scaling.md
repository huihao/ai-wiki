# Dynamic NTK Scaling

Adaptive context extension adjusting scaling factor based on actual sequence length, eliminating choice between short vs long sequence performance.

## Problem with Fixed Scaling

Both Position Interpolation and NTK-aware use fixed scaling factors:
- Position Interpolation: single compression ratio
- NTK-aware: single base frequency modification
- Suboptimal across varying sequence lengths
- Need different scaling for different lengths

## Dynamic Scaling Formula

Adjust factor based on sequence length:
```
dynamic_factor = (α × seq_len / original_context) - (α - 1)
```

Examples with α=8, original_context=2048:
- seq_len=2048: factor = (8 × 1) - 7 = 1.0 (no modification)
- seq_len=4096: factor ≈ (8 × 2) - 7 = 9
- seq_len=16384: factor = (8 × 8) - 7 = 57

Applied to base: base_new = base × dynamic_factor^(d/(d-2))

## Key Benefits

- Automatically adapts from short to long sequences
- No single factor decision needed
- At original context length: no modification (factor=1)
- At extended lengths: appropriate scaling emerges

## Production Adoption

Qwen models use Dynamic NTK-aware scaling for strong performance across all context lengths (Qwen Team 2023).

## Implementation

Can be implemented at inference time without model modifications:
```python
def compute_dynamic_ntk(seq_len, original_max, factor=8, base=10000, dim=64):
    dynamic_factor = (factor * seq_len / original_max) - (factor - 1)
    if dynamic_factor <= 1:
        return compute_default_rope_parameters(dim, base)
    base_new = base * dynamic_factor ** (dim / (dim - 2))
    return compute_ntk_parameters(dim, dynamic_factor, base_new)
```

## Discovery

Reddit user emozilla (2023) proposed adaptive solution.

## Performance

Best overall perplexity across all context lengths without fine-tuning, avoiding catastrophic failure of static methods.

## Related Concepts

- [[ntk-aware-scaling]] — Base method dynamic extends
- [[position-interpolation]] — Alternative fixed scaling approach
- [[ntk-by-parts]] — More sophisticated frequency-aware approach

## Related Sources

- [[how-llms-scaled-from-512-to-2m-context]] — Performance comparison showing dynamic advantages