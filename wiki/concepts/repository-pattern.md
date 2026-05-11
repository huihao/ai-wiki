---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Repository Pattern

## Definition

The repository pattern is a software design pattern that abstracts data persistence logic behind a clean interface, separating the domain model from the data access layer. It provides a uniform API for CRUD operations regardless of the underlying database technology, enabling easier testing, swapping of storage backends, and cleaner separation between business logic and data concerns.

## Key Aspects

- Abstracts data access behind a uniform interface, hiding the specifics of database queries, connections, and ORM details from the domain layer
- Provides CRUD operations (Create, Read, Update, Delete) through a consistent API that business logic consumes
- Enables easy swapping of database backends (e.g., PostgreSQL to MongoDB) without changing domain code
- Facilitates unit testing by allowing mock repositories to replace real database connections
- Separates persistence concerns from business logic, promoting single responsibility
- Commonly used with ORMs (SQLAlchemy, Entity Framework, Hibernate) but works with any data access method
- Variants include Unit of Work pattern for transaction management and Active Record for simpler applications

## Related Concepts

- [[data-access-layer]] -- The layer that the repository pattern abstracts
- [[domain-driven-design]] -- Architectural pattern where repositories are commonly employed
- [[sqlalchemy]] -- Python ORM commonly paired with the repository pattern

## Sources

- [[database-abstraction]]
