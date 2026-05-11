---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Bayes' Theorem

## Definition
Bayes' Theorem is a fundamental formula in probability theory that describes how to update the probability of a hypothesis given new evidence. It states that P(A|B) = P(B|A) * P(A) / P(B), relating the posterior probability of A given B to the prior probability of A, the likelihood of B given A, and the marginal probability of B.

## Key Aspects
- **Formula**: P(A|B) = P(B|A) * P(A) / P(B), where P(A|B) is the posterior, P(A) is the prior, P(B|A) is the likelihood, and P(B) is the evidence (normalizing constant)
- **Intuition**: Start with a prior belief about A, observe evidence B, and update to a posterior belief that balances prior knowledge with new evidence
- **Conditional probability foundation**: Bayes' Theorem is derived directly from the definition of conditional probability: P(A and B) = P(A|B) * P(B) = P(B|A) * P(A)
- **Population analogy**: The tennis/football preference example illustrates -- knowing someone plays tennis (evidence) changes the probability they prefer football (hypothesis) based on base rates
- **Next-token prediction**: LLMs implicitly use conditional probability P(next_token | context), which is the core mechanism Bayes' Theorem describes at a population level
- **Naive Bayes classifier**: A practical ML application that applies Bayes' Theorem with the simplifying assumption that features are conditionally independent given the class

## Related Concepts
- [[bayesian-inference]] -- the broader statistical framework built on Bayes' Theorem
- [[conditional-probability]] -- the mathematical foundation from which Bayes' Theorem is derived
- [[probability-distributions]] -- the distributions that Bayes' Theorem operates over

## Sources
- [[conditional-probability]]
