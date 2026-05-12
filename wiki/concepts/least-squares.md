---
created: 2026-04-29
updated: 2026-05-09
tags: [linear-algebra, mathematics]
sources: 5
---

# Least Squares

## Definition

The least squares method is a mathematical optimization technique that finds the best-fitting solution to an overdetermined system of equations by minimizing the sum of the squared differences between observed and predicted values. It is a foundational tool in linear algebra, statistics, and machine learning, used for regression, curve fitting, and data approximation when an exact solution does not exist.

## Key Aspects

- **Overdetermined systems**: When there are more equations than unknowns (no exact solution), least squares finds the solution that is "closest" in the sense of minimizing squared residuals
- **Geometric interpretation**: The least squares solution corresponds to the orthogonal projection of the observed data onto the column space of the design matrix, making it deeply connected to geometry and linear algebra
- **Core topic in applied linear algebra**: Boyd and Vandenberghe's textbook at Stanford and UCLA places vectors, matrices, and least squares at the center of practical linear algebra for engineering and data science
- **Real-world applications**: Traffic flow analysis, chemical reaction balancing, population dynamics, orbit fitting in astronomy, and Google's PageRank all rely on least squares or related formulations
- **Interactive pedagogy**: Georgia Tech's linear algebra course organizes its curriculum around three pillars: solving Ax=b, eigenvalue problems, and least squares approximations, with over 140 interactive demos
- **Connection to machine learning**: Ordinary least squares regression is the simplest form of linear regression; extensions include ridge regression, lasso, and regularized variants used throughout ML

## Related Concepts

- [[linear-algebra]] -- the mathematical foundation for least squares
- [[interactive-linear-algebra]] -- visual and interactive approach to understanding least squares
- [[introduction-to-applied-linear-algebra]] -- textbook centered on vectors, matrices, and least squares

## Sources

- [[interactive-linear-algebra]]
- [[introduction-to-applied-linear-algebra]]
- [[lieven-vandenberghe]]
- [[linear-algebra]]
- [[stephen-boyd]]
