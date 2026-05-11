---
created: 2026-04-27
updated: 2026-04-27
tags: [entity, tool, distributed-systems, task-queue, python]
sources: 1
---

# Celery

## Overview

A distributed task queue system for Python that distributes work across threads or machines. Workers monitor queues for new tasks and execute them asynchronously. Commonly used in ML pipelines for background jobs like model training, data processing, and batch inference.

## Key Features

- **Message-based**: Communicates via messages using a broker (RabbitMQ, Redis, SQLite)
- **Language interoperability**: Protocol can be implemented in any language (Node.js, PHP, Go, Rust clients exist)
- **Scalability**: Multiple workers and brokers enable high availability and horizontal scaling
- **Flexible deployment**: Single machine, multiple machines, or across data centers
- **Periodic tasks**: Built-in support for scheduled/recurring tasks

## Architecture

```
Client → Broker (RabbitMQ/Redis) → Worker(s)
```

1. Client adds a message (task) to the queue
2. Broker delivers the message to an available worker
3. Worker executes the task and stores results (optional)

## Use Cases in ML

- **Async inference**: Offload prediction requests to workers
- **Batch processing**: Large-scale data transformations
- **Model training**: Queue training jobs for GPU workers
- **ETL pipelines**: Extract, transform, load workflows
- **Email/notification**: Send results after long-running jobs

## Related Concepts

- Redis — popular broker backend
- RabbitMQ — feature-complete message broker
- [[web-frameworks-for-ml]] — APIs that enqueue Celery tasks
- [[generative-ai-platform]] — async processing in production ML systems

## Sources

- [[celery-introduction|Introduction to Celery]] — official documentation
