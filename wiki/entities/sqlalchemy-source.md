---
created: 2026-04-29
updated: 2026-05-09
tags: [database]
sources: 2
---

# SQLAlchemy

## Summary

SQLAlchemy is Python's most widely used SQL toolkit and Object-Relational Mapper (ORM), providing enterprise-level persistence patterns through a Pythonic domain language. It offers both a high-level ORM for mapping Python classes to database tables and a low-level SQL expression language for writing database-agnostic SQL directly.

## Key Aspects

- Provides two primary interfaces: the high-level ORM for declarative mapping and the Core SQL Expression Language for programmatic query construction
- Current stable version is 2.0, which unified the sync and async APIs and introduced a more consistent session model
- Enables database portability by abstracting vendor-specific SQL dialects behind a unified Python API
- Supports connection pooling, transaction management, and lazy/eager loading strategies for related objects
- Widely adopted as the default ORM in Python web frameworks such as FastAPI, Flask-SQLAlchemy, and Django (via django-sqlalchemy)
- Integrates with async runtimes (asyncpg, aiosqlite) for non-blocking database operations

## Related Concepts

- [[database-abstraction]]
- [[orm]]
- [[worker-pools]]

## Sources

- [[sqlalchemy]]
