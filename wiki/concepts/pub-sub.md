---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Pub-Sub (Publish-Subscribe)

## Definition
Pub-sub (publish-subscribe) is a messaging pattern where senders (publishers) dispatch messages to a message broker without knowledge of which receivers (subscribers) will consume them, and subscribers receive messages matching their registered interests. It decouples message producers from consumers, enabling scalable, event-driven architectures.

## Key Aspects
- Publishers send messages to topics or channels without addressing specific consumers
- Subscribers register interest in topics and receive all messages published to those topics
- The message broker handles routing, delivery, and often persistence of messages
- Decouples producers and consumers in time (asynchronous), space (no direct addressing), and synchronization
- Common implementations include Apache Kafka, RabbitMQ, AWS SNS/SQS, Google Pub/Sub, and Redis Streams
- Supports one-to-many delivery: a single published message can be consumed by multiple subscribers
- Variations include topic-based pub-sub, content-based filtering, and queue-based point-to-point delivery
- Essential building block for event-driven microservices, real-time data pipelines, and notification systems

## Related Concepts
- [[message-brokers]]
- [[event-driven-architecture]]
- [[microservices]]

## Sources
- [[message-brokers]]
