---
created: 2026-04-27
updated: 2026-04-27
tags: [api, deployment, python, web]
sources: 1
---

# Web Frameworks for ML

## Definition

Python web frameworks used to expose machine learning models as APIs or build interactive dashboards. The choice of framework affects development velocity, performance, and the ability to handle asynchronous workloads common in ML inference.

## Comparison

| Framework | Type | Async | Type Hints | Validation | Best For |
|---|---|---|---|---|---|
| **Flask** | Micro | No (WSGI) | Optional | Manual (Marshmallow) | Simple prototypes, small APIs |
| **FastAPI** | Micro | Yes (ASGI) | Native | Pydantic (built-in) | Production APIs, high throughput |
| **Django** | Full-stack | Limited | Optional | Forms/DRF | Full web apps with admin |
| **Streamlit** | App framework | N/A | N/A | N/A | Interactive data/ML dashboards |

## Flask

- Born 2010, "micro" framework with minimal core
- Strengths: flexibility, extensive ecosystem, beginner-friendly
- Weaknesses: no native async, requires piecing together components (validation, serialization)
- Original author (Armin Ronacher) no longer active; single maintainer
- REST frameworks: flask-restful, Flask-RESTPlus (many unmaintained)

## FastAPI

- Born 2018, built on Starlette (ASGI) and Pydantic
- Strengths:
  - Native async/await support (efficiency comparable to Node.js/Go)
  - Automatic data validation and serialization via Pydantic + type hints
  - Auto-generated OpenAPI documentation
  - Built-in dependency injection
- Stack: Nginx + Uvicorn + FastAPI (vs. Nginx + Gunicorn + Flask for WSGI)
- Claims to reduce developer errors by ~40% through type safety

## WSGI vs ASGI

- **WSGI** (Web Server Gateway Interface): synchronous, Python standard since PEP 3333. Used by Flask/Django.
- **ASGI** (Asynchronous Server Gateway Interface): supports async, HTTP/2, WebSocket. Used by FastAPI/Starlette.

## Trend

FastAPI has overtaken Flask in GitHub stars (78.9k vs 68.4k as of Dec 2024) and new project adoption. The Python developer survey shows FastAPI growing from 0% (2019) to 25% (2022) among web frameworks.

## Related Concepts

- [[streamlit-source|Streamlit]] — dashboard framework (not API-focused)
- [[celery-introduction|Celery]] — distributed task queues for async ML workloads
- [[generative-ai-platform]] — production deployment patterns

## Sources

- [[vibe-coding-is-dead-heres-what-replaced-it|Is Flask Dead? Is FastAPI the Future?]] — comparative analysis
