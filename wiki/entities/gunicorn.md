---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool]
sources: 3
---

# Gunicorn

## Summary

Gunicorn (Green Unicorn) is a Python WSGI HTTP server for UNIX, widely used to serve Python web applications (Django, Flask) in production by running multiple worker processes.

## Key Attributes

- WSGI (Web Server Gateway Interface) HTTP server
- Pre-fork worker model for handling concurrent requests
- Supports sync, async (gevent, eventlet), and uvicorn workers
- Battle-tested in production for Django/Flask applications
- Referenced as traditional Python web serving solution

## Related Entities

- [[uvicorn]] — ASGI server, increasingly preferred for async Python
- [[werkzeug]] — WSGI utility library used with Flask

## Related Concepts

- [[wsgi|WSGI]] — standard Gunicorn implements
- [[asgi-deployment|ASGI]] — newer standard superseding WSGI for async

## Sources

- [[asgi-vs-wsgi]]
- [[is-flask-dead-is-fastapi-the-future]]
- [[leapcell]]
