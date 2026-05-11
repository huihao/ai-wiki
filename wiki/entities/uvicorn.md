---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool]
sources: 4
---

# Uvicorn

## Summary

Uvicorn is a lightning-fast ASGI server implementation for Python, using uvloop and httptools, commonly used to serve FastAPI and Starlette applications in production.

## Key Attributes

- ASGI server for Python (implements ASGI 3.0)
- Built on uvloop (libuv) and httptools for performance
- Default server for FastAPI applications
- Supports HTTP/1.1 and WebSocket protocols
- Often deployed behind reverse proxies (nginx, Caddy) in production

## Related Entities

- [[starlette]] — ASGI framework typically served by Uvicorn
- [[gunicorn]] — often used as process manager with Uvicorn workers

## Related Concepts

- [[asgi-deployment|ASGI]] — Uvicorn is an ASGI server
- [[python-optimization|Python Performance]] — Uvicorn's high-performance design

## Sources

- [[asgi-vs-wsgi]]
- [[fastapi]]
- [[is-flask-dead-is-fastapi-the-future]]
- [[leapcell]]
