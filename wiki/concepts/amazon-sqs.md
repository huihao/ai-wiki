---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 2
---

# Amazon SQS

## Definition
Amazon Simple Queue Service (SQS) is a fully managed cloud message queuing service that enables decoupled, asynchronous communication between distributed system components. It provides reliable delivery of messages between software components, handling scaling, durability, and availability automatically.

## Key Aspects
- Fully managed service — no infrastructure to maintain; scales automatically with demand
- Supports two queue types: Standard (best-effort ordering, at-least-once delivery) and FIFO (strict ordering, exactly-once processing)
- Decouples producer and consumer components, allowing them to fail or scale independently
- Messages can be retained for up to 14 days, providing a buffer for downstream processing
- Integrates with AWS Lambda, EC2, and other services for event-driven architectures
- Commonly used for task queues, work distribution, and buffering writes to databases

## Related Concepts
- [[ai-in-operations]]
- [[autonomous-agents]]

## Sources
- [[message-brokers]]
- [[task-queues]]
