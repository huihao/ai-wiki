---
created: 2026-04-28
updated: 2026-05-09
tags: [development-practice, software-engineering, testing]
sources: 1
---

# Test-Driven Development

## Definition

Test-Driven Development (TDD) is a software development practice in which developers write automated tests before writing the actual implementation code. The process follows a tight red-green-refactor cycle: (1) write a failing test that defines the desired behavior, (2) write the minimum code necessary to make the test pass, and (3) refactor the code while keeping tests green. TDD produces a comprehensive test suite as a natural byproduct, ensures code is designed to be testable from the outset, and provides immediate feedback on code correctness. TDD is particularly effective for maintaining code quality in large codebases and for enabling confident refactoring.

## Key Proponents / Critics

- Kent Beck — Originated and popularized TDD as part of Extreme Programming (XP)
- [[sebastian-raschka]] — Practices and advocates TDD in ML engineering and LLM development

## Related Concepts

- [[ci-cd]] — TDD integrates naturally with continuous integration pipelines
- [[eval-driven-development]] — An AI-era parallel to TDD where evaluations replace unit tests
- [[failing-tests]] — The red phase of TDD deliberately starts with a failing test
- [[reproducible-research]] — TDD principles applied to research code improve reproducibility
- [[testing]] — TDD is a specific methodology within the broader testing discipline

## Related Entities

- [[github]] — Hosts repositories where TDD is practiced and enforced via CI

## Sources

- [[hello-world-learn-go-with-tests|Hello World: Learn Go with Tests]] — TDD approach applied to learning Go programming

## Evolution

- **1990s**: Kent Beck develops TDD as part of Extreme Programming (XP) at Chrysler
- **2002**: Kent Beck publishes "Test Driven Development: By Example," establishing the canonical reference
- **2005**: JUnit and xUnit frameworks make TDD accessible across programming languages
- **2010s**: TDD becomes a standard practice in agile software development teams
- **2020s**: TDD principles are adapted for AI systems as eval-driven development, where model evaluations serve the role of tests
- **2024+**: AI coding assistants (Claude Code, GitHub Copilot) are increasingly guided by TDD-like workflows where tests define intent
