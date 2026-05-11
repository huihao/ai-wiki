---
created: 2026-04-29
updated: 2026-05-09
tags: [configuration, javascript]
sources: 1
---

# Flat Config

## Definition

Flat config is a JavaScript/TypeScript project configuration approach where all settings are defined in a single, flat configuration file (e.g., `eslint.config.js`, `tsconfig.json`) rather than nested or cascading configuration files. The neostandard project exemplifies this approach by providing a minimal, composable configuration for ESLint that works as a flat config export, eliminating the need for complex `.eslintrc` hierarchies.

## Key Aspects

- ESLint's flat config system (introduced in ESLint v8.21, mandatory in v9) replaces the legacy `.eslintrc` cascading configuration with a single `eslint.config.js` file
- neostandard provides opinionated but minimal ESLint configurations as flat config exports: `neostandard()` returns a configuration array that can be spread directly into the config file
- Flat config eliminates configuration inheritance and path-based overriding that made `.eslintrc` debugging difficult — all rules are visible in one file
- The flat config approach aligns with the broader JavaScript ecosystem trend toward explicit, composable configuration (Vite, Rollup, Vitest all use flat config patterns)
- Benefits include: no hidden configuration from parent directories, simpler debugging (all rules visible at once), easier testing (config is a function return value), and better TypeScript support
- neostandard specifically targets projects that want standard ESLint rules without the overhead of eslint-config-standard's many peer dependencies
- The flat config philosophy mirrors "file-over-app" thinking: plain JavaScript files as configuration, readable by both humans and tools, with no proprietary format or hidden state

## Related Concepts

- [[neostandard]]
- [[eslint]]
- [[configuration-management]]

## Sources

- [[neostandard]]
