# Jakob Uszkoreit

**Entity type:** Person

**Role:** Researcher, Software Engineer

**Affiliation:** Google Research

**Known for:** Transformer architecture ("Attention Is All You Need")

---

## Summary

Software Engineer at Google Research (Natural Language Understanding) who co-authored the Transformer paper "Attention Is All You Need" (August 2017). Published Google Research blog post introducing Transformer architecture and demonstrating machine translation superiority.

## Research

### Transformer Architecture (2017)

**Paper:** "Attention Is All You Need" (August 31, 2017)

**Co-authors:** Ashish Vaswani, Noam Shazeer, Niki Parmar, Jakob Uszkoreit, Llion Jones, Aidan N. Gomez, Łukasz Kaiser, Illia Polosukhin

**Key innovations:**

- Self-attention mechanism replacing RNNs/CNNs
- Parallel token processing
- Constant number of steps (not sequential)
- Order of magnitude faster training
- Superior English→German/French translation

**Blog post:** "Transformer: A Novel Neural Network Architecture for Language Understanding" (August 31, 2017)

- Introduced self-attention advantages
- Visualized attention flow (coreference resolution)
- Showed applications beyond translation (images, video)

## Contributions

### Self-Attention Mechanism

**Breakthrough:** Each position directly models relationships with all other positions, regardless of distance.

**Example:** "bank" in "I arrived at the bank after crossing the river" → immediately attends to "river" → correct interpretation in single step.

### Coreference Resolution

**Demonstration:** Transformer correctly translates pronouns requiring context:

- "The animal didn't cross the street because it was too tired" → "it" = animal
- "The animal didn't cross the street because it was too wide" → "it" = street

**Visualizing attention:** Network identifies two nouns, attention reflects choice in different contexts.

### Performance Benchmarks

**Machine translation:**

- Outperforms RNNs/CNNs on English→German and English→French
- Higher quality
- Less computation to train
- Better fit for GPUs/TPUs

**Syntactic constituency parsing:** Outperformed all but one specialized approach with little adaptation.

## Projects

- Transformer architecture (Google Research)
- Tensor2Tensor library (open source)
- Natural Language Understanding research

## Philosophy

**Design principle:** Attention directly models relationships between all words, regardless of position.

**Hardware optimization:** Better fit for modern ML hardware (GPUs, TPUs) through parallel processing.

**Beyond language:** Applications to images, video, and other modalities.

## Publications

- "Attention Is All You Need" (2017)
- "Transformer: A Novel Neural Network Architecture for Language Understanding" (Google Research Blog, 2017)

## Collaborations

**Research team:**

- Ashish Vaswani
- Noam Shazeer
- Niki Parmar
- Llion Jones
- Aidan N. Gomez
- Łukasz Kaiser
- Illia Polosukhin

**Animation:** David Chenell

## Sources

- [[transformer-novel-neural-network-architecture-language-understanding]]

## References

- Google Research: Natural Language Understanding
- Transformer: Architecture powering modern LLMs
- Tensor2Tensor: Open source library
- TPUs: Google ML hardware