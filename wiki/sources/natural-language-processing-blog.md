---
url: "https://nlpers.blogspot.com/search/label/machine%20learning"
title: "Natural Language Processing Blog"
author: "Hal"
date: "2011-04-06"
description: "Biased thoughts on NLP, computational linguistics, and related topics (machine learning, math, funding, etc.)"
folder: "书签栏/ai"
fetched_at: "2026-04-27T15:12:17.336499"
---

# Natural Language Processing Blog

> Original URL: [https://nlpers.blogspot.com/search/label/machine%20learning](https://nlpers.blogspot.com/search/label/machine%20learning)

---

**Blog by Hal** - Thoughts on natural language processing (NLP), computational linguistics, and machine learning.

## Featured Post: Part-of-Speech Tagging with Seeds

Research by Adam Teichert (JHU) on inducing POS taggers using typological information vs. lexical seeds.

### Key Findings

**Without seeds**: Typological information helps significantly.

**With seeds**: Baseline performance jumps from ~5% to ~40%, making typological information less beneficial.

### Seed Sources

1. Wikipedia example lists (e.g., Portuguese determiners)
2. Most frequent words from labeled data

Strong overlap between these sources, especially for closed-class words.

### Performance Mechanisms

Seeds help in two ways:

1. **Interesting case**: Knowing "the" is a determiner helps find other determiners ("a") and related patterns (nouns after determiners).
2. **Uninteresting case**: Seeds ensure accuracy on frequent words (closed-class items with short tails).

### Comparison to Transductive Learning

Learning with seeds resembles transductive learning (label unlabeled data without inducing a function).

In ML, you never report "combined training and test accuracy" — yet in NLP, this is standard practice.

### Engineer vs. Scientist Perspective

- **Engineers**: Care about overall accuracy (include seed performance).
- **Scientists**: Care about non-seed accuracy (understanding learning algorithms).

### Eric Brill's Insight

On web search: "Don't care about top 1000 frequent queries — hire annotators for those. Focus on the heavy tail."

Same principle applies to POS tagging: 1000 seeds are easy; performance on 20,000+ other words matters.

## Related Concepts

- [[Machine Learning]]
- [[Supervised Fine-Tuning]]
- [[Transfer Learning]]
- [[Word Embedding]]
- [[Data Contamination]]

## Related Entities

- [[Hal]] (author)
- [[Adam Teichert]] (researcher, JHU)
- [[Eric Brill]] (Microsoft MLAS)