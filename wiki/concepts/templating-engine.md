---
name: Templating Engine
type: concept
tags: [software-engineering, web-development]
---

# Templating Engine

> Software system that processes templates to produce formatted output documents.

## Definition

A templating engine combines template files (static text with placeholders) with data to generate final output documents. Templates define the structure and layout, while data fills in the variable parts.

## Core Components

1. **Template syntax** — Special placeholders/markers in templates (e.g., `{{ variable }}`, `{% block %}`)
2. **Data binding** — Mechanism to inject data into templates
3. **Rendering engine** — Processor that combines templates with data
4. **Output generation** — Producing final formatted documents

## Key Features

- **Template inheritance** — Reuse and extend base templates
- **Control structures** — Conditionals, loops, logic in templates
- **Filters and functions** — Transform and manipulate data
- **Autoescaping** — Security mechanisms to prevent injection attacks
- **Caching** — Performance optimization through template caching
- **Extensibility** — Custom filters, functions, syntax

## Examples

- **Jinja** — Python templating engine with Python-like syntax
- **Mustache** — Logic-less templating system
- **Handlebars** — Extension of Mustache with logic
- **EJS** — Embedded JavaScript templates
- **Pug** — HTML template engine with minimal syntax
- **Liquid** — Ruby templating engine (Shopify, Jekyll)

## Use Cases

- HTML/web page generation
- Email template systems
- Configuration file generation
- Report and document generation
- Code scaffolding tools
- Content management systems

## Security Considerations

- **XSS prevention** — Autoescaping user input
- **Injection attacks** — Sanitizing untrusted data
- **Sandboxed execution** — Safe rendering of untrusted templates

## Related Entities

- [[jinja]] — Python templating engine

## Sources

- [[jinja-introduction]] — Introduction documentation explaining template engines