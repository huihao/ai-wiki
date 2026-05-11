# Absolute Positional Embeddings (APE)

Original positional encoding method from Transformer (2017) using sinusoidal functions with geometric progression wavelengths to create unique position fingerprints.

## Mathematical Formulation

Each dimension uses sinusoid at different frequency:
```
PE(pos, 2i)   = sin(pos / 10000^(2i/d_model))
PE(pos, 2i+1) = cos(pos / 10000^(2i/d_model))
```

- pos: position in sequence
- i: dimension index
- d_model: embedding dimension
- Wavelengths: geometric progression from 2π to 10000·2π

## Key Properties

### Position Fingerprints
- Each dimension oscillates at different frequency
- Lower dimensions: rapid oscillation (high frequency)
- Higher dimensions: slow oscillation (low frequency)
- Each position gets unique encoding like GPS coordinates

### Relative Position Attention
For fixed offset k, PE(pos+k) can be represented as linear function of PE(pos):
```
PE(pos+k) = LinearTransform(PE(pos))
```
Allows model to learn relative position attention despite absolute encoding.

### Dropout Application
Dropout (P_drop=0.1) applied to sums of embeddings + positional encodings in encoder/decoder stacks.

## Extrapolation Limitation

**Catastrophic failure beyond training positions**:
- Model only sees positions 0..1023 during training
- Position 1025 creates encoding patterns never seen during training
- Attention mechanism has no learned meaning for new positions
- Performance cliff: 10K fine-tuning steps → only ~2560 effective context (targeting 8192)

Models memorize position encodings rather than learning position mathematics.

## Related Concepts

- [[rope]] — Evolution using rotation matrices
- [[position-interpolation]] — Technique to extend beyond training positions
- [[relative-position-attention]] — Ability to attend by relative distance

## Related Sources

- [[how-llms-scaled-from-512-to-2m-context]] — Evolution from APE to modern encodings