# Padding Masks

Masking technique in self-attention preventing padding tokens from affecting other token representations during batch processing of variable-length sequences.

## Purpose

Batch processing requires uniform sequence lengths. Padding tokens (<PAD>) added to shorter sequences become most frequent tokens, risking:
- Models learning spurious patterns from pad tokens
- Pad tokens dominating learned representations
- Semantic contamination from meaningless filler tokens

## Implementation

Mask applied to QK^T matrix before softmax:
- Apply -∞ to **key columns** corresponding to pad positions
- **Not** query rows—pad tokens retain their identity
- After softmax: masked columns become 0 attention weight
- Other tokens unaffected by pad token representations

## Why Columns, Not Rows?

Query rows not masked because:
- If D^Q was masked, D's representation would lose all information (uniform weights)
- Goal: prevent pad tokens from affecting others, not erasing pad token identity
- Model should still know "there's a pad token here" for position awareness
- Just don't want pad tokens creating spurious relationships

## Example

Sequence: "I like coffee <PAD>"
- Token D is <PAD> at position 3
- Mask column D^K with -∞
- Rows a^Q, b^Q, c^Q don't include D^K component in their representations
- Row D^Q still exists with information about pad position

## Related Concepts

- [[self-attention-masks]] — General masking mechanism
- [[look-ahead-masks]] — Different mask pattern for autoregressive models
- [[scaled-dot-product-attention]] — Attention computation modified by masks

## Related Sources

- [[how-do-self-attention-masks-work]] — Detailed matrix visualization