---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# TotalTypeScript

## Definition

TotalTypeScript is Matt Pocock's advanced TypeScript educational resource and skill set focused on eliminating `any` types, mastering complex generics, and building rigorous type-safe patterns. It has become a reference implementation for encoding framework-specific expertise into AI agent skills.

## Key Aspects

- TotalTypeScript provides deep coverage of advanced type system features: conditional types, mapped types, template literal types, infer keyword, and recursive type-level programming.
- The resource is directly referenced in Agent Skills repositories (such as Matteo Collina's Node.js skills) as the basis for a `typescript-magician` skill that reduces AI-generated type-unsafe code.
- The core philosophy is removing `any` from codebases: every value should have a precise type that the compiler can verify, preventing runtime errors at compile time.
- TotalTypeScript integrates with the Agent Skills Standard (initiated by Anthropic, now multi-vendor) where type-system expertise is packaged into `SKILL.md` files that AI coding assistants consume to produce better-typed output.
- The skill set reduces "slop" generation by encoding years of TypeScript expertise, including patterns for complex generics, narrowing, branded types, and type-safe API design.
- Supported by AI coding tools including Claude Code, GitHub Copilot, and OpenAI Codex through the Agent Skills format.

## Related Concepts

- [[type-hints]] -- type annotations in Python serving a parallel role to TypeScript's type system
- [[type-safe-models]] -- applying type safety to ML model definitions and interfaces
- [[agent-skills]] -- the standardized format through which TotalTypeScript expertise is delivered to AI assistants

## Sources

- [[my-personal-skills-ai-assisted-nodejs-development]]
