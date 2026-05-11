---
created: 2026-04-29
updated: 2026-05-09
tags: [concurrency, nodejs, systems]
sources: 2
---

# Event Loop

## Definition
The event loop is the concurrency model at the heart of Node.js (and similar runtimes) that enables non-blocking I/O by continuously checking for and dispatching events (callbacks, promises, I/O completions) on a single thread, offloading blocking operations to the underlying libuv thread pool or OS asynchronous APIs.

## Key Aspects
- Node.js executes JavaScript on a single thread; the event loop manages concurrency without threads
- I/O operations (file reads, network requests, database queries) are dispatched asynchronously
- When I/O completes, callbacks or promise handlers are queued for execution on the event loop
- Blocking the event loop (CPU-intensive work, synchronous I/O) stalls all concurrent operations
- Understanding event loop phases (timers, pending callbacks, poll, check, close) is essential for debugging
- Fastify (a Node.js web framework) leverages the event loop for high-performance HTTP handling
- Matteo Collina's skills repository encodes event loop patterns and async error handling for AI agents
- Stream processing integrates with the event loop for efficient data handling of large payloads

## Related Concepts
- [[fail-closed]]
- [[detail-levels]]

## Sources
- [[fastify]]
- [[my-personal-skills-ai-assisted-nodejs-development]]
