---
created: 2026-04-29
updated: 2026-04-29
tags: [anti-spam, consensus, cryptography]
sources: 1
---
# Proof of Work

## Definition

Proof of Work (PoW) is a computational challenge that requires a certain amount of computational effort to solve but is trivial to verify, used in cryptocurrency consensus, spam prevention, and anti-bot protection mechanisms.

## Key Concepts

- Hashcash-style PoW requires finding a nonce such that hash(input + nonce) has a certain number of leading zeros
- The difficulty parameter controls how many leading zeros are required, determining computational cost
- Verification is trivial: compute the hash once and check the number of leading zeros
- Bitcoin uses SHA-256 PoW for block mining, with difficulty adjusted every 2016 blocks
- PoW is computationally expensive to produce but cheap to verify, creating asymmetric cost
- In anti-bot protection (Anubis), PoW makes automated scraping expensive while remaining negligible for individual users
- PoW replaces trust-based or fingerprinting-based bot detection with a purely computational approach
- Environmental concerns about Bitcoin mining have led to alternatives like Proof of Stake (PoS)
- PoW provides Sybil resistance by making it costly to create multiple identities

## Related Concepts

- [[anti-bot-protection]]

## Sources

- [[hal-science-paper-blocked]]
