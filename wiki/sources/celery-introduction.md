---
created: 2026-04-27
updated: 2026-04-27
tags: [source, documentation, distributed-systems, python]
sources: 1
---

# Introduction to Celery

## Metadata

- **Author**: Celery Project
- **Date**: 2012–present
- **URL**: https://docs.celeryq.dev/en/stable/getting-started/introduction.html
- **Fetched**: 2026-04-24
- **Raw file**: `raw/Introduction to Celery¶.md`

## Summary

Official documentation for Celery 5.6, a distributed task queue system. Workers monitor queues for tasks, execute them asynchronously, and store results. Supports multiple brokers (RabbitMQ, Redis, SQLite) and languages.

## Key Takeaways

- Task queues distribute work across threads or machines
- Broker mediates between clients and workers (RabbitMQ/Redis recommended)
- Language interoperability: Node.js, PHP, Go, Rust clients available
- Can run on single machine, multiple machines, or across data centers
- HTTP/webhook approach for cross-language integration

## Entities Mentioned

- [[celery-introduction|Celery]] — the task queue system

## Concepts Mentioned

- [[designing-agentic-ai-systems-web-dev|Distributed Systems]] — task distribution
- Message brokers — RabbitMQ, Redis

## Raw Notes

- Essential infrastructure for production ML systems that need async processing
- Common pattern: FastAPI/Flask endpoint enqueues Celery task, worker processes in background
