---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# LLM-based Extraction

## Definition

LLM-based Extraction is a technique using large language models to extract structured data from unstructured text or HTML. Unlike rule-based parsers, LLMs can handle varied formats, implicit structure, and ambiguous content, producing clean JSON output matching specified schemas.

## Key Characteristics

- Schema-driven extraction (Pydantic models for validation)
- Handles unstructured and semi-structured content
- Works across varied formats without custom parsers
- Can extract entities, relationships, and attributes
- Higher cost than rule-based methods but more flexible
- Temperature tuning for consistency vs. creativity

## Key Proponents / Critics

- [[crawl4ai|Crawl4AI]] — Framework offering LLM extraction strategies
- [[litellm|LiteLLM]] — Integration supporting multiple LLM providers

## Related Concepts

- [[entity-extraction|Entity Extraction]] — LLM-based entity identification
- [[relationship-extraction|Relationship Extraction]] — LLM-based connection finding
- [[web-crawling|Web Crawling]] — Application domain for extraction
- [[pydantic-validation|Pydantic Validation]] — Schema enforcement for extracted data

## Related Entities

- [[crawl4ai|Crawl4AI]] — Platform implementing LLM extraction
- [[openai|OpenAI]] — Common LLM provider for extraction
- [[groq|Groq]] — Alternative fast inference provider

## Sources

- [[turn-website-into-graph-knowledge-base|Turn Any Website into a Graph Knowledge Base with Co-Pilot]]

## Evolution

LLM-based extraction has emerged as a powerful alternative to traditional parsing, trading higher computational cost for flexibility and robustness. Modern implementations use schema constraints and temperature tuning to reduce hallucinations and ensure consistent output quality.