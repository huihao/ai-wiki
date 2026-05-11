---
created: 2026-04-29
updated: 2026-05-09
tags: [deployment, infrastructure]
sources: 1
---

# WSGI Deployment

## Definition

WSGI deployment refers to the standard production architecture for deploying Python web applications using the WSGI interface. The canonical stack pairs Nginx as a reverse proxy with a WSGI application server such as Gunicorn, which hosts the Python application (e.g., Flask) behind the gateway interface.

## Key Aspects

- Typical production stack: Nginx (reverse proxy / static files) + Gunicorn (WSGI server) + Flask (application framework).
- The ASGI equivalent for modern async frameworks: Nginx + Uvicorn (ASGI server) + FastAPI.
- Gunicorn forks pre-forked worker processes to handle concurrent requests; each worker runs an instance of the WSGI application.
- WSGI deployment is inherently synchronous; concurrent request handling relies on multiple worker processes rather than async event loops.
- Cloud platforms such as Leapcell abstract this deployment pattern into managed container-based deployments.
- The shift from WSGI to ASGI deployment stacks has accelerated as Python async frameworks (FastAPI, Starlette) have gained adoption.

## Related Concepts

- [[wsgi]]
- [[flask-vs-fastapi|Flask vs FastAPI]]
- [[kubernetes-the-harder-way|Kubernetes Deployment]]

## Sources

- [[leapcell]] -- Leapcell blog: "Is Flask Dead? Is FastAPI the Future?"
