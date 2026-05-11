---
created: 2026-04-29
updated: 2026-05-09
tags: [python, web]
sources: 1
---

# WSGI

## Definition

WSGI (Web Server Gateway Interface) is the standardized interface specification (PEP 3333) that defines how a Python web application communicates with a web server. It acts as a bridge between the HTTP server (such as Nginx or Apache) and the Python application framework (such as Flask or Django), enabling interoperability across different servers and frameworks.

## Key Aspects

- Synchronous, request-response model: the application callable receives the HTTP request as a WSGI environment dictionary and returns a response iterable.
- WSGI servers such as Gunicorn or uWSGI manage worker processes that invoke the application callable for each incoming request.
- In a typical production stack, Nginx serves as a reverse proxy in front of a WSGI server running the Python application (e.g., Nginx + Gunicorn + Flask).
- WSGI was the standard for Python web frameworks until the rise of ASGI, which adds support for asynchronous request handling.
- Frameworks like Flask are built on Werkzeug, a WSGI utility library, and rely entirely on the WSGI interface for HTTP handling.

## Related Concepts

- [[wsgi-deployment]]
- [[flask-vs-fastapi|Flask vs FastAPI]]
- [[asgi]] -- the asynchronous successor to WSGI

## Sources

- [[flask-vs-fastapi]]
