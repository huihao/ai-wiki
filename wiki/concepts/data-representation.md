---
name: "Data Representation"
category: "data-science"
---

# Data Representation

The process of transforming raw data into structured mathematical objects (vectors and matrices) that can be manipulated for analysis, modeling, and machine learning. Data representation is the foundation of computational data science.

## Core Components

### Vectors

- Represent individual data points
- One-dimensional arrays of numbers
- Each element represents a feature value
- Mathematical object with magnitude and direction

**Example**: A single customer's data
- [age, income, purchases, click_count]
- Vector of 4 feature values

### Matrices

- Represent datasets with multiple observations
- Two-dimensional arrays (rows × columns)
- Rows = observations/samples
- Columns = features/variables
- Mathematical object enabling matrix operations

**Example**: Customer dataset
- 1000 customers (rows)
- 4 features per customer (columns)
- Matrix of 1000 × 4 = 4000 values

### Tensor

- Multi-dimensional arrays
- Extend vectors (1D) and matrices (2D) to higher dimensions
- Used in deep learning for images, videos, sequences
- 3D tensor: [samples, features, time] or [height, width, color_channels]

## Matrix Types

### Sparse Matrix

- Most elements are zero
- Efficient storage (only non-zero elements)
- Used for:
  - Text data (term-document matrices)
  - High-dimensional categorical data
  - Network graphs
  - Recommendation systems

### Dense Matrix

- Most elements are non-zero
- Standard storage format
- Used for:
  - Numerical features
  - Small to medium dimensions
  - When computational efficiency is priority

### Singular Matrix

- Square matrix (rows = columns)
- No inverse exists
- Determinant is zero
- Indicates linear dependence or redundancy

## Operations

### Matrix Arithmetic

- **Addition/Subtraction**: Element-wise operations
- **Multiplication**: Matrix transformations, dot products
- **Scalar multiplication**: Scale all elements

### Matrix Transformation

- **Transpose**: Swap rows and columns
- **Inverse**: Reverse transformation (for non-singular matrices)
- **Factorization**: Decompose into components

## Why It Matters

### Computational Efficiency

- Standardized format for algorithms
- Optimized operations (GPU acceleration)
- Efficient storage and retrieval

### Mathematical Manipulation

- Apply linear algebra operations
- Transform, combine, reduce data
- Enable optimization and learning

### Model Input

- Standard format for machine learning models
- Batch processing (multiple samples)
- Feature engineering and transformation

### High-Dimensional Data

- Handle N-dimensional data beyond visualization
- Create decision boundaries in feature space
- Process large-scale datasets

## Best Practices

- Choose appropriate representation (sparse vs dense)
- Normalize and standardize features
- Handle missing values before representation
- Consider memory and computational cost
- Validate data integrity

## Related Concepts

- [[linear-algebra|Linear Algebra]]: Mathematical operations
- [[feature-engineering|Feature Engineering]]: Creating features
- [[dimensionality-reduction|Dimensionality Reduction]]: Reducing dimensions
- [[embeddings|Embedding]]: Dense representations

## References

- [[linear-algebra-machine-learning|Linear Algebra that every Machine Learning Engineer should know]]
- [[mathematics-for-machine-learning|Mathematics for Machine Learning]]