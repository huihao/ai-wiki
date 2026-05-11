---
created: 2026-04-29
updated: 2026-05-09
tags: [security]
sources: 1
---

# OAuth 2.0

## Definition

OAuth 2.0 is an authorization framework that enables third-party applications to obtain limited access to an HTTP service on behalf of a resource owner, by issuing access tokens through an intermediary authorization server, without exposing user credentials.

## Key Aspects

- **RFC 6749 Standard**: The canonical specification defining grant types (authorization code, implicit, password, client credentials) for different application scenarios
- **Token-Based Access**: Users grant limited access via short-lived access tokens and optional refresh tokens, rather than sharing passwords directly with third-party applications
- **Fastify Integration**: The @fastify/oauth2 package provides Node.js implementation with hooks lifecycle, plugin architecture, and automatic token management for web applications
- **Agent Skills Encoding**: OAuth 2.0 patterns can be encoded as AI agent skills, providing best practices and gotchas directly to AI coding assistants for reduced implementation errors
- **OAuth 2.1 Evolution**: The successor specification consolidates best practices, deprecating implicit flow and requiring PKCE for public clients, improving the security posture of the protocol

## Related Concepts

- [[permissions]] -- Access control mechanisms that OAuth 2.0 enforces
- [[open-source-security]] -- Broader security practices applicable to OAuth implementations
- [[plugin-architecture]] -- Fastify's extensibility model used for OAuth integration
- [[event-loop]] -- Node.js concurrency model underlying OAuth token management

## Sources

- [[my-personal-skills-ai-assisted-nodejs-development]]
