---
url: https://jinja.palletsprojects.com/en/stable/intro/
title: Introduction to Jinja
date: 2007-01-01
tags: [templating, python, web-development]
---

# Introduction to Jinja

> Source: [Jinja Documentation](https://jinja.palletsprojects.com/en/stable/intro/)

## Summary

Jinja is a fast, expressive, extensible templating engine for Python. It uses special placeholders in templates that allow writing code similar to Python syntax, then passes data to render the final document.

## Key Features

- **Template inheritance and inclusion** — Reuse templates across projects
- **Macros** — Define and import macros within templates
- **Autoescaping** — HTML templates can use autoescaping to prevent XSS from untrusted user input
- **Sandboxed environment** — Safely render untrusted templates
- **Async support** — Generating templates that automatically handle sync and async functions without extra syntax
- **I18N support** — Internationalization support with Babel
- **JIT compilation** — Templates are compiled to optimized Python code just-in-time and cached, or can be compiled ahead-of-time
- **Debugging** — Exceptions point to the correct line in templates
- **Extensible** — Filters, tests, functions, and even syntax can be extended

## Philosophy

Jinja's philosophy is that while application logic belongs in Python if possible, it shouldn't make the template designer's job difficult by restricting functionality too much.

## Installation

```bash
pip install Jinja2
```

Jinja supports Python 3.7 and newer. Recommended to use a virtual environment to isolate project dependencies.

### Dependencies

- **MarkupSafe** — Escapes untrusted input when rendering templates to avoid injection attacks (installed automatically)

### Optional Dependencies

- **Babel** — Provides translation support in templates (not installed automatically)

## Related Concepts

- [[templating-engine]] — Template processing systems
- [[python]] — Programming language ecosystem
- [[web-development]] — Building web applications

## Sources

- [Introduction to Jinja](https://jinja.palletsprojects.com/en/stable/intro/) — Official documentation