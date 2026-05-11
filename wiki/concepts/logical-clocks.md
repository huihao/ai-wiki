---
created: 2026-04-29
updated: 2026-04-29
tags: [distributed-systems, ordering, synchronization]
sources: 1
---
# Logical Clocks

## Definition

Logical clocks are mechanisms for capturing causal ordering of events in distributed systems where physical clocks are unreliable or unavailable. Lamport clocks and vector clocks provide logical timestamps that help determine the happens-before relationship between events.

## Key Concepts

- Lamport clocks assign monotonically increasing integers to events, providing a partial causal ordering
- Vector clocks use a vector of integers (one per process) to capture the full partial order of events
- The happens-before relation (happens-before) is the fundamental ordering that logical clocks capture
- Lamport's rule: on sending a message, increment clock; on receiving a message, take max of local and received clock, then increment
- Vector clocks can determine if two events are causally concurrent (neither happens-before the other)
- Logical clocks are essential for implementing CRDTs, consensus protocols, and distributed debugging
- Physical clocks (NTP) can be combined with logical clocks for hybrid approaches
- Lamport's paper "Time, Clocks, and the Ordering of Events in a Distributed System" is one of the most cited CS papers

## Related Concepts

- [[crdt]]
- [[fault-tolerance]]
- [[merkle-tree]]

## Sources

- [[my-favorite-papers]]
