---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Array Indexing

## Definition
Array indexing is the mechanism for accessing and manipulating elements within NumPy arrays (or Python lists) using bracket notation and slicing syntax. NumPy supports three primary indexing modes: basic slicing with colons, integer array indexing with arrays of indices, and boolean array indexing with condition-based masks, each enabling different patterns of element selection.

## Key Aspects
- **Basic slicing** (`arr[1:5]`, `arr[::2]`) selects ranges of elements, with the colon operator specifying start, stop, and step
- **Integer array indexing** uses arrays of integer indices to select arbitrary elements, enabling fancy indexing where elements can be reordered or duplicated
- **Boolean array indexing** uses a Boolean-valued array of the same shape to select elements where the mask is True, commonly used for filtering
- **Multidimensional indexing** extends to rows, columns, and higher axes: `arr[0, :]` for a row, `arr[:, 1]` for a column
- **Negative indexing** allows accessing from the end of an array (`arr[-1]` for the last element)
- **Advanced indexing** returns a copy (not a view), which has implications for memory and assignment behavior in NumPy

## Related Concepts
- [[broadcasting]] -- operates on arrays of different shapes during arithmetic
- [[numpy]] -- core library providing array indexing semantics
- [[list-comprehensions]] -- alternative concise element selection in Python

## Sources
- [[python-numpy-tutorial]]
