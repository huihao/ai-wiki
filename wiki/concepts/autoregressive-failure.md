---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Autoregressive Failure

## Definition
Autoregressive failure refers to the degradation in output quality that occurs when an autoregressive language model makes an early incorrect token choice that cascades through subsequent generations. Because each token is conditioned on all previous tokens, a single unlikely or wrong selection contaminates the context for all future predictions, compounding errors into incoherent or nonsensical output.

## Key Aspects
- **Compounding errors**: Once an unlikely word is sampled, it becomes part of the context for future predictions, biasing subsequent tokens toward increasingly improbable continuations
- **Context window contamination**: Early errors in a long context persist and influence generation for the entire remaining context length
- **Performance "lost in the middle"**: LLMs perform best when relevant information is at the beginning or end of input; performance degrades for information buried in the middle of long contexts
- **Probabilistic inevitability**: Since autoregressive models sample from distributions (not deterministic lookups), occasional low-probability choices are statistically guaranteed over long sequences
- **Mitigation strategies**: Chain-of-thought reasoning (breaking large probabilistic leaps into smaller, more reliable steps), self-consistency voting, and best-of-N sampling all reduce cascading failure risk
- **Connection to hallucination**: Autoregressive failure is a primary mechanism behind hallucination -- the model generates plausible-sounding but incorrect continuations that reinforce themselves

## Related Concepts
- [[chain-of-thought]] -- technique that reduces failure by breaking generation into smaller steps
- [[best-of-n-sampling]] -- inference-time mitigation for autoregressive errors
- [[context-window]] -- the working memory within which errors compound

## Sources
- [[context-window-management]]
