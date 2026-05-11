---
type: "AI system"
organization: "[[DeepMind]]"
date_launch: "2022-02"
---

# AlphaCode

AI system by [[DeepMind]] that writes computer programs at competitive level, achieving estimated rank within top 54% of participants in programming competitions.

## Key Achievement

- First AI code generation system to reach competitive level in programming competitions
- Evaluated on 10 recent [[Codeforces]] contests
- Placed at approximately median competitor level
- Published on cover of Science (December 2022)

## Architecture

**Model**: Transformer-based language models

**Training**: 
- Pre-trained on selected public GitHub code
- Fine-tuned on competitive programming dataset

**Inference strategy**:
- Generate massive amounts of C++ and Python programs per problem (orders of magnitude larger than previous work)
- Filter, cluster, and rerank to small set of 10 candidate programs
- Submit for external assessment

## Capabilities

Requires combination of:
- Critical thinking
- Logic
- Algorithms
- Coding
- Natural language understanding

System must create novel and interesting solutions, not duplicate existing ones or try every potentially related algorithm.

## Dataset

Released competitive programming problems and solutions dataset on GitHub with extensive tests ensuring correctness. Benchmark for future problem solving and code generation research.

- Repository: github.com/deepmind/code_contests
- Viewer: alphacode.deepmind.com

## Quotes

"I can safely say the results of AlphaCode exceeded my expectations. I was sceptical because even in simple competitive problems it is often required not only to implement the algorithm, but also (and this is the most difficult part) to invent it. AlphaCode managed to perform at the level of a promising new competitor." — Codeforces evaluation

## Significance

Demonstrates potential of deep learning models for tasks requiring critical thinking. Represents substantial leap in AI problem-solving capabilities. Opens field to people who do not currently write code.

## Sources

- [[Competitive Programming with AlphaCode]]

## Related

- [[DeepMind]]
- [[Codeforces]]
- [[Code Generation with LLMs]]
- [[Transformer Architecture]]