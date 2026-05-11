---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Async Python

## Definition
Async Python refers to the use of Python's `asyncio` framework and ASGI-compatible web servers to write non-blocking, concurrent I/O-bound applications—now the standard approach for high-performance web services and API servers.

## Key Aspects
- **ASGI replaces WSGI**: The Asynchronous Server Gateway Interface (ASGI) supports HTTP, HTTP/2, WebSockets, and multiple concurrent async events per application, replacing the synchronous WSGI standard (PEP 3333).
- **Native async framework**: FastAPI is built on Starlette (an ASGI toolkit), supporting both sync and async handlers with native `await` syntax for I/O operations.
- **Performance parity with Node.js and Go**: When written correctly, async Python achieves similar throughput to Node.js or Go for I/O-bound workloads, a dramatic improvement over Flask's single-threaded synchronous model.
- **Production server stack**: ASGI servers like Uvicorn (or Gunicorn's UvicornWorker) bridge between reverse proxies (Nginx) and async Python applications.
- **Ecosystem evolution**: Python 3.5+ introduced `asyncio`; native async frameworks (aiohttp, Starlette, Sanic) emerged while Flask was reluctant to adapt, contributing to Flask's decline.
- **Framework choice**: FastAPI combines async support with Pydantic type validation and automatic API documentation, making it the default choice for new Python web services.

## Related Concepts
- [[api-development]]
- [[asynchronous-processing]]
- [[cloud-infrastructure]]

## Sources
- [[asgi-vs-wsgi]]
- [[fastapi]]
- [[is-flask-dead-is-fastapi-the-future]]
