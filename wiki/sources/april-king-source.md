---
created: 2026-04-27
updated: 2026-04-27
tags: [source, article, security, web-standards, http]
sources: 1
---

# Handling Cookies is a Minefield

## Metadata

- **Author**: April King
- **Date**: 2024-11-21
- **URL**: https://grayduck.mn/2024/11/21/handling-cookies-is-a-minefield/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/April King.md`

## Summary

Deep-dive investigation into discrepancies between how browsers and server-side standard libraries parse HTTP cookies. The article documents a real-world incident where a JSON-valued cookie accepted by all major browsers caused cascading failures in Go backend services, then systematically maps the behavior divergence across Firefox, Chromium, Safari, and standard libraries in Go, PHP, Python, Ruby, and Rust. It concludes that the ambiguity in RFC 6265bis creates a latent security and reliability risk affecting even top-tier websites.

## Key Takeaways

- **RFC 6265bis is internally contradictory**: Section 4.1.1 (server *should* behavior) and Section 5.6 (browser *must* behavior) specify different acceptable character sets for cookie values, creating a classic Postel's Law tragedy.
- **Browsers are permissive, servers are restrictive**: Browsers accept control characters, Unicode, spaces, quotes, commas, and backslashes; many server libraries silently drop malformed cookies, sometimes aborting parsing of subsequent cookies.
- **Go silently drops JSON cookies**: The Go standard library rejects cookie values containing `{` or `}` (outside RFC 6265 server grammar), causing invisible data loss without raising errors.
- **Python's SimpleCookie is dangerously fragile**: Encounters with malformed cookies can cause it to silently stop parsing *all remaining* cookies in the header, breaking entire sessions.
- **Safari has unique quirks**: Unlike Firefox/Chromium, Safari does not abort cookie processing on control characters; instead it truncates the value at the offending character. It also trims whitespace around commas in some conditions.
- **Ruby percent-encodes unexpectedly**: The `CGI::Cookie` library accepts all characters during parsing but percent-encodes them on retrieval, which may break client expectations.
- **Rust's `cookie` crate is most permissive**: Accepts any UTF-8 string by default, making it the most lenient option surveyed.
- **Real-world impact**: Facebook, Instagram, Netflix, WhatsApp, Apple, Amazon, eBay, and others set Unicode cookies that could trigger these edge cases.
- **Mitigation is hard**: Browser-side blocking of non-ASCII cookies affects ~0.01% of cookies globally but is considerably more common in some regions (Argentina, Mexico, Finland); unilateral blocking risks compatibility breakage.
- **Recommended fix**: IETF HTTP Working Group should align the spec and define explicit processing steps for browsers, languages, and frameworks—similar to how CSP3 specifies HTML integration.

## Entities Mentioned

- [[april-king|April King]] — author, security researcher
- [[mozilla]] — Firefox development; bugs 1797235 (CVE-2023-5723) and 1797231
- [[google]] — Chromium development; bug 40061459
- [[apple]] — Safari/WebKit; closed-source `CFNetwork` cookie handling
- [[Facebook]] — example of site setting Unicode cookies
- Netflix — example of site setting Unicode cookies
- [[amazon-bedrock-agentcore-langfuse|Amazon]] — example of site setting Unicode cookies
- [[http-cookie-handling|IETF HTTP Working Group]] — standards body responsible for updating cookie specifications

## Concepts Mentioned

- [[http-cookie-handling]] — the core subject: parsing discrepancies and security implications
- Postel's Law — referenced as the root cause of tolerant-reader problems
- RFC 6265 / RFC 6265bis — the cookie specification
- [[on-policy-distillation-source|Content Security Policy]] — cited as a model for how modern specs should integrate processing steps
- [[positional-encoding|Percent-encoding]] — Ruby's unexpected behavior with special characters

## Raw Notes

Code examples and behavior summaries for each platform are preserved in the raw source. The summary table at the end cross-references CTLs, htab, space, dquote, comma, backslash, delete, and Unicode behavior across RFC, Firefox, Chromium, Safari, Go, PHP, Python, Ruby, and Rust.
