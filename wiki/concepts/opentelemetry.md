---
created: 2026-04-28
updated: 2026-05-09
tags: [infrastructure, observability, telemetry]
sources: 0
---

# OpenTelemetry

## Definition

OpenTelemetry (OTel) is an open-source observability framework and set of APIs, SDKs, and tools for instrumenting, generating, collecting, and exporting telemetry data (traces, metrics, and logs) from software systems. Formed in 2019 by the merger of OpenTracing and OpenCensus, OpenTelemetry provides vendor-neutral instrumentation, meaning applications instrumented with OTel can send telemetry data to any compatible backend (Jaeger, Prometheus, Grafana, Datadog, etc.) without code changes. OpenTelemetry is the second most active CNCF project after Kubernetes and has become the de facto standard for application observability in cloud-native environments.

## Key Proponents / Critics

- CNCF (Cloud Native Computing Foundation) — Hosts and governs the OpenTelemetry project
- [[grafana]] — Provides visualization backends (Tempo, Mimir) that consume OTel data
- [[prometheus]] — Metrics system compatible with OTel's metrics API

## Related Concepts

- [[observability]] — The broader discipline that OpenTelemetry serves
- [[distributed-tracing]] — One of the three pillars of telemetry that OTel provides
- [[monitoring]] — Operational practice enabled by OTel-collected data
- [[telemetry]] — The data type that OpenTelemetry standardizes collection for
- [[production-monitoring]] — Production systems instrumented with OTel for operational visibility
- [[log-management]] — The logging pillar of OpenTelemetry's three-signal model

## Related Entities

- [[grafana]] — Visualization and dashboard platform for OTel metrics and traces
- [[prometheus]] — Metrics collection and alerting system compatible with OTel
- [[anthropic]] — Implements observability patterns in AI systems

## Sources

(No specific sources linked)

## Evolution

- **2017**: OpenTracing (CNCF) and OpenCensus (Google/Microsoft) are established as separate tracing/metrics standards
- **2019**: OpenTracing and OpenCensus merge to form OpenTelemetry under the CNCF
- **2021**: OpenTelemetry tracing reaches stable status; metrics and logs follow
- **2022**: OTel Collector becomes the standard pipeline for telemetry data processing and export
- **2023**: OpenTelemetry logs signal reaches stable, completing the three-pillar observability model
- **2024**: OpenTelemetry becomes the second most active CNCF project, with widespread adoption across cloud providers
- **2025+**: OTel profiles signal is introduced for continuous profiling, extending observability beyond the three pillars
