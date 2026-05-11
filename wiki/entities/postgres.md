---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, database, infrastructure]
sources: 3
---

# Postgres

## Summary

Postgres (PostgreSQL) is a powerful, open-source object-relational database management system known for its extensibility, standards compliance, and reliability. It supports advanced data types (JSON, arrays, hstore), full ACID transactions, MVCC (Multi-Version Concurrency Control), and a rich extension ecosystem. Postgres is widely used as a primary database for web applications, data warehousing, and increasingly as a vector database for AI/RAG workloads via the pgvector extension.

## Key Attributes

- **Type**: Relational database management system (RDBMS)
- **Created by**: The PostgreSQL Global Development Group; originated at UC Berkeley in 1986
- **Notable for**: Extensibility, standards compliance, and the pgvector extension enabling vector similarity search
- **License**: PostgreSQL License (liberal open-source)
- **Other facts**: Consistently ranked among the most popular databases worldwide; supports full-text search, window functions, CTEs, and logical replication

## Related Entities

- [[postgresql]] — the formal project name (same software)
- [[python]] — commonly paired via psycopg2, SQLAlchemy, or asyncpg drivers
- [[redis]] — often used alongside Postgres as a caching layer
- [[elasticsearch]] — complementary full-text search engine

## Related Concepts

- [[join-algorithms]] — query optimization strategies fundamental to Postgres performance
- [[rag-architecture]] — Postgres + pgvector used as the retrieval store in some RAG pipelines
- [[vector-database]] — pgvector extends Postgres into this category

## Sources

- [[join-algorithms]] — join execution strategies used in Postgres query planner
- [[turn-website-into-graph-knowledge-base]] — uses Postgres as storage backend for graph data

## Contradictions / Open Questions

- (none)
