---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# ASGI

## Definition
ASGI (Asynchronous Server Gateway Interface) is the successor to WSGI for Python web frameworks, defining a standard interface between asynchronous Python web servers and applications. It enables native support for WebSocket connections, HTTP/2, and long-running connections, and is the interface that FastAPI uses under the hood via Uvicorn.

## Key Aspects
- **Asynchronous-first**: Unlike WSGI, ASGI supports `async/await` natively, enabling non-blocking I/O without threading
- **Protocol support**: Handles HTTP/1.1, HTTP/2, and WebSocket protocols in a single interface
- **Application structure**: ASGI apps are async callables receiving `scope` (connection info), `receive` (incoming messages), and `send` (outgoing messages)
- **Production stack**: Typically deployed as Nginx reverse proxy + Uvicorn (ASGI server) + FastAPI application, vs. Nginx + Gunicorn + Flask for WSGI
- **FastAPI advantage**: Native async, Pydantic type validation, and auto-generated documentation built on top of ASGI
- **Ecosystem momentum**: FastAPI surpassed Flask on GitHub stars (78.9K vs. 68.4K as of Dec 2024), with 25% of Python developers using it by 2022

## Related Concepts
- [[flask-vs-fastapi]] -- comparative analysis of WSGI vs ASGI frameworks
- [[async-error-handling]] -- error patterns in asynchronous Python applications

## Sources
- [[fastapi]]
