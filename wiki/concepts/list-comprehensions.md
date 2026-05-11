---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# List Comprehensions

## Definition

List comprehensions in Python provide a concise syntax for creating new lists by applying an expression to each element of an iterable, with optional filtering. They are a fundamental Python idiom taught in introductory programming courses, including the Stanford CS231n Python/NumPy tutorial, and represent the idiomatic Python approach to list construction.

## Key Aspects

- Basic syntax: `[x ** 2 for x in nums]` creates a new list by squaring each element
- Filtering syntax: `[x ** 2 for x in nums if x % 2 == 0]` applies the expression only to elements satisfying a condition
- Dictionary comprehensions: `{x: x ** 2 for x in nums}` create dictionaries using the same pattern
- More readable and typically faster than equivalent for-loop constructions due to Python's optimized bytecode for comprehensions
- Part of Python's broader functional programming toolkit, alongside `map()`, `filter()`, and `lambda` expressions
- For numerical data science work, should be replaced with NumPy array operations for orders-of-magnitude performance improvement on large datasets

## Related Concepts

- [[python-numpy-tutorial]]
- [[vectorization]]
- [[list-comprehensions]]

## Sources

- [[python-numpy-tutorial]]
