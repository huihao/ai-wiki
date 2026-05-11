---
created: 2026-04-28
updated: 2026-04-28
tags: [architecture, long-context, transformer]
sources: 0
---

# Transformer-XL

## Definition

Transformer-XL is a transformer architecture designed to handle very long sequences by using segment-level recurrence. Instead of processing sequences in isolated fixed-length chunks, Transformer-XL caches hidden states from previous segments and allows attention over current segment plus cached states. This enables dependencies spanning many segments without quadratic memory growth.

## Key Innovations

- **Segment-level recurrence**: Cache and reuse previous segment states
- **Relative position encodings**: Encode position relative to current token, not absolute
- **Long-range dependency**: Can model dependencies across hundreds of segments
- **Efficiency**: Linear memory growth with segment count

## Related Concepts

- [[transformers]] — extends standard transformer
- [[position-embedding|Position Embedding]] — uses relative instead of absolute
- [[long-context-llms|Long Context LLMs]] — precursor to modern long-context models
- [[attention-mechanisms]] — modifies attention for segment recurrence

## Sources

- [[transformers-from-scratch]] — describes Transformer-XL approach

## Evolution

- **2019**: Transformer-XL introduced for long sequences
- **2020+**: Influences later long-context architectures
- **Modern**: Relative encodings used in RoPE and other position methods