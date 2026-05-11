---
url: "https://docs.celeryq.dev/en/stable/getting-started/introduction.html"
title: "Introduction to Celery"
date: "2012-03-07"
description: "Celery is a distributed task queue system for Python that allows you to run time-consuming tasks asynchronously across multiple workers."
source: "docs.celeryq.dev"
fetched_at: "2026-04-24T17:59:18.785954"
---

# Introduction to Celery

> Original source: [Celery Documentation](https://docs.celeryq.dev/en/stable/getting-started/introduction.html)

---

## Overview

Celery is a distributed task queue system for Python. It enables asynchronous execution of work across threads or machines, making it ideal for handling time-consuming operations in web applications and other systems.

## Key Concepts

### Task Queue

A task queue distributes work across threads or machines. The input is a unit of work called a task, and dedicated worker processes constantly monitor task queues for new work to perform.

### Message-Based Architecture

Celery communicates via messages, usually using a broker to mediate between clients and workers:

- **Client**: Adds a message to the queue to initiate a task
- **Broker**: Delivers messages between clients and workers
- **Worker**: Executes the task

### High Availability and Scaling

A Celery system can consist of multiple workers and brokers, enabling:
- Horizontal scaling
- High availability
- Distributed processing across data centers

## Language Support

While Celery is written in Python, the protocol can be implemented in any language:

- **node-celery** for Node.js
- **PHP client**
- **gocelery** and **gopher-celery** for Go
- **rusty-celery** for Rust

Language interoperability can also be achieved through HTTP endpoints and webhooks.

## Requirements

Celery requires a message transport to send and receive messages. Supported brokers:

- **RabbitMQ** (feature complete)
- **Redis** (feature complete)
- SQLite (for local development)
- Other experimental solutions

Celery can run on:
- A single machine
- Multiple machines
- Across data centers

## Installation

```bash
pip install -U Celery
```

### Bundles

Celery defines bundles for specific features:

```bash
pip install "celery[librabbitmq]"
pip install "celery[librabbitmq,redis,auth,msgpack]"
```

#### Available Bundles

**Serializers:**
- `celery[auth]` - auth security serializer
- `celery[msgpack]` - msgpack serializer
- `celery[yaml]` - yaml serializer

**Concurrency:**
- `celery[eventlet]` - eventlet pool
- `celery[gevent]` - gevent pool

**Transports and Backends:**
- `celery[librabbitmq]` - librabbitmq C library
- `celery[redis]` - Redis transport/backend
- `celery[sqs]` - Amazon SQS transport
- `celery[cassandra]` - Apache Cassandra backend
- `celery[couchbase]` - Couchbase backend
- `celery[elasticsearch]` - Elasticsearch backend
- `celery[dynamodb]` - AWS DynamoDB backend
- `celery[sqlalchemy]` - SQLAlchemy backend
- `celery[zookeeper]` - Zookeeper transport
- And many more...

## Framework Integration

Celery integrates with popular web frameworks:

- **Django** - see "First steps with Django"
- Other frameworks have integration packages available

Integration packages aren't strictly necessary but can:
- Make development easier
- Add important hooks (e.g., closing database connections at fork)

## Features

Celery provides:
- Distributed task execution
- Message-based communication
- High availability
- Horizontal scaling
- Multiple broker support
- Result backends
- Task scheduling
- Workflows and task signatures
- Resource pooling
- Rate limiting
- Error handling and retry mechanisms

## Use Cases

Celery is commonly used for:
- Email sending
- File processing
- Data analysis
- Report generation
- Scheduled maintenance tasks
- API calls to external services
- Background job processing
- Real-time data processing

## Related Concepts

- [[task-queues]] - Understanding distributed task execution
- [[message-brokers]] - RabbitMQ, Redis, and other brokers
- [[asynchronous-processing]] - Decoupling time-consuming operations
- [[worker-pools]] - Managing concurrent task execution
- [[distributed-systems]] - Scaling across multiple machines

## Related Entities

- [[celery]] - The Celery project and organization
- [[rabbitmq]] - Popular message broker
- [[redis]] - In-memory data store and broker