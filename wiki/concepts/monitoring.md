---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Monitoring

## Definition

Monitoring is the systematic collection, analysis, and visualization of system metrics, logs, and traces to maintain operational visibility and detect issues in real-time. In the context of AI and ML systems, monitoring encompasses metrics collection (Prometheus), visualization (Grafana), distributed tracing (OpenTelemetry), and increasingly, AI-specific observability for model inference and agent behavior.

## Key Aspects

- **Three pillars of observability**: Metrics (Prometheus), logs (iLogtail/LoongCollector), and distributed traces (OpenTelemetry) form the foundation
- **Grafana**: Multi-data-source integration platform for time-series analysis, alerting, and health visualization
- **Prometheus**: Time-series data collection with PromQL query language for monitoring and alerting, deeply integrated with Kubernetes
- **OpenTelemetry**: Unified framework for collecting, processing, and exporting application performance data across diverse tech stacks
- **AI observability**: Extending monitoring to cover AI Agent behavior, model inference tracing, metrics collection, and evaluation
- **MCP integration**: Natural language interfaces to observability systems through Model Context Protocol, enabling conversational monitoring
- **Cross-region solutions**: StoreView for multi-project, multi-region log analysis without geographic restrictions
- **Developer community**: 1,000+ developers actively contributing to monitoring best practices and Q&A

## Related Concepts

- [[observability]]
- [[prometheus]]
- [[grafana]]
- [[opentelemetry]]

## Sources

- [[observability-chinese-community]]
