---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, concept/method]
sources: 2
---

# Distributed Tracing

## Summary
Distributed tracing is an observability technique used to track and visualize the flow of requests as they propagate across multiple services in a distributed system. It assigns a unique trace ID to each request and collects spans (individual units of work) across service boundaries, enabling engineers to understand latency, identify bottlenecks, and debug failures in microservice architectures.

## Key Attributes
- **Type**: concept/method
- **Notable for**: providing end-to-end visibility into request flows across complex distributed systems
- **Other facts**: key open-source implementations include Jaeger (originally developed by Uber) and Zipkin (originally developed by Twitter); OpenTelemetry provides a vendor-neutral standard for distributed tracing instrumentation; traces consist of spans organized in a parent-child hierarchy; typically implemented via context propagation headers in HTTP/gRPC calls

## Related Entities
- [[grafana]] -- Grafana provides visualization and analysis for distributed traces
- [[prometheus]] -- Prometheus is often used alongside tracing for metrics-based observability
- [[opentelemetry]] -- the CNCF standard for distributed tracing instrumentation

## Related Concepts
- [[observability]] -- distributed tracing is one of the three pillars of observability (alongside metrics and logs)
- [[log-management]] -- log aggregation complements distributed tracing for debugging
- [[monitoring]] -- continuous monitoring of distributed system health
- [[telemetry]] -- the automated collection of observability data including traces
- [[distributed-systems]] -- the architectural paradigm that necessitates distributed tracing

## Sources
- [[observability]] -- covers distributed tracing as a core component of system observability
- [[observability-chinese-community]] -- discusses observability practices including distributed tracing

## Contradictions / Open Questions
- The overhead of distributed tracing (additional latency, storage costs) must be balanced against its diagnostic value. Sampling strategies (head-based vs. tail-based) trade completeness of trace data against resource consumption, and the optimal strategy depends on system scale and debugging needs.
