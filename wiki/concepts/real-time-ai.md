---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Real-Time AI

## Definition
Real-time AI refers to AI systems that process data and generate outputs with minimal latency, enabling immediate or near-immediate responses to incoming events. Streaming AI extends this by continuously processing data streams, allowing models to update their outputs as new information arrives rather than waiting for batch processing.

## Key Aspects
- Requires low-latency inference: typically sub-100ms for interactive applications, sub-10ms for control systems
- Streaming AI processes data continuously rather than in batches, enabling real-time updates
- Token streaming in LLMs allows users to see output being generated in real-time, improving perceived responsiveness
- Real-time AI applications include live recommendation feeds, fraud detection, autonomous vehicles, and live translation
- Streaming architectures (Kafka, Flink, Spark Streaming) enable continuous data ingestion and model inference
- Challenges include maintaining model freshness, handling concept drift, and managing computational costs under sustained load
- Edge AI pushes inference closer to data sources to reduce network latency
- Real-time AI requires different infrastructure patterns than batch ML: online feature stores, model serving with autoscaling, and latency monitoring

## Related Concepts
- [[streaming-ai]]
- [[real-time-recommendation]]
- [[model-serving]]

## Sources
- [[streaming-ai]]
