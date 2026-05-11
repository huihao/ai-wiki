---
created: 2026-04-29
updated: 2026-04-29
tags: [bot-detection, scraping, web-security]
sources: 1
---
# Anti-Bot Protection

## Definition

Anti-bot protection refers to mechanisms implemented by websites to prevent automated scraping and access by AI systems, typically using JavaScript challenges, fingerprinting, rate limiting, or proof-of-work puzzles to distinguish human users from bots.

## Key Concepts

- CAPTCHAs present visual or interactive challenges that are easy for humans but difficult for bots
- JavaScript challenges require executing client-side code to prove browser capability
- Browser fingerprinting detects headless browsers through canvas rendering, font detection, and WebGL analysis
- Rate limiting restricts the number of requests from a single IP address within a time window
- User-agent checking blocks known bot user agents and validates browser headers
- Cookie/session validation ensures requests come from a legitimate browsing session
- Anubis uses Hashcash-style proof-of-work as a lightweight, privacy-preserving bot detection method
- Proof-of-work is computationally negligible for individual users but costly for large-scale crawlers
- Anti-bot protection is an active arms race as bots become more sophisticated

## Related Concepts

- [[proof-of-work]]

## Sources

- [[hal-science-paper-blocked]]
