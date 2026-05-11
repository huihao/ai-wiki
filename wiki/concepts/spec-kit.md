---
created: 2026-04-29
updated: 2026-05-09
tags: [spec-driven-development, tool]
sources: 2
---

# Spec-Kit

## Definition

Spec-Kit is GitHub's spec-driven development toolkit that provides a structured workflow for defining specifications before code, using a Constitution-to-Tasks pipeline. It introduces constitutional principles (immutable high-level guidelines), hierarchical specification, and extensive checklists to guide AI coding agents through the development process with explicit tracking of progress.

## Key Aspects

- Workflow: Constitution (immutable principles) to Specify to Plan to Tasks
- Constitution.md establishes immutable high-level principles that all subsequent specs and code must follow
- Heavy use of checklists for tracking completion at each workflow stage
- Generates many files per spec (typically around 8 files for a single specification)
- Creates a branch for each spec, though it is not spec-anchored (specs are not maintained after task completion)
- Highly customizable via slash commands in coding assistants
- The volume of verbose, repetitive markdown files raises the question of whether reviewing markdown is preferable to reviewing code
- Even with extensive files and checklists, agents may still ignore instructions or over-perform
- One of three major SDD tools alongside Kiro (simpler) and Tessl Framework (more advanced)

## Related Concepts

- [[spec-driven-development]]
- [[spec-first]]
- [[kiro]]
- [[tessl-framework]]
- [[constitution]]

## Sources

- [[index]]
- [[spec-driven-development-tools]]
