---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Output Validation

## Definition

Output validation is the practice of verifying LLM-generated text against predefined constraints after generation, serving as a complementary layer to proactive generation-time controls like logits masking, with trade-offs in cost, latency, and reliability.

## Key Aspects

- **Post-Generation Checking**: Validates that generated text meets format requirements, content policies, and business rules after the model completes generation, rather than intervening during token selection
- **Anti-Pattern -- Retry Loops**: Generating output, validating, and retrying on failure is explicitly discouraged due to high cost (multiple model invocations), slow response time, and unpredictable behavior with complex constraints
- **Complementary to Logits Masking**: While logits masking prevents invalid tokens from being considered during generation (proactive), output validation catches violations that logits masking cannot address (reactive), forming a defense-in-depth strategy
- **Structured Output Enforcement**: Validating that JSON, XML, or schema-conformed outputs match expected structures, with fallback handling for malformed responses
- **Content Policy Compliance**: Checking generated text against brand guidelines, regulatory requirements, and safety policies that may be too complex or dynamic for token-level masking

## Related Concepts

- [[logits-masking]] -- Proactive token-level intervention preferred over post-generation validation
- [[grammar-based-output-control]] -- Formal syntax enforcement as a generation-time alternative
- [[beam-search]] -- Decoding algorithm where both masking and validation operate
- [[output-control-patterns]] -- Broader taxonomy of generation constraint strategies

## Sources

- [[logits-masking]]
