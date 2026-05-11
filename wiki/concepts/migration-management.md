---
created: 2026-04-29
updated: 2026-05-09
tags: [database]
sources: 1
---

# Migration Management

## Definition

Migration management is the practice of version-controlling and systematically applying changes to database schemas over time, typically handled by Object-Relational Mapping (ORM) frameworks. Migrations enable teams to evolve database structures collaboratively, track schema history, and roll back changes when necessary.

## Key Aspects

- ORM frameworks (Django ORM, SQLAlchemy, ActiveRecord) generate migration files that describe schema changes in version-controlled code
- Migrations are applied sequentially, with each migration recording what changes were made and enabling forward/backward execution
- Forward migrations apply changes (add table, add column, create index); reverse migrations undo them
- Migration files are committed to source control alongside application code, ensuring schema and code stay synchronized
- Auto-generated migrations detect model changes and produce diff-based migration files, though manual review is recommended for production
- Schema evolution in production requires careful planning: large table migrations may need online DDL tools (pt-online-schema-change, gh-ost)
- Migration management connects to broader DevOps practices: CI/CD pipelines run migrations automatically during deployments

## Related Concepts

- [[microframework]]
- [[martin-fowler]]
- [[managed-ml-service]]

## Sources

- [[orm]]
