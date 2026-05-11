---
created: 2026-04-28
updated: 2026-04-28
tags: [diagramming, text]
---

# Text-to-Diagram

## Definition

Text-to-diagram is the conversion of natural language or structured text descriptions into visual diagram representations using specialized languages like Mermaid, PlantUML, or niche alternatives like Pintora, D2, Structurizr.

## Popular Languages

- **Mermaid**: Widely adopted, broad LLM support
- **PlantUML**: Established, well-supported by LLMs
- **Graphviz**: DOT language for graphs
- **D2**: Modern alternative, niche
- **Pintora**: Lightweight, niche
- **Structurizr**: Architecture diagrams, niche

## LLM Capabilities

- **Popular languages**: LLMs already trained, high accuracy
- **Niche languages**: Require fine-tuning (CPT + IFT)
- **Training approach**: Two-phase for niche languages
- **Accuracy**: 86% achieved for Pintora with minimal data

## Use Cases

- Architecture documentation
- Sequence diagrams for system flows
- Entity-relationship diagrams for databases
- Component diagrams for system design
- Activity diagrams for workflows
- Mind maps for concept organization

## Related Concepts

- [[domain-specific-languages|Domain-specific languages]] — broader category
- [[continued-pretraining|Continued pretraining]] — teaching LLMs niche languages
- [[instruction-finetuning|Instruction finetuning]] — teaching LLMs tasks

## Related Entities

- [[pintora|Pintora]] — niche text-to-diagram language
- Mermaid — popular text-to-diagram language
- PlantUML — popular text-to-diagram language

## Tools

- `@pintora/cli`: CLI renderer for Pintora
- Mermaid live editor: online rendering
- PlantUML server: rendering backend
- ChatUML: AI-assisted diagramming tool

## Challenges

- Niche language adoption: limited LLM support
- Training data scarcity: few examples available
- Syntax correctness: validation required
- Semantic correctness: matching user intent

## AI-Assisted Diagramming

- Natural language to diagram code
- Edit existing diagrams via text
- Multi-step diagram generation
- Diagram refinement iterations

## Open Questions

- How to democratize niche languages?
- What's the minimum viable training data?