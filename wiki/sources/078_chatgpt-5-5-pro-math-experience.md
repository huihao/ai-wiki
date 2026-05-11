---
created: 2026-05-11
updated: 2026-05-11
tags: [source, llm-capabilities, mathematics, chatgpt, research, combinatorics, ai-in-math]
sources: 1
url: "https://gowers.wordpress.com/2026/05/08/a-recent-experience-with-chatgpt-5-5-pro/"
title: "A recent experience with ChatGPT 5.5 Pro"
---

# A recent experience with ChatGPT 5.5 Pro

## Summary

Tim Gowers (Fields Medalist) tested ChatGPT 5.5 Pro on open problems from Mel Nathanson's paper on sumset diameter bounds in additive number theory. The model produced a PhD-level result in under two hours: it improved an exponential upper bound on N(h,k) to a polynomial bound O(k^{10h^3}), a result that an expert (Isaac Rajagopal) confirmed as almost certainly correct and praised as containing an original, clever idea.

## Key Takeaways

- ChatGPT 5.5 Pro produced publishable-quality mathematical research with zero human mathematical input beyond prompts
- The model thought for ~17 minutes before producing its first result (a quadratic upper bound for h=2 case), then improved it further in subsequent prompts
- For h=2: ChatGPT improved Nathanson's bound from 2^k-1 to a quadratic bound by using a more efficient Sidon set — a natural idea that becomes obvious only after re-describing the inductive construction
- For general h: ChatGPT's key original idea was using h^2-dissociated sets to replace geometric series S and T with sets G and H that have polynomial-diameter elements while preserving sumset size properties
- Isaac Rajagopal confirmed the ideas were genuinely original and impressive: "the sort of idea I would be very proud to come up with after a week or two of pondering"
- The model excels at problems where easy arguments exist but humans missed them; it struggles more with truly novel forward-reasoning approaches
- This raises questions about: AI-written content repositories, the future of PhD training, and what mathematical research means going forward

## Key Concepts

- **Sumset** (A+A): set of all pairwise sums from set A; h-fold sumset hA extends this to h elements
- **Sidon set**: a B_2 set — a set where all pairwise sums are distinct (maximal sumset size)
- **h^2-dissociated set**: a set where no nontrivial linear combination with ≤ h^2 terms on each side can be equal
- **N(h,k)**: the minimal N such that all values in R(h,k) can be achieved by k-element subsets of {0,...,N}
- **R(h,k)**: the set of all achievable h-fold sumset sizes for k-element sets

## Entities Mentioned

- [[tim-gowers]] — Fields Medalist, blog author, conducted the ChatGPT experiments
- [[isaac-rajagopal]] — MIT student, wrote the original paper on R(h,k) that ChatGPT extended
- [[mel-nathanson]] — mathematician whose paper posed the problems
- [[openai]] — maker of ChatGPT 5.5 Pro
- [[erdos-problems]] — famous open problems in mathematics

## Concepts Mentioned

- [[reasoning-llms]] — LLMs producing novel mathematical arguments
- [[mathematical-reasoning]] — AI systems performing mathematical research
- [[inference-time-compute-scaling]] — spending more compute at inference to improve results
- [[additive-combinatorics]] — field studying sumsets and related structures
