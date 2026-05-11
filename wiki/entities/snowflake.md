---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, data-warehouse, cloud, infrastructure]
sources: 1
---

# Snowflake

## Summary

Snowflake is a cloud-native data platform providing a fully managed data warehouse, data lake, data engineering, data science, and data sharing service. Its architecture separates compute from storage, enabling independent scaling of each. Snowflake runs on all major cloud providers (AWS, Azure, GCP) and supports SQL-based analytics, semi-structured data (JSON, Avro), time travel, zero-copy cloning, and secure data sharing across organizations.

## Key Attributes

- **Type**: Cloud data platform / data warehouse (SaaS)
- **Founded**: 2012 by Benoit Dageville, Thierry Cruanes, and Marcin Zukowski; IPO in September 2020
- **Notable for**: Multi-cluster shared data architecture; separation of compute and storage; near-zero maintenance
- **License**: Proprietary (commercial SaaS)
- **Other facts**: Supports standard SQL; provides connectors for Python, Java, and other languages; integrates with BI tools like Tableau and dbt; competes with Google BigQuery, Amazon Redshift, and Databricks

## Related Entities

- [[databricks]] — competing lakehouse platform
- [[amazon]] — AWS is one of Snowflake's underlying cloud providers
- [[google-bigquery]] — competing cloud data warehouse
- Dbt — data transformation tool commonly used with Snowflake

## Related Concepts

- [[query-optimization]] — Snowflake's architecture optimizes queries via virtual warehouses
- [[distributed-systems]] — Snowflake's multi-cluster architecture distributes computation
- [[data-parallelism]] — Snowflake partitions and parallelizes query execution
- [[cloud-infrastructure]] — Snowflake runs across AWS, Azure, and GCP

## Sources

- [[join-algorithms]] — Snowflake referenced in the context of data warehouse join execution

## Contradictions / Open Questions

- (none)
