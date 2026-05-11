---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Dictionary Comprehensions

## Definition

Dictionary comprehensions are a concise Python syntax for creating dictionaries by evaluating an expression for each item in an iterable, optionally filtering with a condition. They are the dictionary equivalent of list comprehensions and provide a readable, Pythonic way to transform data into key-value mappings.

## Key Aspects

- Syntax: `{key_expr: value_expr for item in iterable if condition}`
- Example: `{x: x ** 2 for x in nums if x % 2 == 0}` creates a dictionary mapping even numbers to their squares
- More readable and often faster than equivalent for-loop-based dictionary construction
- Support the same filtering and transformation patterns as list comprehensions
- Useful for transforming between data formats, creating lookup tables, and inverting dictionaries
- Part of Python's broader comprehension syntax that includes list comprehensions (`[...]`) and set comprehensions (`{...}`)
- Particularly useful in data science and ML preprocessing for creating feature mappings and label encodings

## Related Concepts

- [[list-comprehensions]]
- [[python]]
- [[data-transformation]]
- [[functional-programming]]

## Sources

- [[python-numpy-tutorial]]
