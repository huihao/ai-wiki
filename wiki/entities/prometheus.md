---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, monitoring, infrastructure]
sources: 2
---

# Prometheus

## Summary

Prometheus is an open-source systems monitoring and alerting toolkit originally developed at SoundCloud and now a graduated project under the Cloud Native Computing Foundation (CNCF). It collects and stores its metrics as time-series data, providing a powerful query language (PromQL), built-in visualization (via Grafana integration), and multi-dimensional data model based on key-value labels. Prometheus is a cornerstone of cloud-native observability stacks, especially in Kubernetes environments.

## Key Attributes

- **Type**: Monitoring and alerting toolkit
- **Created by**: Julius Volz and Matt T. Proud, originally at SoundCloud (2012); CNCF graduated project (2018)
- **Notable for**: Pull-based metrics collection model, PromQL, multi-dimensional data model, service discovery
- **License**: Apache License 2.0
- **Other facts**: Often deployed alongside Grafana for dashboards and Alertmanager for notifications; supports targets via HTTP pull model, Pushgateway for short-lived jobs, and exporters for third-party systems

## Related Entities

- [[grafana]] — visualization and dashboarding tool most commonly paired with Prometheus
- [[kubernetes]] — container orchestration platform where Prometheus is heavily used for metrics
- [[cloudflare]] — uses Prometheus for infrastructure monitoring

## Related Concepts

- [[observability]] — the broader discipline Prometheus belongs to (metrics, logs, traces)
- [[monitoring]] — the specific operational function Prometheus fulfills
- [[production-monitoring]] — application of Prometheus in production environments
- [[production-deployment]] — deployment patterns for Prometheus in production

## Sources

- [[observability-chinese-community]] — Prometheus discussed as a core observability tool
- [[observability]] — Prometheus positioned within the observability landscape

## Contradictions / Open Questions

- (none)
