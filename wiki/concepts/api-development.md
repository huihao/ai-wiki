---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# API Development

## Definition
API development in the Python ecosystem encompasses building RESTful and async web services using frameworks that handle routing, validation, serialization, and server communication—currently dominated by FastAPI over the older Flask due to native async support and type safety.

## Key Aspects
- **FastAPI's rise over Flask**: FastAPI (78.9k GitHub stars) surpassed Flask (68.4k) in popularity despite being much newer (2018 vs. 2010); the Python developer survey shows FastAPI grew from 0% in 2019 to 25% in 2022.
- **ASGI over WSGI**: FastAPI uses the Asynchronous Server Gateway Interface (ASGI), supporting HTTP/2, WebSockets, and native async; Flask relies on the synchronous WSGI standard which cannot leverage Python's asyncio.
- **Pydantic type validation**: FastAPI integrates Pydantic for automatic request/response validation using Python type hints, reducing developer errors by up to 40% and generating OpenAPI documentation automatically.
- **Production stack evolution**: The modern stack is Nginx + Uvicorn + FastAPI (ASGI) replacing the legacy Nginx + Gunicorn + Flask (WSGI) pattern.
- **Flask's decline signals**: Flask's original author stopped contributing 6+ years ago, community activity is minimal, and nearly all new Python web projects now choose FastAPI.
- **ML deployment fit**: FastAPI's async support and automatic validation make it particularly well-suited for serving ML models and LLM inference endpoints.

## Related Concepts
- [[async-python]]
- [[cloud-infrastructure]]

## Sources
- [[asgi-vs-wsgi]]
- [[fastapi]]
- [[is-flask-dead-is-fastapi-the-future]]
