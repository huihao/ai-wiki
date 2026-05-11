---
created: 2026-04-28
tags: [database, layer, software-design]
---

# Database Abstraction

Database abstraction provides interface layers that hide database-specific implementation details, enabling code to work with different database systems without modification.

## Overview

Abstraction layers decouple application code from database specifics, enabling portability and easier maintenance.

## Abstraction Levels

### Level 1: Connection Abstraction

- Unified connection interfaces
- Driver abstraction
- Connection pooling
- Configuration management

### Level 2: Query Abstraction

- Query builder APIs
- Parameter binding
- Result set handling
- Transaction management

### Level 3: Object Abstraction (ORM)

- Object-table mapping
- Relationship handling
- Lazy loading
- Identity mapping

### Level 4: Domain Abstraction

- Business logic layer
- Repository pattern
- Service layer
- Domain model

## Benefits

### Portability

- Switch databases without code changes
- Support multiple database vendors
- Cross-platform compatibility
- Database version upgrades

### Maintainability

- Centralized database logic
- Clear separation of concerns
- Easier testing
- Reduced coupling

### Developer Experience

- No need to learn database-specific SQL
- Type-safe interfaces
- IDE support and autocomplete
- Consistent API patterns

## Trade-offs

### Performance

- Abstraction overhead
- Generated SQL may be less optimal
- Additional memory for object mapping
- Query complexity limitations

### Flexibility

- Limited access to database-specific features
- Harder to optimize complex queries
- Constraint by abstraction capabilities
- Debugging abstraction-generated code

## Examples

### SQLAlchemy

[[sqlalchemy-source]] provides multiple abstraction levels:
- Core: SQL expression language (Level 2)
- ORM: Object mapping (Level 3)
- Engine: Connection management (Level 1)

### Other Libraries

- ODBC (C-based abstraction)
- JDBC (Java database connectivity)
- ADO.NET (Microsoft data access)
- PDO (PHP data objects)

## Design Patterns

### Repository Pattern

- Mediates between domain and data mapping layers
- Provides collection-like interface
- Abstracts query logic
- Unit of work coordination

### Data Access Object (DAO)

- Encapsulates database operations
- CRUD method abstraction
- Separate from business logic
- Often used in enterprise systems

### Active Record

- Object contains both data and behavior
- Object responsible for persistence
- Rails/Django style pattern
- Simpler than repository pattern

## Related Concepts

- [[orm]] - Object relational mapping
- [[persistence-patterns]] - Data storage approaches
- [[repository-pattern]] - Data access abstraction
- [[query-builder]] - Programmatic SQL construction

## Related Sources

- [[sqlalchemy-source]] - Python database toolkit

## External Links

- [SQLAlchemy Core vs ORM](https://docs.sqlalchemy.org/en/20/intro.html#core-vs-orm)
- [Martin Fowler on Data Access](https://www.martinfowler.com/eaaCatalog/)