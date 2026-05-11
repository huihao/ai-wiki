---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Async Error Handling

## Definition
Async error handling refers to the patterns and mechanisms used to catch, propagate, and recover from errors in asynchronous Python code, particularly in the context of Node.js-style test runners and async-first frameworks. Proper async error handling ensures that unhandled promise rejections or uncaught exceptions do not crash long-running server processes or silently swallow failures.

## Key Aspects
- **Unhandled promise rejections**: In async functions, exceptions become rejected promises; without `.catch()` or `try/await`, these propagate silently and may crash the process in newer runtimes
- **try/await pattern**: The modern Python pattern wraps `await` calls in `try/except` blocks, analogous to synchronous error handling but operating on coroutines
- **Context propagation**: Errors in async callbacks or tasks may lose their original traceback context; structured error logging preserves the causal chain
- **Graceful degradation**: In production systems, error handlers should implement retry with backoff, circuit breakers, or fallback behavior rather than failing immediately
- **Test runner integration**: Async test runners must capture and report unhandled rejections from test cases, which is a distinct challenge from synchronous test error collection
- **Global handlers**: Setting `loop.exception_handler()` in asyncio or `process.on('unhandledRejection')` in Node.js provides a last-resort catch for otherwise unhandled errors

## Related Concepts
- [[async-error-handling]] -- core error handling patterns in async Python
- [[bottleneck]] -- error handling overhead as a potential performance bottleneck

## Sources
- [[node-test-runner]]
