---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 4
---

# Web Frameworks

## Definition

Web frameworks are software libraries and tools that provide a structured foundation for building web applications, handling common tasks such as routing, request/response processing, data validation, and server deployment. In the Python ecosystem, the landscape has shifted significantly from synchronous WSGI-based frameworks like Flask toward asynchronous ASGI-based frameworks like FastAPI, driven by the need for async I/O, type safety, and performance at scale.

## Key Aspects

- **WSGI vs ASGI**: WSGI (Web Server Gateway Interface) is the synchronous standard that underpins Flask and Django. ASGI (Asynchronous Server Gateway Interface) extends WSGI to support async/await, WebSockets, and long-lived connections. ASGI frameworks (FastAPI, Starlette) can handle concurrent connections more efficiently, making them better suited for I/O-bound and real-time workloads.
- **Flask**: A lightweight "micro" framework (born 2010) built on Werkzeug and Jinja2. Known for minimal core, flexible blueprints, and decorator-based routing. However, it suffers from fragmented REST tooling (flask-restful, flask-restx, flask-apispec), declining maintenance (original author stopped contributing), and no native async support. Still widely used in legacy projects.
- **FastAPI**: A modern async-first framework (born 2018) built on Starlette and Pydantic. Provides native type validation via Pydantic models, automatic OpenAPI/Swagger documentation, async request handling, and dependency injection. Has surpassed Flask on GitHub stars (78.9k vs 68.4k as of Dec 2024) and dominates new Python project adoption.
- **Production deployment stacks**: Flask typically deploys with Nginx + Gunicorn (WSGI server). FastAPI deploys with Nginx + Uvicorn (ASGI server) or Hypercorn. The ASGI stack handles concurrent connections more efficiently.
- **ML and API workloads**: FastAPI's automatic validation, async support, and auto-generated API docs make it particularly well-suited for ML model serving and data pipeline APIs where input validation and documentation are critical.

## Related Concepts

- [[asgi-vs-wsgi]] -- detailed comparison of the two Python server interface standards
- [[fastapi]] -- modern async Python web framework
- [[flask]] -- lightweight synchronous Python web framework
- [[web-frameworks-for-ml]] -- web frameworks in the context of ML deployment

## Sources

- [[is-flask-dead-is-fastapi-the-future]] -- comparative analysis of Flask vs FastAPI adoption and technical differences
- [[flask-vs-fastapi]] -- detailed comparison of Flask and FastAPI for Python web development
- [[asgi-vs-wsgi]] -- explanation of ASGI and WSGI server interface standards
- [[fastapi]] -- FastAPI framework overview and capabilities
