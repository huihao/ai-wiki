---
created: 2026-04-28
updated: 2026-04-28
tags: [source, tutorial, python, numpy]
sources: 1
---

# Python Numpy Tutorial (with Jupyter and Colab)

## Metadata

- **Author**: Justin Johnson
- **Date**: 2020-01-01
- **URL**: https://cs231n.github.io/python-numpy-tutorial/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/ai/Python Numpy Tutorial (with Jupyter and Colab).md`
- **Course**: Stanford CS231n: Deep Learning for Computer Vision

## Summary

A comprehensive Python and NumPy tutorial originally contributed by Justin Johnson for Stanford's CS231n course. Covers Python basics (data types, containers, functions, classes), NumPy arrays (creation, indexing, broadcasting), SciPy (image operations, MATLAB files, distance computations), and Matplotlib (plotting, subplots, images). Includes practical examples with Jupyter notebooks and Google Colab integration.

## Key Takeaways

### Python Fundamentals
- **Basic data types**: integers, floats, booleans, strings with familiar behavior from other languages
- **Container types**: lists (resizeable arrays), dictionaries (key-value pairs), sets (unordered unique elements), tuples (immutable ordered lists)
- **List comprehensions**: Concise syntax for creating lists: `[x ** 2 for x in nums if x % 2 == 0]`
- **Dictionary comprehensions**: `{x: x ** 2 for x in nums if x % 2 == 0}`
- **Functions and classes**: Python's straightforward syntax with optional keyword arguments

### NumPy Arrays
- **Creation**: `np.array()`, `np.zeros()`, `np.ones()`, `np.full()`, `np.eye()`, `np.random.random()`
- **Indexing**: slicing, integer array indexing, boolean array indexing
- **Datatypes**: NumPy tries to guess but can be forced with `dtype=np.int64`
- **Array math**: Elementwise operations (`+`, `-`, `*`, `/`) and matrix operations (`dot`)
- **Broadcasting**: Powerful mechanism for operations on arrays of different shapes

### Broadcasting Rules
1. If arrays have different rank, prepend 1s to lower rank array's shape
2. Arrays are compatible in dimension if same size OR one has size 1
3. Arrays can broadcast together if compatible in all dimensions
4. After broadcasting, each array behaves as if it had shape = elementwise max of input shapes
5. In dimension where one array has size 1, it behaves as if copied along that dimension

### SciPy
- **Image operations**: `imread()`, `imsave()`, `imresize()` (tinting images by scaling color channels)
- **MATLAB files**: `scipy.io.loadmat()`, `scipy.io.savemat()`
- **Distance computations**: `scipy.spatial.distance.pdist()` (pairwise distances), `squareform()` (convert to matrix)

### Matplotlib
- **Plotting**: `plt.plot()` for 2D data, multiple lines with labels and legend
- **Subplots**: `plt.subplot(rows, cols, index)` for grid layouts
- **Images**: `plt.imshow()` with `np.uint8()` casting for proper display

### Jupyter and Colab
- **Jupyter**: Local execution in browser, requires `pip install notebook`, run with `jupyter notebook`
- **Colab**: Google's cloud Jupyter with free GPUs/TPUs, no setup, easy sharing

## Entities Mentioned

- [[justin-johnson]] — Original contributor
- [[stanford-cs231n]] — Stanford course on deep learning for computer vision

## Concepts Mentioned

- [[numpy]] — Core library for scientific computing in Python
- [[python]] — High-level, dynamically typed programming language
- [[jupyter-notebooks]] — Interactive computing environment
- [[matplotlib]] — Plotting library for Python
- [[scipy]] — Scientific computing library building on NumPy
- [[array-indexing]] — NumPy array access patterns (slicing, integer, boolean)
- [[broadcasting]] — NumPy's mechanism for operations on arrays of different shapes
- [[list-comprehensions]] — Python's concise syntax for creating lists
- [[dictionary-comprehensions]] — Python's concise syntax for creating dictionaries

## Practical Examples

### Quick Sort in Python
```python
def quicksort(arr):
    if len(arr) <= 1:
        return arr
    pivot = arr[len(arr) // 2]
    left = [x for x in arr if x < pivot]
    middle = [x for x in arr if x == pivot]
    right = [x for x in arr if x > pivot]
    return quicksort(left) + middle + quicksort(right)
```

### Broadcasting Example
```python
import numpy as np
x = np.array([[1,2,3], [4,5,6]])  # shape (2, 3)
v = np.array([1, 0, 1])           # shape (3,)
y = x + v  # Broadcasting adds v to each row of x
# Result: [[2 2 4], [5 5 7]]
```

## Questions / Follow-ups

- How much of this tutorial is still relevant given modern alternatives like JAX and PyTorch tensors?
- What updates have been made since the 2020 version for Python 3.7+?
- How does Colab's free GPU access compare to local Jupyter setups?
