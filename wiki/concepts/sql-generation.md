---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# SQL Generation

## Definition

SQL generation is the task of automatically producing correct SQL queries from natural language descriptions or structured inputs, enabling non-technical users to interact with databases and allowing AI agents to query data programmatically. Grammar-based output control is a technique that constrains language model outputs to ensure syntactically valid SQL.

## Key Aspects

- Converts natural language questions ("Show me sales by region for Q4") into executable SQL queries
- Grammar-based approaches constrain the LLM's output to always produce syntactically valid SQL, eliminating parse errors
- Grammar constraints can enforce not just syntax but also semantic correctness (valid table names, correct column types)
- Key challenge: translating ambiguous natural language into precise SQL semantics (joins, aggregations, filters)
- Schema-aware generation: the model must understand table structures, relationships, and constraints
- Tools like SQLCoder, Defog, and various text-to-SQL models address this task
- Grammar-based control uses techniques like constrained decoding, where the model's token probabilities are masked to only allow valid SQL tokens at each step
- Applications include BI dashboards, data exploration tools, and AI agents that need database access
- Evaluation metrics: execution accuracy (does the query return correct results?), syntax validity, and logical correctness

## Related Concepts

- [[grammar-based-output-control]] -- Technique constraining LLM output to valid formats
- [[text-to-sql]] -- The broader field of natural language to SQL translation
- [[constrained-decoding]] -- Method for enforcing output format constraints
- [[database-interaction]] -- How AI agents access and manipulate data

## Sources

- [[grammar-based-output-control]]
