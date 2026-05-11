---
created: 2026-04-28
updated: 2026-04-28
tags: [few-shot, llm, prompting]
sources: 2
---

# In-Context Learning

## Definition

The ability of large language models to learn new tasks from examples provided in the prompt, without any parameter updates. By including a few input-output examples (few-shot) or instructions (zero-shot) in the context, the model adapts its behavior to perform the desired task.

## Key Proponents / Critics

- **Originators:** Tom Brown et al. — GPT-3 paper demonstrating few-shot learning
- **Researchers:** [[terra-blevins]] — studied how prompting choices affect linguistic task performance
- **Skeptics:** Noted that demonstration labels don't need to be correct for ICL to work

## Related Concepts

- [[machine-learning|few-shot learning]] — learning from a small number of examples
- [[machine-learning|zero-shot learning]] — performing tasks with only instructions
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|prompting]] — the art of crafting effective inputs
- [[the-real-ai-coding-skill-isnt-prompting-its-architecture|structured prompting]] — repeated prompting for complex outputs
- [[data-contamination]] — pretraining data may include task examples
- [[prompt-engineering|prompt sensitivity]] — performance varies with minor prompt changes

## Sources

- [[llms-know-linguistics-blevins]]
- [[what-is-chatgpt-doing-wolfram]]

## Evolution

- **2020:** GPT-3 showed remarkable few-shot capabilities
- **2022:** Research revealed models are highly sensitive to prompt formatting
- **2023:** Structured prompting extended ICL to structured prediction tasks
- **Current:** Larger models show stronger ICL; shuffled labels still yield some learning
