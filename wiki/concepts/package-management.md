---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Package Management

## Definition

Package management is the practice of installing, configuring, upgrading, and removing software packages and their dependencies in a controlled and reproducible manner, typically using tools that resolve dependency graphs and maintain environment consistency across development and production.

## Key Aspects

- **Dependency Resolution**: Automatically computing compatible versions of transitive dependencies, preventing version conflicts that cause runtime errors in complex projects
- **Virtual Environment Isolation**: Creating self-contained directory trees with specific Python versions and package sets, keeping the system Python clean and avoiding cross-project interference
- **Environment Reproducibility**: Lock files (requirements.txt, poetry.lock, uv.lock) capture exact dependency versions, enabling deterministic environment recreation across machines and deployments
- **Tool Ecosystem**: Multiple package managers serve different needs -- pip (simple, universal), conda (non-Python dependencies), uv (fast, modern), poetry (project management with dependency resolution)
- **Development vs. Production Separation**: Managing different dependency sets for development (testing, linting, documentation) versus production (minimal, optimized) through optional dependency groups

## Related Concepts

- [[python-virtual-environments]] -- Isolation mechanism central to package management workflows
- [[package-distribution]] -- Publishing packages to registries for others to install
- [[uv]] -- Modern, fast Python package manager as a pip/venv replacement
- [[conda]] -- Environment manager handling both Python and non-Python dependencies

## Sources

- [[python-virtual-environments]]
