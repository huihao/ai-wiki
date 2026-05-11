---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Server Architecture

## Definition

Server architecture refers to the design and organization of backend server systems, including the protocols, frameworks, and patterns used to handle client requests, process data, and serve responses. The distinction between WSGI (Web Server Gateway Interface) and ASGI (Asynchronous Server Gateway Interface) represents a fundamental evolution in Python web server architecture from synchronous to asynchronous processing models.

## Key Aspects

- WSGI (Web Server Gateway Interface): synchronous standard for Python web applications; one thread per request model
- ASGI (Asynchronous Server Gateway Interface): asynchronous successor enabling concurrent request handling within a single process
- ASGI supports WebSocket connections, HTTP/2, and long-lived connections that WSGI cannot handle natively
- Synchronous WSGI frameworks (Flask, Django traditional) map one thread per request, limiting concurrency
- Asynchronous ASGI frameworks (FastAPI, Starlette, Django async) enable handling thousands of concurrent connections
- ASGI is required for real-time applications: WebSockets, Server-Sent Events, long polling
- Migration path: Django added ASGI support in 3.0, enabling gradual adoption alongside existing WSGI deployments
- Deployment considerations: WSGI servers (Gunicorn, uWSGI) vs ASGI servers (Uvicorn, Hypercorn, Daphne)
- Performance trade-offs: ASGI excels at I/O-bound workloads with many concurrent connections; WSGI simpler for CPU-bound or low-concurrency applications

## Related Concepts

- [[asgi]] -- Asynchronous Server Gateway Interface specification
- [[wsgi]] -- Web Server Gateway Interface specification
- [[fastapi]] -- Popular ASGI framework for Python
- [[websockets]] -- Real-time protocol requiring ASGI support

## Sources

- [[asgi-vs-wsgi]]
