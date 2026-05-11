---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept, observability, monitoring, infrastructure]
sources: 2
---

# Metrics Collection

## Summary
Metrics collection is the practice of gathering quantitative measurements about system behavior and performance over time. As a core pillar of observability — alongside log management and distributed tracing — metrics collection enables teams to track key performance indicators (KPIs), detect anomalies, set up alerts, and understand system trends. Common metrics include request latency, error rates, throughput, CPU/memory utilization, and custom business metrics.

## Key Attributes
- **Type**: practice / infrastructure concern
- **Notable for**: Provides quantitative visibility into system health and performance trends
- **Key tools**: Prometheus (time-series database with PromQL), Grafana (visualization), OpenTelemetry (unified framework), StatsD, Datadog
- **Data model**: Typically time-series data with labels/tags for multi-dimensional analysis

## Related Concepts
- [[observability]] — the broader practice encompassing metrics, logs, and traces
- [[log-management]] — complementary pillar focused on event-based data
- [[metric-alignment]] — aligning metrics with business and system objectives
- [[ai-observability]] — monitoring model inference performance and agent behavior

## Sources
- [[observability-chinese-community]] — covers Prometheus, Grafana, and OpenTelemetry for metrics collection
- [[observability]] — broad observability practices including metrics collection

## Contradictions / Open Questions
- How to balance metric granularity with storage costs and query performance.
- Whether OpenTelemetry will fully replace purpose-built metric systems (e.g., Prometheus, Datadog).
- Emerging need for AI-specific metrics (token latency, hallucination rates, cost-per-query).
