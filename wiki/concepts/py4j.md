---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Py4J

## Definition
Py4J is a bridge library that enables Python programs to communicate with Java programs running in a separate JVM process. It allows Python code to call Java methods, access Java objects, and interact with Java-based systems, making it a key integration tool for polyglot data science and AI pipelines where Java infrastructure meets Python ML libraries.

## Key Aspects
- Enables bidirectional communication between Python and Java processes over a TCP socket
- Python code can instantiate Java objects, call methods, and access fields remotely
- Used extensively in Apache PySpark to bridge Python (PySpark) with the underlying Scala/Java Spark engine
- GatewayServer (Java side) listens for Python connections; GatewayClient (Python side) connects to it
- Supports dynamic proxying: Python objects can implement Java interfaces, and Java objects can be called from Python
- Provides automatic type conversion between Python and Java types (primitives, strings, collections)
- In self-programming agent architectures, Py4J enables Python-based agents to interact with Java toolchains and build systems

## Related Concepts
- [[apache-spark]]
- [[polyglot-programming]]
- [[jvm-integration]]

## Sources
- [[self-programming-agent]]
