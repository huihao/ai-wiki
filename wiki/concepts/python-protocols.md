---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Python Protocols

## Definition
Python protocols are the language's mechanism for structural subtyping (duck typing with type-checker support), defined in PEP 544. A protocol specifies a set of methods and attributes that a class must have to be considered compatible, without requiring explicit inheritance. This is particularly relevant when choosing between ASGI and WSGI for Python web frameworks.

## Key Aspects
- Protocols enable structural subtyping: a class satisfies a protocol by implementing the required methods, without inheriting from it
- Defined using `typing.Protocol` with method signatures that any conforming class must match
- Checked statically by type checkers (mypy, pyright) and can be verified at runtime with `isinstance()`
- WSGI (Web Server Gateway Interface) is a synchronous protocol: `__call__(self, environ, start_response)`
- ASGI (Asynchronous Server Gateway Interface) is an asynchronous protocol extending WSGI: `__call__(self, scope, receive, send)` with async support
- Frameworks like Django and Flask implement WSGI protocols; FastAPI and Starlette implement ASGI protocols
- Protocols enable flexible API design: any object implementing the right interface works, regardless of its class hierarchy
- Essential for understanding Python web framework interoperability and middleware design

## Related Concepts
- [[asgi-vs-wsgi]]
- [[structural-subtyping]]
- [[python-type-system]]

## Sources
- [[asgi-vs-wsgi]]
