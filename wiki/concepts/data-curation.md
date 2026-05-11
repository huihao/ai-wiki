---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Data Curation

## Definition

Data curation is the process of collecting, cleaning, organizing, annotating, and maintaining datasets to ensure they are accurate, consistent, complete, and fit for their intended use. In the context of AI and machine learning, high-quality data curation is increasingly recognized as more impactful than model architecture improvements for achieving strong performance.

## Key Aspects

- Synthetic data generation is a growing approach to curation, augmenting real datasets with programmatically generated examples that fill gaps in coverage
- Involves deduplication, outlier removal, label verification, and format standardization across data sources
- Quality over quantity: curated subsets of training data often outperform larger uncurated datasets
- Active learning and human-in-the-loop approaches help prioritize which data points need manual curation
- Data curation pipelines must handle provenance tracking, versioning, and reproducibility
- For vision tasks, curation includes ensuring annotation consistency, balanced class distributions, and representative coverage of edge cases
- Platforms like Roboflow provide tools for image dataset curation including annotation management, version control, and quality filtering

## Related Concepts

- [[dataset-quality]]
- [[dataset-management]]
- [[synthetic-data]]
- [[data-aggregation]]
- [[annotation]]
- [[data-versioning]]

## Sources

- [[synthetic-data]]
