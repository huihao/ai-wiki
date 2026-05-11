---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# AMQP

## Definition

AMQP (Advanced Message Queuing Protocol) is an open standard messaging protocol used for asynchronous communication between distributed systems. It provides the foundation for message brokers like RabbitMQ, enabling reliable message delivery, routing, and queue management in production infrastructure.

## Key Aspects

- AMQP is the protocol underlying message brokers like RabbitMQ, which Celery recommends as a feature-complete broker
- Message brokers mediate between clients (task producers) and workers (task consumers) in distributed systems
- Celery's architecture uses message-based communication: Client sends message to Broker, Broker delivers to Worker
- AMQP enables horizontal scaling, high availability, and distributed processing across data centers
- Alternative brokers include Redis (also feature-complete with Celery) and SQLite (for local development)
- AMQP supports complex routing patterns, acknowledgment mechanisms, and message persistence
- Cross-language interoperability is achieved through HTTP endpoints and webhooks alongside AMQP

## Related Concepts

- [[apache-spark]]
- [[api-management]]
- [[agent-infrastructure]]

## Sources

- [[message-brokers]]
