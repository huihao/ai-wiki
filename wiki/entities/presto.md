---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, data-engineering, distributed-systems]
sources: 1
---

# Presto

## Summary

Presto (now also known as Trino, after a fork in 2019) is a distributed SQL query engine designed for running fast, interactive analytic queries against large datasets of all sizes, including data in data lakes, data warehouses, and relational databases. Originally developed at Facebook, Presto supports querying data where it lives without needing to move or copy it, making it valuable for federated queries across heterogeneous data sources.

## Key Attributes

- **Type**: Distributed SQL query engine
- **Created by**: Martin Traverso, Dain Sundstrom, David Phillips, and Eric Hwang at Facebook (2012)
- **Notable for**: Federated query capability across multiple data sources; in-memory processing for low-latency analytics
- **License**: Apache License 2.0
- **Other facts**: The original PrestoDB is maintained by the Linux Foundation (presto.org); the fork Trino is maintained by Trino Software. Presto supports ANSI SQL and connectors for Hive, MySQL, PostgreSQL, Kafka, and many other systems.

## Related Entities

- [[snowflake]] — cloud data warehouse that competes in the analytics query space
- [[apache-kafka]] — streaming platform that Presto can query via connectors
- [[elasticsearch]] — data source that Presto can federate queries against

## Related Concepts

- [[join-algorithms]] — core query execution strategies in distributed engines like Presto
- [[query-optimization]] — cost-based optimization in Presto's query planner
- [[distributed-systems]] — architectural pattern underlying Presto's cluster model

## Sources

- [[join-algorithms]] — Presto's join execution strategies in the context of distributed query engines

## Contradictions / Open Questions

- The naming confusion between PrestoDB and Trino (the 2019 fork) is worth noting; references to "Presto" in different contexts may mean either project.
