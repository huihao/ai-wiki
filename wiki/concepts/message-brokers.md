---
name: "Message Brokers"
type: "concept"
category: "distributed-systems"
description: "Software that enables applications, systems, and services to communicate with each other by translating messages between formal messaging protocols."
---

# Message Brokers

Message brokers are intermediary software that enables communication between applications, systems, and services. They translate messages between formal messaging protocols and manage message delivery.

## Core Functions

### Message Translation

- Convert messages between different protocols
- Enable heterogeneous system communication
- Protocol abstraction

### Message Routing

- Direct messages to appropriate recipients
- Topic-based routing
- Queue-based routing
- Pattern-based routing

### Message Storage

- Persistent message storage
- Temporary buffering
- Message durability

### Message Delivery

- Guaranteed delivery
- At-most-once delivery
- At-least-once delivery
- Exactly-once delivery

## Architecture Patterns

### Point-to-Point

- Single sender to single receiver
- Queue-based messaging
- One consumer per message

### Publish-Subscribe

- Single sender to multiple receivers
- Topic-based messaging
- Multiple subscribers per message

### Request-Reply

- Two-way communication
- Synchronous interaction pattern
- Response correlation

## Popular Brokers

### RabbitMQ

- AMQP protocol implementation
- Multiple messaging patterns
- Reliable delivery
- Advanced routing
- Management interface

### Redis

- In-memory data store
- Simple queuing
- Pub/sub support
- Fast performance
- Lightweight

### Apache Kafka

- Distributed streaming platform
- High throughput
- Event streaming
- Log-based storage
- Scalable

### Amazon SQS

- AWS managed service
- Fully managed queues
- Scalable
- AWS integration
- No infrastructure management

### ActiveMQ

- Java-based broker
- Multiple protocols
- JMS support
- Enterprise features

## Use Cases

### Task Queues

- Background job processing
- Task distribution
- Worker coordination
- Example: Celery with RabbitMQ

### Event Streaming

- Real-time data streaming
- Event sourcing
- Log aggregation
- Example: Kafka

### Service Communication

- Microservices communication
- Service decoupling
- API mediation
- Request routing

### Pub/Sub Systems

- Notification systems
- Real-time updates
- Event broadcasting
- News feeds

### IoT Applications

- Device data collection
- Sensor data processing
- Device command distribution

## Broker Selection Criteria

### Performance

- Throughput requirements
- Latency needs
- Message volume
- Connection count

### Reliability

- Message persistence
- Delivery guarantees
- Fault tolerance
- Backup/restore

### Scalability

- Horizontal scaling
- Clustering support
- Load distribution
- Growth capacity

### Protocol Support

- AMQP
- MQTT
- STOMP
- HTTP
- Custom protocols

### Management

- Monitoring interface
- Configuration tools
- Security features
- Administration APIs

## Broker Features

### Message Persistence

- Durable storage
- Disk-based persistence
- Message recovery
- Transaction support

### Message Ordering

- FIFO ordering
- Priority ordering
- Sequence preservation

### Message Filtering

- Content-based filtering
- Header-based filtering
- Pattern matching

### Dead Letter Queues

- Failed message handling
- Error isolation
- Retry limits

### Acknowledgment

- Consumer confirmation
- Automatic acknowledgment
- Manual acknowledgment

## Integration with Task Queues

Message brokers are essential for task queue systems:

### Celery Integration

- RabbitMQ (recommended, feature complete)
- Redis (feature complete)
- Amazon SQS (experimental)
- Other experimental brokers

### Task Queue Flow

1. Client sends task to broker
2. Broker queues message
3. Worker retrieves from broker
4. Worker executes task
5. Result backend stores outcome

## Challenges

### Complexity

- Broker setup and configuration
- Protocol understanding
- Routing configuration

### Performance Tuning

- Connection pooling
- Message batching
- Memory management

### Monitoring

- Queue depth monitoring
- Message throughput tracking
- Failure detection

### Security

- Authentication
- Authorization
- Encryption
- Network security

## Related Concepts

- [[task-queues]] - Task distribution using brokers
- [[distributed-systems]] - Distributed architecture
- [[asynchronous-processing]] - Async patterns
- [[pub-sub]] - Publish-subscribe pattern
- [[amqp]] - Advanced Message Queuing Protocol

## Related Entities

- [[rabbitmq]] - AMQP broker
- [[redis]] - In-memory broker
- [[apache-kafka]] - Streaming platform
- [[amazon-sqs]] - AWS queue service
- [[celery]] - Task queue using brokers