---
created: 2026-04-29
updated: 2026-05-09
tags: [infrastructure]
sources: 1
---

# ASGI Deployment

## Definition
ASGI deployment refers to the production architecture for running asynchronous Python web applications, typically involving a reverse proxy (Nginx) fronting an ASGI server (such as Uvicorn or Hypercorn) that runs an ASGI-compatible framework like FastAPI. Leapcell is one example of a cloud platform simplifying this deployment model.

## Key Aspects
- **Typical stack**: Nginx (reverse proxy, TLS termination, static files) + Uvicorn (ASGI server) + FastAPI application
- **WSGI comparison**: WSGI uses Gunicorn as the application server; ASGI uses Uvicorn or Hypercorn for async support
- **Worker management**: Uvicorn supports multiple worker processes, and Nginx load-balances across them
- **Cloud platforms**: Services like Leapcell abstract away infrastructure management, providing managed ASGI hosting with automatic scaling
- **Container-based deployment**: Docker images with Uvicorn as the entrypoint are the standard containerized deployment pattern
- **Static file serving**: Offloaded to Nginx or a CDN rather than the ASGI application, keeping the app focused on dynamic content

## Related Concepts
- [[asgi]] -- the interface standard underlying ASGI deployment
- [[flask-vs-fastapi]] -- context on framework choice affecting deployment architecture

## Sources
- [[leapcell]]
