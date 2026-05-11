---
url: "https://deepmind.google/discover/blog/competitive-programming-with-alphacode/"
author: "The AlphaCode team"
date: "2022-12-08"
---

# Competitive Programming with AlphaCode

> Source: [[DeepMind]] blog on AlphaCode achieving competitive-level performance in programming competitions.

## Overview

AlphaCode achieved an estimated rank within the top 54% of participants in programming competitions by solving new problems requiring critical thinking, logic, algorithms, coding, and natural language understanding. Published on the cover of Science in December 2022.

## Approach

**Model architecture**: Transformer-based language models generating code at unprecedented scale, then filtering to a small set of promising programs.

**Training**: Pre-trained on selected public GitHub code, fine-tuned on competitive programming dataset.

**Evaluation**: Generated massive amounts of C++ and Python programs for each problem (orders of magnitude larger than previous work), then filtered, clustered, and reranked to 10 candidate programs.

## Performance

- Evaluated on 10 recent Codeforces contests (each newer than training data)
- Placed at approximately the level of the median competitor
- First time an AI code generation system reached competitive level in programming competitions

## Dataset Release

Released competitive programming problems and solutions dataset on GitHub with extensive tests to ensure correctness. Benchmark for future problem solving and code generation research.

## Significance

Demonstrates potential of deep learning models for tasks requiring critical thinking. Systems must create novel and interesting solutions, not duplicate existing ones. Represents substantial leap in AI problem-solving capabilities.

## Key Quote

"I can safely say the results of AlphaCode exceeded my expectations. I was sceptical because even in simple competitive problems it is often required not only to implement the algorithm, but also (and this is the most difficult part) to invent it. AlphaCode managed to perform at the level of a promising new competitor." — Codeforces evaluation

## References

- Paper published in Science (December 2022)
- Dataset: [github.com/deepmind/code_contests](https://github.com/deepmind/code_contests)
- Solutions viewer: [alphacode.deepmind.com](https://alphacode.deepmind.com/)
- Platform: [[Codeforces]]

## Related

- [[Code Generation with LLMs]]
- [[Problem-Solving AI]]
- [[Transformer Architecture]]