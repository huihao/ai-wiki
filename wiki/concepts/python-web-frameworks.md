---
created: 2026-04-28
updated: 2026-04-28
tags: [framework, python]
---

# Python Web Frameworks

## Definition

Python web frameworks provide tools and libraries for building web applications, ranging from simple APIs to complex full-stack applications with frontend, backend, and DevOps integration.

## Categories

### General Web Frameworks
- Django: full-stack framework with ORM, admin panel
- Flask: lightweight micro-framework
- FastAPI: modern async framework with type hints
- Pyramid: flexible, scalable framework

### Data/BI Frameworks
- Taipy: production-ready data/BI applications
- Streamlit: rapid data app prototyping
- Dash: web applications with Plotly
- Panel: data apps and dashboards
- Gradio: ML model interfaces

### API Frameworks
- FastAPI: async APIs with automatic validation
- Flask-RESTful: REST API extensions
- Django REST Framework: API toolkit for Django

## Performance Characteristics

- Taipy: up to 10x faster for resource-heavy apps with caching
- FastAPI: async support for high throughput
- Django: built-in optimization for database queries

## Related Concepts

- [[business-intelligence|Business intelligence]] — application domain for data frameworks
- [[data-visualization|Data visualization]] — core capability of data frameworks
- [[llm-integration|LLM integration]] — emerging feature

## Related Entities

- [[taipy|Taipy]] — data/BI framework
- FastAPI — async web framework

## Key Differentiators

- Async vs sync: FastAPI (async), Flask (sync), Django (both)
- Full-stack vs micro: Django (full-stack), Flask (micro)
- Data-focused vs general: Taipy (data), Django (general)
- Production-ready vs prototype: Taipy (production), Streamlit (prototype)

## Integration Capabilities

- Databricks, Dataiku, Google Colab, AWS SageMaker, IBM Watson
- Task scheduling, background jobs
- Multi-user support
- Enterprise features (security, scalability)

## Open Questions

- When to choose data-specific framework vs general web framework?
- How do async frameworks compare in real-world throughput?