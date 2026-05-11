---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Persistence Patterns

## Definition

Persistence patterns are established software design patterns for storing and retrieving data from persistent storage, including database abstraction layers and Object-Relational Mapping (ORM) techniques that decouple application logic from storage implementation details.

## Key Aspects

- Database abstraction layers provide a uniform interface for interacting with different database systems (PostgreSQL, MySQL, SQLite) without changing application code
- ORM (Object-Relational Mapping) maps object-oriented code structures to relational database tables, allowing developers to work with objects instead of raw SQL
- The Repository pattern encapsulates data access logic, making it possible to swap persistence backends without affecting business logic
- Active Record pattern binds data access and business logic to the same object, simplifying CRUD operations but coupling persistence with domain logic
- Data Mapper pattern separates the persistence layer from the domain model entirely, providing greater flexibility at the cost of more boilerplate
- In AI agent systems, persistence patterns manifest as memory storage (CLAUDE.md, memory files) that must persist across sessions while remaining human-readable
- Modern persistence considerations include: vector databases for embeddings, knowledge graphs for relationships, and traditional relational stores for structured data

## Related Concepts

- [[memory-bank]]

## Sources

- [[database-abstraction]]
- [[orm]]
