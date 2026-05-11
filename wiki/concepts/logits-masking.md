---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Logits Masking

## Definition

Output control pattern that intervenes during LLM beam search sampling by zeroing out logits of tokens that violate predefined rules. Operates at token-level during generation to prevent undesirable outputs rather than post-generation validation.

## Mechanism

- **Step 1**: Define programmatic rules (keyword blocking, format requirements, brand constraints)
- **Step 2**: During each beam search iteration, examine candidate continuation tokens
- **Step 3**: Set logits to zero for tokens violating rules, removing them from probability distribution
- **Step 4**: Continue generation only with compliant token paths
- **Step 5**: If no valid continuations exist, backtrack to previous state or return refusal

## Implementation

Custom LogitsProcessor class in transformers:

```python
from transformers import pipeline, LogitsProcessor

class CustomLogitsProcessor(LogitsProcessor):
    def __call__(self, input_ids, scores):
        # Implement rule logic here
        # Zero out scores for disallowed tokens
        return modified_scores

pipe = pipeline(
    task="text-generation",
    model=MODEL_ID,
    logits_processor=[CustomLogitsProcessor()]
)
```

## Use Cases

- **Brand Consistency**: Ensure product descriptions use brand-specific terminology
- **Accuracy**: Prevent sensitive information repetition in inappropriate locations
- **Compliance**: Avoid mentioning competitor products in case studies
- **Style Guidelines**: Enforce punctuation, formatting, terminology standards

## Advantages

- Precise, deterministic control over token generation
- No additional inference cost or latency
- Works with beam search for structured generation
- Programmable, flexible rule implementation
- Can combine multiple rules via pipeline

## Limitations

- Requires explicit, programmable rule formulation
- May impact generation success rate if rules too restrictive
- Complex rules require sophisticated LogitsProcessor logic
- Risk of "dead ends" where no valid continuation exists
- Doesn't handle implicit style requirements well

## Anti-pattern

**Post-generation validation with retry**: Generate output, validate against rules, reject and retry if validation fails.

**Problems**:
- High cost: Multiple unnecessary model invocations
- Slow RT: Increases response time, poor user experience
- Unpredictable: May fail repeatedly for complex constraints

**Correct approach**: Intervene during generation (Logits Masking) to prevent invalid tokens from ever being considered.

## Related Patterns

- [[grammar-based-output-control|Grammar-based Output Control]] — Similar token-level intervention using formal syntax rules
- [[style-transfer-pattern|Style Transfer]] — Example-based control for implicit style requirements
- [[content-optimization-pattern|Content Optimization]] — Preference-based quality tuning

## Related Concepts

- [[beam-search|Beam Search]] — Decoding algorithm where logits masking operates
- [[logits-processor|Logits Processor]] — Transformers API for sampling intervention
- [[sampling-strategies|Sampling Strategies]] — Temperature, top-k, top-p methods
- [[structured-generation|Structured Generation]] — Enforcing output format compliance

## Sources

- [[genai-output-control-design-patterns|GenAI Output Control Design Patterns]] — Comprehensive pattern guide

## Cross-references

- [[llm-inference|LLM Inference]] — Understanding beam search mechanics
- [[output-validation|Output Validation]] — Post-generation checking (contrast with logits masking)