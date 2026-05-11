---
url: "https://www.suryasure.com/articles/breaking-down-turboquant"
---

# TurboQuant

Google's KV cache compression algorithm achieving 6× compression while preserving ~98% attention accuracy.

## Overview

TurboQuant compresses the KV cache through:
1. **PolarQuant** - Orthogonal matrix normalization to Beta distribution
2. **Lloyd-Max quantization** - Optimal bucket placement
3. **QJL projection** - Lower-dimensional encoding with sign storage

## The Problem

### Naive Quantization Issues

Direct quantization of KV cache fails because:
- Outliers cause imprecise buckets
- Large values dominate scale calculation
- Small values get compressed into few buckets
- Example: [0.1, -0.2, 8.0, 0.4] distorted by 8.0 outlier

### KV Cache Storage

During prefill, models must store full KV cache for decode phase, requiring large memory footprint.

## PolarQuant: The Solution

### Orthogonal Matrix Multiplication

Multiply KV matrix with orthogonal matrix to:
- Normalize values into Beta distribution
- Shatter outliers across all dimensions
- Preserve inner products (critical for attention)
- Enable precise quantization buckets

### Mathematical Blender Effect

Instead of outlier sitting in one spot ruining buckets:
- Multiplication smears outlier value across dimensions
- Every dimension gets small portion of outlier
- Values become evenly distributed

### Matrix Types

**Hadamard matrix:**
- Made of 1s and -1s
- Eliminates need for multiplication (just sums)
- Good for devices with less parallel compute

**Random orthogonal matrix:**
- Regular values
- Easier on production GPUs
- Standard matrix multiply

### Process

1. Normalize matrix to unit vector (prevent large buckets)
2. Store norm for later use
3. Multiply with orthogonal matrix O
4. Result: evenly distributed values

## Quantization

### Lloyd-Max Algorithm

Optimal bucket placement for bell-curve data:

1. Choose n random centroids on bell curve
2. Create boundaries halfway between points
3. Calculate mean of each bucket
4. Move centroids toward center of mass
5. Adjust boundaries to halfway positions
6. Iterate until MSE minimized

### Why Lloyd-Max Works

Uniform distribution fails for LLMs because:
- Most values concentrated near zero
- Central Limit Theorem effect
- Few outliers would dominate uniform buckets

Lloyd-Max creates denser buckets near zero, sparse buckets for outliers.

### Storage Optimization

Instead of storing quantized values:
- Store binary indices of buckets (e.g., [11, 11, 11, 10])
- Keep dictionary of bucket values in SRAM
- Retrieve values during decode

### Compression Example

Original: 16 bits × 4 values = 64 bits

Quantized:
- 2-bit indices × 4 = 8 bits
- Bucket dictionary: small overhead
- **8× reduction** in storage

## QJL Projection

### The Problem

Need to compute `Attention = Q × K_reconstructed^T`

But storing full K matrix defeats compression purpose.

### The Solution

Compress K into lower-dimensional space:
1. Initialize random matrix J
2. Multiply K by J (fewer dimensions)
3. Store only sign of each element (+ → 1, - → 0)
4. Keep FP16 error norm

### Storage

- Binary signs: 2 bits per element
- FP16 norm: 16 bits
- Massive compression vs full K matrix

## Decode Phase

### Attention Calculation

Need to compute:
```
Attention = Q × K_reconstructed^T + corrections
```

### Step-by-Step

1. **Dot product with reconstructed K:**
   ```
   Q × (quantized_K × O^T × norm)
   ```

2. **QJL correction:**
   - Can't directly compute Q × s (dimension mismatch)
   - Project Q to same dimension: Q × J
   - Now dimensions match for dot product

3. **Sign-only computation:**
   ```
   (Q × J) · s
   ```
   - s values are only +1 or -1
   - No multiplication needed!
   - Just MUX to choose add or subtract
   - Accumulate result

4. **Scaling correction:**
   ```
   correction = (Q×J · s) × norm × sqrt(1/D)
   ```
   - Restore magnitude stripped by sign function
   - Expected value of normal: sqrt(2/pi)
   - Normalize over dimension D

5. **Final attention:**
   ```
   Attention = Q×K_reconstructed + correction
   ```

## Accuracy Results

### Toy Example

Original attention: 5.04

TurboQuant reconstructed: 5.04

Exact match in toy example.

### Large Matrices

Real-world accuracy: ~98%

Minor error acceptable given 6× compression.

## Key Insights

### Mathematical Tricks

1. **Orthogonal transformation** preserves inner products while normalizing distribution
2. **Lloyd-Max** optimizes bucket placement for bell-curve data
3. **Sign storage** eliminates multiplication, uses only addition/subtraction
4. **Dimension projection** enables compressed representation while maintaining accuracy

### Practical Benefits

- 6× KV cache compression
- 98% attention accuracy preserved
- Decode phase requires only:
  - Binary indices
  - Bucket dictionaries
  - FP16 norms
  - Sign vectors

### Hardware Optimization

MUX-based accumulation:
- No GPU multiplication
- Only add/subtract operations
- Faster than full precision in some cases

## Implementation

Apply for every head in every layer during prefill. Retrieve compressed values during decode.

## Related Concepts

- KV Cache Compression
- Quantization
- PolarQuant
- Lloyd-Max Algorithm
- QJL Projection
- Attention Optimization