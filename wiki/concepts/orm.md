---
created: 2026-04-28
tags: [abstraction, database, python]
---

# ORM (Object Relational Mapper)

ORM (Object Relational Mapper) is a programming technique that maps object-oriented programming objects to relational database tables, abstracting database interactions.

## Overview

ORMs provide a Pythonic or language-native API for database operations, eliminating the need to write raw SQL queries for common operations.

## Core Functions

### Object Mapping

- Maps Python classes to database tables
- Object instances correspond to table rows
- Object attributes map to table columns

### CRUD Operations

- Create: Insert new records as objects
- Read: Query data into objects
- Update: Modify object attributes, sync to database
- Delete: Remove objects from database

### Relationship Mapping

- One-to-one relationships
- One-to-many relationships
- Many-to-many relationships
- Foreign key handling
- Join table abstraction

## Benefits

- Pythonic API for database access
- Reduced SQL boilerplate
- Type safety and validation
- Automatic relationship handling
- Database-agnostic interface
- Migration support

## Challenges

- Performance overhead for complex queries
- N+1 query problems
- Learning curve for advanced features
- Debugging generated SQL
- Less control over query optimization

## Popular ORMs

### Python

- SQLAlchemy (most comprehensive)
- Django ORM (framework-integrated)
- Peewee (lightweight)
- PonyORM (expressive queries)
- Tortoise-ORM (async support)

### Other Languages

- Hibernate (Java)
- Entity Framework (C#)
- ActiveRecord (Ruby)
- Sequelize (Node.js)
- TypeORM (TypeScript)

## SQLAlchemy Example

[[sqlalchemy-source]] provides:
- Full SQL toolkit
- Object Relational Mapper
- Enterprise-level persistence patterns
- High-performing database access
- Pythonic domain language

## When to Use ORM

### Good Use Cases

- Standard CRUD operations
- Complex object relationships
- Multiple database backends
- Rapid development
- Type safety requirements

### When Raw SQL Better

- Complex analytical queries
- Performance-critical operations
- Bulk data operations
- Database-specific features
- Fine-tuned query optimization

## Related Concepts

- [[database-abstraction]] - Interface layer abstraction
- [[persistence-patterns]] - Data storage patterns
- [[query-optimization]] - Performance tuning
- [[migration-management]] - Schema evolution

## Related Sources

- [[sqlalchemy-source]] - Python ORM toolkit

## External Links

- [SQLAlchemy Documentation](https://docs.sqlalchemy.org/)
- [ORM Patterns Overview](https://www.martinfowler.com/eaaCatalog/activeRecord.html)