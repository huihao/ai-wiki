---
created: 2026-04-29
updated: 2026-04-29
tags: [distributed-systems, reliability, systems]
sources: 1
---
# Fault Tolerance

## Definition

Fault tolerance is the ability of a system to continue operating correctly even when some of its components fail. In distributed systems, fault tolerance is achieved through replication, consensus protocols, and graceful degradation strategies.

## Key Concepts

- Failures can be categorized as crash (process stops), omission (messages lost), Byzantine (arbitrary behavior), and timing failures
- The CAP theorem states that a distributed system can provide at most two of: Consistency, Availability, and Partition tolerance
- Replication strategies include primary-backup, multi-primary, and leaderless (Dynamo-style)
- Consensus protocols (Paxos, Raft, PBFT) enable distributed agreement despite failures
- The FLP impossibility result shows that no deterministic consensus protocol can tolerate even one crash failure in an asynchronous system
- Quorum-based systems use majority voting (W + R > N) to ensure consistency
- Heartbeat mechanisms detect failures, while gossip protocols propagate failure information
- Chaos engineering (Netflix's Chaos Monkey) proactively tests fault tolerance

## Related Concepts

- [[crdt]]
- [[logical-clocks]]
- [[b-tree]]

## Sources

- [[my-favorite-papers]]
