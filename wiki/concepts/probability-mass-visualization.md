---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# probability-mass-visualization

## Definition

Probability mass visualization is the practice of graphically representing the probability distribution over possible outputs of a generative model, making abstract uncertainty tangible and explorable. In the context of language models, this takes the form of interactive tools where each block represents a possible sequence ending at a displayed token, with the block's height proportional to its conditional probability given the prompt. The total height across all branches always sums to 1.0 (unity), and users can click to zoom into any branch, performing renormalization to see conditional probabilities within that subtree.

## Key Aspects

- **Block Structure**: Each block represents a complete sequence ending at a displayed token; the x-axis is token position (time), and height encodes sampling probability at temperature 1
- **Renormalization**: Clicking a block treats it as certain (probability = 1) and rescales the remaining visible branches, analogous to wave function renormalization in quantum mechanics
- **Conditional Probability Chains**: P(sequence) = P(t1|prompt) x P(t2|prompt,t1) x P(t3|prompt,t1,t2), calculated via the chain rule
- **Cutoff Parameter**: A minimum probability threshold hides low-probability branches, controlling visual complexity and API query costs
- **Multiverse Metaphor**: Language models generate a "multiverse" of possible futures; each token choice branches into multiple potential continuations, and visualization shows the probability mass distributed across all branches
- **Pedagogical Value**: Transforms abstract sampling parameters (temperature, top-p) into visible, clickable structures that help users understand model uncertainty
- **Practical Tool**: Enables exploration of model confidence across different prompt branches, useful for evaluating prompt engineering strategies

## Related Concepts

- [[probability-distributions]] -- Mathematical foundation of probability mass across outcomes
- [[renormalization]] -- Probability rescaling technique for conditional exploration
- [[temperature-sampling]] -- How temperature affects the displayed probability mass
- [[language-model-multiverse]] -- The conceptual framework of branching possible futures

## Sources

- [[block-multiverse-visualizations]] -- Interactive probability mass visualization tool by generative.ink
- [[language-model-multiverse]] -- Conceptual foundation for multiverse visualization
- [[renormalization]] -- Mathematical technique for conditional probability rescaling
