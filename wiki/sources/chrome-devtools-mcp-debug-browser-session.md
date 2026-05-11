---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# 让编码智能体使用 Chrome DevTools MCP 调试您的浏览器会话

## Metadata

- **Author**: Sebastian Benz, Alex Rudenko
- **Date**: 2025-12-16
- **URL**: https://developer.chrome.com/blog/chrome-devtools-mcp-debug-your-browser-session?hl=zh-cn
- **Access Date**: 2026-04-28
- **Raw File**: `raw/ai/agent/让编码智能体使用 Chrome DevTools MCP 调试您的浏览器会话 _ Blog _ Chrome for Developers.md`

## Summary

Google Chrome team announces an enhancement to the Chrome DevTools MCP server: coding agents can now connect to active browser sessions. This enables seamless handoff between manual debugging and AI-assisted debugging.

## Key Takeaways

- New capability: coding agents can connect to existing browser sessions (not just launch new ones).
- Use cases: fix login-required issues without re-authenticating agent; investigate selected elements or network requests from DevTools.
- Based on Chrome's remote debugging protocol; requires Chrome M144+.
- User must explicitly enable remote debugging at `chrome://inspect#remote-debugging` and approve each connection request.
- Active debugging sessions show "Chrome is being controlled by automated test software" banner.
- Configuration: add `--autoConnect` to `chrome-devtools-mcp` server args.
- Future plan: expose more DevTools panel data to coding agents over time.

## Entities Mentioned

- [[sebastian-raschka|Sebastian Benz]] — Chrome team author
- Alex Rudenko — Chrome team author
- [[google|Google Chrome]] — browser
- [[gemini-cli-cheatsheet|Gemini CLI]] — example MCP client

## Concepts Mentioned

- [[chrome-devtools-mcp-debug-browser-session|Chrome DevTools MCP]] — MCP server for browser debugging
- Remote debugging — Chrome DevTools protocol
- [[chrome-devtools-mcp-debug-browser-session|Browser session reuse]] — connecting agent to existing session
- [[model-context-protocol|MCP]] — tool integration standard

## Questions / Follow-ups

- What security implications arise from allowing AI agents to control active browser sessions?
- How does this compare to Playwright MCP for agent browser automation?
