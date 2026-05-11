---
created: 2026-04-28
updated: 2026-04-28
tags: [language, programming]
---

# Domain-Specific Languages

## Definition

Domain-Specific Languages (DSLs) are specialized programming languages designed for particular application domains. Unlike general-purpose languages, DSLs focus on specific problems with optimized syntax and semantics.

## Categories

### Text-to-Diagram DSLs
- Mermaid: diagram definitions in text
- PlantUML: UML diagrams from text
- Pintora: lightweight diagram language
- D2: modern diagram syntax
- Structurizr: architecture modeling

### Data DSLs
- SQL: database queries
- JSONPath: JSON navigation
- GraphQL: API queries
- jq: JSON processing

### Build DSLs
- Makefile: build automation
- Gradle: build scripts
- Bazel: build rules

### Configuration DSLs
- YAML: configuration format
- TOML: configuration format
- HCL: Terraform configuration

## Characteristics

- **Focused scope**: single domain or problem class
- **Domain-optimized**: syntax fits domain concepts
- **Limited expressiveness**: can't express arbitrary logic
- **Higher abstraction**: closer to domain expert thinking
- **Specialized tooling**: domain-specific parsers, renderers

## Related Concepts

- [[text-to-diagram|Text-to-diagram]] — diagram DSL category
- [[continued-pretraining|Continued pretraining]] — teaching LLMs DSLs
- [[fine-tuning|Fine-tuning]] — adapting LLMs to DSLs

## Related Entities

- [[pintora|Pintora]] — diagram DSL example

## DSL Design Principles

- Domain expert readability
- Concise syntax for common patterns
- Clear semantics
- Tool support for validation
- Integration with general languages

## Teaching DSLs to LLMs

- Popular DSLs: already in training data, no fine-tuning needed
- Niche DSLs: require CPT + IFT phases
- Hybrid approach: base coding model + DSL fine-tuning
- Evaluation: syntax correctness + semantic correctness

## Advantages

- Domain expert productivity
- Reduced boilerplate
- Domain-specific optimization
- Clearer intent expression
- Easier validation

## Disadvantages

- Limited adoption reduces tooling
- Learning curve for users
- Fragmentation across domains
- LLM training data scarcity for niche DSLs

## Open Questions

- How to bootstrap DSL adoption?
- When to use DSL vs general-purpose language?