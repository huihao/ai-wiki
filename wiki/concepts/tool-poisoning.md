---
created: 2026-04-29
updated: 2026-05-09
tags: [security]
sources: 2
---

# Tool Poisoning

## Definition

Tool poisoning is an attack vector targeting AI agents where malicious instructions are injected into tool descriptions, MCP server responses, or external data sources to manipulate agent behavior. The agent, trusting tool-provided context, executes unintended actions such as exfiltrating secrets, running unauthorized commands, or compromising system integrity.

## Key Aspects

- Invariant Labs identified tool poisoning as a critical MCP vulnerability: malicious tool descriptions can override system prompts and hijack agent behavior
- The attack exploits the trust boundary between the agent harness and tool-provided context: agents typically treat tool descriptions as authoritative
- Real-world exploits demonstrated via GitHub MCP and WhatsApp MCP, where poisoned tool responses enabled private repository access and message history exfiltration
- MCP-Scan was developed as a security scanner specifically to detect tool poisoning and other MCP vulnerabilities
- Mitigation strategies include: sandboxing tool execution, validating tool response schemas, limiting tool description trust scope, and implementing guardrails
- Tool poisoning is distinct from prompt injection: it targets the tool interface layer rather than direct user input channels
- The rapid adoption of MCP for agent-tool communication has expanded the attack surface, making tool poisoning a pressing concern for production deployments
- AgentDojo framework provides benchmarking for both utility and security of agents, including resistance to tool poisoning attacks

## Related Concepts

- [[mcp-security]]
- [[prompt-injection]]
- [[guardrails]]

## Sources

- [[invariant-labs-blog]]
