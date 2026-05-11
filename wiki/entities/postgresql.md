---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, database, infrastructure]
sources: 1
---

# PostgreSQL

## Summary

PostgreSQL is a powerful, open-source object-relational database management system with a history dating back to the 1986 POSTGRES project at UC Berkeley. It is known for its strict standards compliance, extensibility, and advanced features including JSONB support, full ACID compliance, MVCC concurrency control, and a wide extension ecosystem. PostgreSQL is one of the most widely deployed open-source databases in the world.

## Key Attributes

- **Type**: Relational database management system (RDBMS)
- **Created by**: Michael Stonebraker and team at UC Berkeley (1986); PostgreSQL Global Development Group (current maintainer)
- **Notable for**: Extensibility, standards compliance, rich data type support, and reliability
- **License**: PostgreSQL License (liberal open-source)
- **Other facts**: Supports the pgvector extension for vector similarity search, making it suitable for AI/RAG workloads; commonly used via Python with SQLAlchemy, psycopg2, or asyncpg

## Related Entities

- [[postgres]] — informal alias for the same software
- [[python]] — primary language for PostgreSQL client libraries and ORMs
- [[redis]] — frequently used alongside PostgreSQL for caching
- [[elasticsearch]] — complementary full-text search solution

## Related Concepts

- [[join-algorithms]] — fundamental query optimization strategies in PostgreSQL's planner
- [[vector-database]] — PostgreSQL enters this space via the pgvector extension
- [[orm]] — object-relational mapping pattern, e.g. SQLAlchemy for Python/PostgreSQL

## Sources

- [[join-algorithms]] — PostgreSQL query planner join strategies

## Contradictions / Open Questions

- (none)
