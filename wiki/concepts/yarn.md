# YaRN (Yet Another RoPE Extension)

Context extension method combining NTK-by-parts interpolation with attention temperature scaling, achieving 128K+ contexts with minimal fine-tuning (<400 steps).

## Components

### 1. NTK-by-parts Interpolation
Frequency-aware blending:
- High frequencies: linear interpolation (preserve local patterns)
- Low frequencies: NTK scaling (long-range coherence)
- Ultra-low frequencies: original base (extrapolation)

Uses beta parameters (β₀=32, β₁=1) for smooth transitions between methods via ramp functions.

### 2. Attention Temperature Scaling
Temperature parameter t on logits before softmax:
```
Attention(Q,K,V) = softmax(QK^T / t) × V
```

Temperature formula:
```
t = √(1/s) = 0.1·ln(s) + 1
```
where s is scale factor.

## Why Temperature Scaling Works

Counter-intuitive: higher temperature softens attention distribution (makes it "fuzzier").

Position interpolation compresses positional information, creating artifacts where certain keys get artificially inflated scores. By softening softmax:
- Prevents over-reliance on single high-scoring keys
- Forces model to consider broader range of keys
- Makes decisions more robust to precision loss from compression
- Deliberately making attention "fuzzier" handles compressed positions better

## Implementation Trick

Reparametrization as 2D rotation matrices enables zero-overhead:
- Scale RoPE embeddings by √(1/t)
- Scales both q_m and k_n by constant factor
- Achieves temperature effect without modifying attention code
- No computational cost during inference

## Performance

- Extends to 128K+ tokens with minimal perplexity degradation
- Maintains fine-grained positional discrimination
- Requires <400 training steps (<1% of pretraining compute)
- Adopted by Qwen, DeepSeek, LLaMA, gpt-oss models

## Key Parameters

- **beta_fast** (32): High-frequency cutoff for interpolation
- **beta_slow** (1): Low-frequency cutoff for extrapolation
- **mscale**: Attention temperature scaling factor (typically 1)

## Related Concepts

- [[ntk-by-parts]] — Frequency-aware interpolation component
- [[attention-temperature]] — Softening attention distribution
- [[rope]] — Base encoding being extended
- [[position-interpolation]] — Alternative approach YaRN improves

## Related Sources

- [[how-llms-scaled-from-512-to-2m-context]] — Complete implementation details