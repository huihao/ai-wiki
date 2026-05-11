---
created: 2026-04-29
updated: 2026-05-09
tags: [python, web]
sources: 1
---

# Microframework

## Definition

A microframework is a lightweight web framework that provides the minimal essentials for building web applications (routing, request/response handling) without imposing opinions on project structure, ORM, template engine, or other components. Flask exemplifies this philosophy in the Python ecosystem, offering just enough functionality to get started while leaving architectural decisions to the developer.

## Key Aspects

- Flask pioneered the microframework philosophy in Python: minimal core with extensions for additional functionality
- Uses WSGI (Web Server Gateway Interface) for synchronous request handling, contrasting with FastAPI's async ASGI approach
- Flask's original author (Armin Ronacher) stopped contributing approximately 6 years ago, leaving it with a single maintainer
- FastAPI surpassed Flask in GitHub stars (78.9k vs 68.4k) as of late 2024, reflecting a shift toward async frameworks
- Microframework advantages: small learning curve, explicit architecture decisions, easy to understand the full stack
- For ML deployment, microframeworks like Flask and FastAPI serve as model serving endpoints, wrapping inference logic behind REST APIs
- The microframework philosophy emphasizes composability: choose your own database, ORM, authentication, and template engine

## Related Concepts

- [[martin-fowler]]
- [[managed-ml-service]]
- [[minimalism]]

## Sources

- [[flask-vs-fastapi]]
