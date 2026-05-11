# Cursor

> AI-powered code editor forked from VS Code with native AI integration.

**Type:** Entity (Tool/IDE)  
**Website:** [cursor.sh](https://cursor.sh)  
**Created:** 2023

---

## Overview

Cursor is an [[AI IDE Customization|AI-powered]] code editor based on [[VS Code]], designed to integrate AI assistance directly into the coding workflow rather than as a separate plugin.

---

## Key Features

- **Native AI integration** — AI baked into editor core, not as extension
- **.cursorrules** — project-specific configuration files for customizing AI behavior
- **Multi-model support** — works with various LLM providers
- **Code generation** — inline AI-assisted code completion and generation
- **Chat interface** — conversational AI assistance within editor

---

## Customization Layers

`.cursorrules` files define custom rules for AI to follow when generating code:

- **Framework-specific rules** — React, Angular, Vue, Next.js, etc.
- **Backend rules** — FastAPI, Django, Rails, Go, etc.
- **Testing rules** — Cypress, Jest, Playwright patterns
- **Mobile rules** — React Native, Flutter, SwiftUI
- **Styling rules** — Tailwind, Styled Components, Chakra UI

---

## Comparison to VS Code

**Similarities:**
- VS Code fork — familiar interface and keybindings
- Extension ecosystem compatibility
- Terminal integration

**Differences:**
- Native AI integration (not plugin-based)
- `.cursorrules` configuration system
- Optimized for AI-assisted development workflow

---

## Related

- [[VS Code]] — base editor
- [[AI IDE Customization]] — customization patterns
- [[Code Generation with LLMs]] — AI-assisted coding
- [[Claude Code]] — alternative AI-powered IDE

---

## Sources

- [Awesome Cursor Rules](wiki/sources/awesome-cursorrules-patrickjs.md) — `.cursorrules` configuration examples
