---
created: 2026-04-28
updated: 2026-04-28
tags: [distributed-tracing, logging, metrics, monitoring]
sources: 1
---

# Observability

> Ability to understand internal system state through external outputs: logs, metrics, and traces.

## Definition

Observability extends beyond traditional monitoring by providing the ability to understand the internal state of a system based on its external outputs. Unlike monitoring (which checks predefined conditions), observability enables exploration and debugging of novel problems.

## Three Pillars

### 1. Metrics
- **Type**: Quantitative measurements over time
- **Examples**: Request latency, error rates, CPU utilization, memory usage
- **Tools**: Prometheus, Grafana
- **Use Cases**: Performance tracking, capacity planning, alerting

### 2. Logs
- **Type**: Event records with timestamps and contextual metadata
- **Examples**: Application logs, error traces, audit logs
- **Tools**: Elasticsearch, Loki, iLogtail, LoongCollector
- **Use Cases**: Debugging, forensics, compliance auditing

### 3. Traces
- **Type**: Request flow tracking across distributed services
- **Examples**: End-to-end request paths, service dependencies
- **Tools**: Jaeger, OpenTelemetry, Zipkin
- **Use Cases**: Distributed debugging, latency analysis, bottleneck identification

## Observability Stack

**Standard Architecture**:
1. **Collection**: OpenTelemetry SDKs, custom agents
2. **Storage**: Time-series databases (Prometheus), log stores (Elasticsearch/Loki), trace backends (Jaeger)
3. **Visualization**: Grafana dashboards, trace viewers
4. **Analysis**: Query languages (PromQL), anomaly detection

## Key Projects

### OpenTelemetry
- Unified standard for telemetry collection
- APIs, SDKs, and tools for metrics, logs, traces
- Vendor-neutral instrumentation

### Prometheus
- Time-series database and monitoring system
- PromQL query language
- Alerting and service discovery

### Grafana
- Multi-source visualization platform
- Dashboard composition
- Alerting and annotation

### iLogtail / LoongCollector
- Alibaba's high-performance log collectors
- Real-time processing and transmission
- Observability pipeline construction

## Observability 2.0

**Evolution**: Beyond basic telemetry → AI-powered observability
- **AI Integration**: Natural language querying via MCP
- **AI Observability**: Model inference tracing, agent monitoring
- **Cross-Region Analysis**: StoreView for multi-region log aggregation
- **Auto-Instrumentation**: Zero-code monitoring injection

## Use Cases

### Application Performance Monitoring
- Request latency tracking
- Error rate monitoring
- Throughput measurement

### Distributed System Debugging
- Trace-based root cause analysis
- Service dependency mapping
- Bottleneck identification

### Infrastructure Monitoring
- Resource utilization tracking
- Capacity planning
- Health checks

### AI/ML Observability
- Model inference tracing (end-to-end from agent → model)
- Performance profiling
- Cost tracking
- Evaluation metrics

### Security & Compliance
- Audit trail logging
- Access monitoring
- Data lineage tracking

## Challenges

### Scale
- High-volume data collection and storage
- Sampling strategies for cost control
- Retention policies

### Complexity
- Multi-service, multi-region architectures
- Correlation across telemetry types
- Context propagation

### Cost
- Storage and processing expenses
- Query optimization
- Data pipeline efficiency

## Best Practices

1. **Structured Logging**: JSON format, consistent fields
2. **Context Propagation**: Trace IDs across service boundaries
3. **Metric Naming**: Clear, consistent conventions
4. **Sampling**: Intelligent trace sampling to reduce cost
5. **Dashboard Design**: Focus on actionable insights vs. vanity metrics
6. **Alerting**: Focus on symptom-based alerts, not cause-based

## Related Concepts

- [[Distributed Tracing]]
- [[Metrics Collection]]
- [[Log Management]]
- [[AI Observability]]
- [[Monitoring]]
- [[Telemetry]]

## Related Entities

- [[OpenTelemetry]]
- [[Prometheus]]
- [[Grafana]]
- [[Alibaba]]

## Sources

- [[Observability Chinese Community]]

## Evolution

Observability evolved from simple logging to comprehensive three-pillar systems, now integrating AI for natural language interfaces and model performance monitoring.