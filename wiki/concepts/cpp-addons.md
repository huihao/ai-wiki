---
created: 2026-04-28
updated: 2026-04-28
tags: [native, nodejs]
---

# C++ Addons

## Metadata

- **Type**: Node.js Feature
- **Context**: Native extensions
- **Related**: V8 internals, libuv

## Definition

C++ addons are native extensions for Node.js written in C/C++ that provide high-performance functionality not available in pure JavaScript, or that require integration with existing C/C++ libraries.

## Key Components

- V8 API integration.
- libuv for async I/O.
- Node.js binding layer.
- Build systems (node-gyp, cmake).

## Use Cases

- Performance-critical operations.
- Hardware integration.
- Legacy library bindings.
- System-level access.

## Skills Coverage

Matteo Collina's `nodejs-core` skill covers:
- C++ addon development patterns.
- V8 internals understanding.
- libuv integration patterns.
- Build system configuration.

## Related Concepts

- [[v8]]
- [[libuv]]
- [[nodejs]]
- [[native-extensions]]

## Related Entities

- [[nodejs]]
- [[v8]]
- [[libuv]]

## Sources

- [[my-personal-skills-ai-assisted-nodejs-development]]
