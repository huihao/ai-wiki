---
created: 2026-04-29
updated: 2026-05-09
tags: [nlp]
sources: 1
---

# Attention Temperature

## Definition
Attention temperature is a scaling factor applied to the logits (attention scores) before the softmax function in transformer self-attention, controlling how sharply or softly the model distributes attention across tokens. Lower temperature concentrates attention on fewer tokens (more deterministic), while higher temperature spreads attention more evenly (more uniform).

## Key Aspects
- **Scaled dot-product attention**: The standard formula divides QK^T by sqrt(d_k); temperature modifies this scaling to control distribution sharpness
- **Low temperature** (T < 1): Sharpens attention, focusing on the most relevant tokens; produces more deterministic, less diverse outputs
- **High temperature** (T > 1): Softens attention, spreading focus more evenly; introduces more variation and exploration
- **Temperature = 1**: Default behavior; the standard softmax scaling used in original transformer architectures
- **Interplay with sampling**: Temperature at the attention layer differs from decoding temperature, but both affect output diversity and coherence
- **Long-context extrapolation**: Techniques like YaRN adjust temperature and attention scaling to extend context window length beyond training limits

## Related Concepts
- [[transformers]] -- the architecture where attention temperature is applied
- [[sampling-from-distributions]] -- related decoding-time temperature parameter
- [[context-window]] -- attention temperature interacts with context length management

## Sources
- [[yarn]]
