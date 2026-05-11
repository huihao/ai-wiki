---
created: 2026-04-27
updated: 2026-04-27
tags: [codegen, developer-tools, llm]
sources: 1
---

# Code Generation with LLMs

## Definition

The use of large language models to generate, complete, or modify source code. Code generation tools analyze context (surrounding code, comments, open files) to produce syntactically correct and semantically relevant suggestions. The most common form is inline autocompletion, but the field also includes chat-based generation, test generation, documentation, and bug fixing.

## Key Tools and Products

| Tool | Company | Approach | Notable features |
|---|---|---|---|
| GitHub Copilot | GitHub/Microsoft | Inline completion + chat | Most widely adopted; trained on public GitHub repos |
| Cursor | Anysphere | IDE-native AI | Codebase-wide context, composer mode |
| Cody | Sourcegraph | Code intelligence + AI | Symbol-aware, cross-repo context |
| Codeium | Codeium | Free Copilot alternative | Fast, privacy-focused |
| Amazon CodeWhisperer | AWS | Enterprise-focused | Security scans, AWS API integration |
| Tabnine | Tabnine | Privacy-first | On-premise deployment option |
| Replit Ghostwriter | Replit | Integrated with Replit IDE | Full-stack generation |

## Capabilities

- **Inline autocompletion** — gray "ghost text" suggestions triggered by pauses
- **Chat-based generation** — interactive conversation for explanation, refactoring, test generation
- **Comment-to-code** — natural language description → implementation
- **Documentation generation** — auto-generate docstrings, READMEs, PR descriptions
- **Bug detection and fixing** — identify vulnerabilities and suggest fixes
- **Code explanation** — explain unfamiliar codebases in natural language

## Impact on Developer Productivity

Based on GitHub Copilot research (2022–2024):
- **55%** of developers use AI coding tools
- **88%** report feeling more productive
- **60%** feel more fulfilled with their jobs
- **87%** spend less mental effort on repetitive tasks
- Experienced developers benefit most in familiar environments (instant recognition of correct suggestions)
- Beginners benefit most in unfamiliar languages (learning aid)

## Related Concepts

- [[ai-engineering]] — broader discipline
- [[llm-agents]] — code generation is a subset of agent capabilities (e.g., Devin)
- [[vibe-rl|Developer Experience]] — core metric for tool evaluation
- [[claude-code-source-leak-harness|Code Review]] — human oversight remains essential
- Vulnerability Detection — security scanning of generated code
- [[swe-bench]] — benchmark for code generation agents

## Sources

- [[how-ai-code-generation-works]] — GitHub's official overview
- [[ai-engineering|The 2025 AI Engineering Reading List]] — lists key papers and benchmarks

## Evolution

- **2021**: GitHub Copilot launched (powered by OpenAI Codex). First mainstream AI code completion.
- **2022**: Research quantifies productivity gains. Copilot becomes standard for many developers.
- **2023**: Chat-based interfaces (Copilot Chat, Cursor) emerge. Agents like Devin attempt end-to-end coding.
- **2024**: Competition intensifies (Cursor, Cody, Codeium). Focus shifts from completion to full codebase understanding.
- **2025**: Code generation moves toward agentic systems that can plan, execute, and debug across multiple files. Benchmarks evolve from HumanEval to SWE-Bench and beyond.
