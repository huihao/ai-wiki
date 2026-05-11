---
created: 2026-04-29
updated: 2026-05-09
tags: [entity, tool, message-broker, infrastructure]
sources: 3
---

# RabbitMQ

## Summary

RabbitMQ is an open-source message broker that implements the Advanced Message Queuing Protocol (AMQP). It acts as a middleware layer between application components, enabling asynchronous communication through message queues, topic exchanges, and routing patterns. RabbitMQ is widely used for decoupling services, task distribution, and building resilient distributed systems, and is a common choice as the message backend for Python's Celery task queue.

## Key Attributes

- **Type**: Message broker
- **Created by**: Rabbit Technologies Ltd (originally developed at LShift/CohesiveFT); now maintained by Broadcom (via VMware/Pivotal acquisition)
- **Notable for**: AMQP 0-9-1 protocol support, flexible exchange/queue routing model, management UI, plugin ecosystem
- **License**: Mozilla Public License 1.1
- **Other facts**: Written in Erlang/OTP, giving it high concurrency and fault tolerance; supports clustering, mirrored queues, and federation for high availability; alternatives include Apache Kafka, Redis, and Amazon SQS

## Related Entities

- [[celery]] — Python distributed task queue that uses RabbitMQ as its default broker
- [[redis]] — alternative message broker / backend commonly used with Celery
- [[apache-kafka]] — competing message streaming platform
- [[amazon-sqs]] — cloud-based message queue service

## Related Concepts

- [[message-brokers]] — the category of middleware RabbitMQ belongs to
- [[task-queues]] — RabbitMQ is the message transport layer for task queue systems
- [[asynchronous-processing]] — the pattern RabbitMQ enables between services
- [[pub-sub]] — publish-subscribe messaging pattern supported by RabbitMQ
- [[amqp]] — the protocol RabbitMQ natively implements

## Sources

- [[introduction-to-celery]] — RabbitMQ discussed as Celery's default message broker
- [[message-brokers]] — RabbitMQ covered in the context of message broker options
- [[task-queues]] — RabbitMQ as infrastructure for task queue systems

## Contradictions / Open Questions

- (none)
