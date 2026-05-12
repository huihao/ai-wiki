---
created: 2026-04-28
updated: 2026-05-09
tags: [ai-safety, llm, security]
sources: 0
---

# Prompt injection

## Definition

Prompt injection is an attack vector in which a malicious input is crafted to manipulate an LLM into ignoring its original instructions and executing attacker-controlled commands. It exploits the fact that LLMs cannot cleanly separate system instructions from user input, since both are processed as the same text sequence. Prompt injection can be direct (user input contains the malicious payload) or indirect (malicious content is retrieved from external sources like websites or documents and injected into the context). It is considered one of the most significant security risks for LLM-powered applications.

## Key Proponents / Critics

- [[anthropic]] — actively researches and publishes defenses against prompt injection attacks
- [[openai]] — documents prompt injection risks and develops mitigation strategies

## Related Concepts

- [[prompt-engineering]] — the prompt interface that prompt injection exploits
- [[ai-safety]] — prompt injection is a top-priority safety concern for deployed LLMs
- [[ai-agent-security]] — agents with tool access are especially vulnerable to prompt injection
- [[context-engineering]] — designing context to resist injection is a key engineering concern
- [[guardrails]] — output validation and input filtering used to defend against prompt injection
- [[tool-use]] — tool-using agents are higher-risk targets since injection can trigger real-world actions
- [[sandbox-execution]] — isolating tool execution to limit the blast radius of successful injection attacks

## Related Entities

- [[anthropic]] — publishes research on prompt injection defenses and red-teaming
- [[invariant-labs]] — security research focused on AI agent vulnerabilities

## Sources

- No source pages currently link to this concept

## Evolution

- **2022**: Prompt injection is first formally described as LLMs gain mainstream adoption
- **2023**: Greshake et al. publish "Not What You've Signed Up For," demonstrating indirect prompt injection on real-world systems
- **2024**: Prompt injection attacks become a major concern for agent-based systems with tool access
- **2025**: Industry develops layered defenses including input filtering, output validation, and architectural isolation
