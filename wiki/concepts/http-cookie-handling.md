---
created: 2026-04-27
updated: 2026-04-27
tags: [http, security, web-standards]
sources: 1
---

# HTTP Cookie Handling

## Definition

The set of behaviors and specifications governing how HTTP cookies are set, parsed, transmitted, and stored across web browsers and server-side programming languages. Due to historical evolution through multiple RFCs (2109, 2965, 6265, 6265bis) and Postel's Law-inspired tolerance, implementations diverge significantly in their acceptance of special characters, control characters, and Unicode in cookie names and values.

## Key Proponents / Critics

- **Researchers**: [[april-king]] — documented the full cross-platform discrepancy landscape (2024)
- **Browser vendors**: [[mozilla]] (Firefox), [[google]] (Chromium), [[apple]] (Safari/WebKit) — each with distinct parsing logic
- **Standards bodies**: IETF HTTP Working Group — maintains RFC 6265bis draft

## Related Concepts

- Postel's Law — "be conservative in what you send, liberal in what you accept" — identified as a root cause of the divergence
- RFC 6265 / RFC 6265bis — the governing specification, noted to be internally contradictory between server and client requirements
- [[on-policy-distillation-source|Content Security Policy]] — cited as a positive example of explicit processing-step specification
- [[security-boundaries-agentic-architectures|Web Security]] — the broader domain where cookie parsing bugs create vulnerabilities

## Sources

- [[dont-just-slap-on-a-chatbot|Handling Cookies is a Minefield]] — comprehensive cross-platform analysis by April King

## Evolution

- **1997**: RFC 2109 first defines cookies
- **2000**: RFC 2965 updates the specification
- **2011**: RFC 6265 simplifies and replaces prior specs
- **2024**: April King's investigation reveals that despite decades of standardization, browsers and server libraries still handle cookies inconsistently, creating latent security risks for major websites
