---
title: Observability Chinese Community
url: https://observability.cn/
date: 2024-12-01
tags: [observability, monitoring, open-telemetry, grafana, prometheus]
---

# Observability Chinese Community

> Source: [Observability.cn](https://observability.cn/) - Chinese community site for observability tools, projects, and best practices.

## Overview

This community platform aggregates open-source observability projects and provides expert Q&A, articles, and resources for building comprehensive monitoring systems. Focus areas include metrics collection, distributed tracing, and log management.

## Featured Open-Source Projects

### Grafana
- **Type**: Analysis and monitoring platform
- **Features**: Multi-data-source integration, powerful charts, time-series analysis, alerting
- **Use Cases**: System performance monitoring, reliability tracking, health visualization

### Prometheus
- **Type**: Monitoring and alerting system
- **Focus**: Time-series data collection and storage
- **Developer**: SoundCloud
- **Key Feature**: PromQL query language for data mining and analysis
- **Integration**: Seamless with multiple visualization platforms

### OpenTelemetry
- **Type**: Unified observability framework
- **Mission**: Simplify observability integration across diverse tech stacks
- **Components**: APIs, SDKs, tool集
- **Scope**: Collection, processing, export of application performance data

### LoongCollector
- **Type**: Next-generation observability data collector
- **Developer**: Alibaba Cloud Observability Team
- **Features**:
  - High performance
  - Strong stability
  - Flexible programmability
  - Unified observability pipeline

- **Evolution**: From iLogtail's log collection → Expanded to observability data collection + local compute + service discovery
- **Vision**: Industry-leading "Unified Observability Agent" and "End-to-End Observability"

### iLogtail
- **Type**: High-performance log collection tool
- **Platform**: Alibaba Cloud Log Service
- **Features**: Real-time collection, parsing, transmission
- **Scope**: Multi-source support, complex log processing scenarios
- **Applications**: Distributed systems, web servers, application environments

### OpenTelemetry Go Auto Instrumentation
- **Type**: Non-invasive compile-time instrumentation
- **Developer**: Alibaba (open-source)
- **Standard**: OpenTelemetry specification
- **Language**: Golang applications
- **Key Feature**: Zero business code modification for monitoring

## Expert Q&A

**Community Engagement**: 1000+ developers actively提问

**Popular Topics**:
1. How to monitor K8S with Prometheus? (3040 questions)
2. Prometheus + Grafana for Nacos monitoring configuration? (2672 questions)
3. OpenTelemetry deployment strategies? (1733 questions)
4. iLogtail Docker environment setup? (1037 questions)

## Featured Articles

### 1. Six Classic Log Collection Anti-Patterns
- **Author**: Yu Tao (迅飞)
- **Date**: 2025-06-19
- **Theme**: Local log management反模式 risks → LoongCollector standard practices
- **Focus**: System reliability and故障排查 efficiency

### 2. End-to-End AI Observability Practice
- **Author**: Zhang Huxing (望陶)
- **Date**: 2025-06-11
- **Scope**: From AI Agent to model inference
- **Key Methods**:
  - Tracing across client → Agent → model inference
  - Metrics collection
  - Profiling
  - Evaluation

- **Goals**: AI application correctness, cost optimization, performance improvement

### 3. StoreView SQL for Cross-Region Data Analysis
- **Author**: Zhang Jian (处知)
- **Date**: 2025-06-04
- **Platform**: Log Service SLS
- **Feature**: StoreView combines multiple project logstores (cross-region) into virtual logstore
- **Benefit**: Query analysis不受地域限制

### 4. MCP for Observability 2.0 - 6 Efficiency Tips
- **Author**: Xi Zongzheng (霜键)
- **Date**: 2025-06-04
- **Focus**: MCP Server design practices
- **Scope**: Natural language dialogue with systems
- **Methods**: Monitoring + logging + metrics + distributed tracing → Observability 2.0 + MCP integration

### 5. AI Agent for PromQL Generation
- **Author**: Li Qiang (孟涂)
- **Date**: 2025-05-28
- **Theme**: Natural language → PromQL via AI智能体
- **Topics**: Knowledge base construction, LLM interaction, PromQL generation
- **Tools**: MCP + Cloud Monitoring Console + AI agent use cases

## Historical Events

### iLogtail 2nd Anniversary
- Community celebrations and future vision分享
- Usage survey report发布
- Community engagement metrics showcased

## Community Stats

- **Developer Participation**: 1000+ Q&A contributors
- **Event Engagement**: 70%+ developers关注或参与
- **Coverage**: Grafana, Prometheus, OpenTelemetry, custom Alibaba projects

## Key Themes

1. **Unified Observability Stack**: End-to-end monitoring pipeline
2. **Open-Source Integration**: Grafana + Prometheus + OpenTelemetry standard stack
3. **Alibaba Contributions**: LoongCollector, iLogtail, Go auto-instrumentation
4. **AI Observability**: Model inference monitoring, agent tracing
5. **Cross-Region Solutions**: StoreView for multi-project, multi-region analysis
6. **MCP Integration**: Natural language interface to observability systems
7. **Developer Education**: Q&A forum, best practice articles, event documentation

## Cross-References

- [[Observability]] - System monitoring and debugging
- [[OpenTelemetry]] - Observability standard
- [[Prometheus]] - Time-series monitoring
- [[Grafana]] - Visualization platform
- [[Distributed Tracing]] - Request flow tracking
- [[Metrics Collection]] - Quantitative monitoring
- [[Log Management]] - Event recording and analysis
- [[MCP]] - Model Context Protocol for AI-observability integration
- [[AI Observability]] - Model performance monitoring
- [[Alibaba]] - Contributor organization

## Related Resources

- Grafana documentation and dashboards
- Prometheus query language (PromQL) guides
- OpenTelemetry SDKs for multiple languages
- iLogtail deployment guides
- LoongCollector configuration manuals

---

*Last updated: 2026-04-28*