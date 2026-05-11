---
created: 2026-04-28
updated: 2026-04-28
tags: [llm-foundation, mathematics, probability]
sources: 1
---

# Conditional Probability

## Definition

Conditional probability P(A|B) measures the probability of event A occurring given that event B has already occurred. It reads as "probability of A given B" and represents updated beliefs after observing evidence. Conditional probability is the mathematical foundation for LLM next-token prediction: given previous words in a sequence, what is the most likely next word?

## Mathematical Formula

P(A|B) = P(A ∩ B) / P(B)

Where:
- P(A|B) = conditional probability of A given B
- P(A ∩ B) = probability of both A and B occurring
- P(B) = probability of B (must be > 0)

## Key Proponents / Critics

- **Bayesian statisticians**: View conditional probability as the mechanism for updating beliefs (Bayes' theorem)
- **LLM researchers**: Frame language modeling as conditional probability estimation over sequences
- **Foundational role**: Kolmogorov's axioms of probability (1933) establish conditional probability as core concept

## Related Concepts

- [[probability-distributions]] — unconditional probabilities
- [[bayes-theorem]] — formal rule for updating probabilities with evidence
- [[next-token-prediction]] — LLM task framed as conditional probability
- [[autoregressive-model]] — sequential generation via conditional probabilities
- [[markov-chain]] — sequences where next state depends only on current state

## Applications

- **LLMs**: Next-word prediction = P(word_t | word_1...word_{t-1})
- **Medical diagnosis**: P(disease | symptoms)
- ** spam filters**: P(spam | email content)
- **Weather**: P(rain | cloudy)
- **Recommendation systems**: P(user likes item | user history)

## Sources

- [[llm-text-generation-conditional-probability]] — beginner-friendly explanation connecting conditional probability to LLMs
- [[essential-ml-equations]] — mathematical reference including Bayes' theorem