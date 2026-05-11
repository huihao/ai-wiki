---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/method]
sources: 1
---

# Continuous Integration

## Summary
Continuous integration (CI) is a software development practice where developers frequently merge their code changes into a shared repository, with each integration automatically verified by automated builds and tests. CI aims to detect integration errors early, reduce merge conflicts, and maintain a consistently deployable codebase. Modern CI systems are often paired with continuous delivery (CD) to form CI/CD pipelines.

## Key Attributes
- **Type**: concept/method
- **Notable for**: catching integration issues early through automated, frequent testing of code changes
- **Other facts**: popularized by Martin Fowler and the Extreme Programming (XP) community in the early 2000s; key tools include GitHub Actions, GitLab CI, Jenkins, CircleCI, and Travis CI; CI is a prerequisite for modern DevOps practices; nbdev integrates CI into notebook-driven development workflows

## Related Entities
- [[github-workflows]] -- GitHub Actions provides CI/CD automation
- [[github]] -- GitHub hosts repositories and provides CI/CD infrastructure
- [[fast-ai]] -- fast.ai's nbdev tool generates CI pipelines from notebooks

## Related Concepts
- [[ci-cd]] -- continuous integration and continuous delivery combined
- [[cicd]] -- another common abbreviation for CI/CD
- [[test-driven-development]] -- CI complements TDD by automating test execution
- [[deployment]] -- CI feeds into deployment pipelines
- [[linting]] -- automated code quality checks run as part of CI

## Sources
- [[nbdev-fastai]] -- demonstrates how nbdev integrates continuous integration into notebook-driven development

## Contradictions / Open Questions
- There is tension between running comprehensive test suites in CI (which improves reliability but slows feedback) and keeping CI fast (which improves developer experience but may miss issues). Balancing these trade-offs depends on project size and team preferences.
