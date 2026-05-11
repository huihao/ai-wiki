---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 3
---

# Asynchronous Processing

## Definition
Asynchronous processing is a design pattern that decouples time-consuming operations from the request-response cycle by dispatching work to background workers via message brokers, enabling applications to remain responsive while long-running tasks execute independently.

## Key Aspects
- **Task queue architecture**: Work units (tasks) are placed in queues by clients, delivered via a message broker (RabbitMQ, Redis), and executed by dedicated worker processes that monitor the queue continuously.
- **Celery as the standard**: Celery 5.6 is the dominant distributed task queue for Python, supporting multiple brokers, language interoperability (Node.js, Go, Rust clients), and horizontal scaling across machines or data centers.
- **High availability**: Multiple workers and brokers provide fault tolerance; if one worker fails, the task is retried on another.
- **Common use cases in ML/AI**: Background model inference, data preprocessing pipelines, report generation, email notifications, API calls to external services, and scheduled maintenance tasks.
- **Framework integration**: Celery integrates with Django, FastAPI, and Flask via specialized packages that handle lifecycle hooks (e.g., closing database connections at fork).
- **Result backends**: Task results can be stored in databases (SQLAlchemy, DynamoDB, Cassandra) or caches (Redis) for later retrieval by the requesting application.

## Related Concepts
- [[async-python]]
- [[api-development]]
- [[cloud-infrastructure]]

## Sources
- [[introduction-to-celery]]
- [[message-brokers]]
- [[task-queues]]
