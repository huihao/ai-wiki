---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Price Tampering

## Definition
Price tampering is a security vulnerability that occurs when a system accepts and trusts price data submitted by the client (user) rather than deriving prices from a trusted server-side source. It is a classic example of a trust boundary violation, where the system fails to distinguish between trusted and untrusted data sources.

## Key Aspects
- Occurs when a server-side cart or checkout system uses a price value sent by the client instead of looking it up from the server's own product catalog
- Represents a fundamental trust boundary violation: client-supplied data must never be trusted for financial calculations
- A correct implementation ignores any price from the user and always retrieves prices from the server's product catalog
- AI coding agents may inadvertently introduce this vulnerability if not given clear rules about trust boundaries
- The AI Coding Loop workflow addresses this by requiring explicit rules ("never trust user prices") and edge cases in prompts
- Failing tests serve as a "flashlight" to catch such vulnerabilities: when tests fail, the developer asks which rule was unclear or missing
- Highlights the importance of human oversight in AI-assisted development: the human must define trust boundaries, not the AI

## Related Concepts
- [[trust-boundaries]]
- [[ai-coding-loop]]
- [[verification]]

## Sources
- [[ai-coding-loop]]
