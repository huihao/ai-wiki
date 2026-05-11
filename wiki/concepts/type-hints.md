---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Type Hints

## Definition

Type hints are optional annotations in Python (and similar dynamically-typed languages) that declare the expected types of function parameters, return values, and variables, enabling static type checking, improved IDE support, and clearer API documentation without affecting runtime behavior.

## Key Aspects

- Python type hints (PEP 484 and subsequent PEPs) use syntax like `def greet(name: str) -> str:` to declare that `name` must be a string and the function returns a string.
- FastAPI leverages type hints as a core design principle: request body models, query parameters, and dependency injection are all declared through Pydantic models and type annotations, enabling automatic validation and OpenAPI schema generation.
- Type hints are enforced by static type checkers (mypy, pyright, pytype) rather than at runtime, meaning untyped code still runs correctly but lacks the safety guarantees.
- Modern Python frameworks (FastAPI, Pydantic, attrs) use type hints not just for documentation but as the source of truth for validation, serialization, and API documentation generation.
- Advanced type hint features include `Union`, `Optional`, `TypeVar`, `Protocol`, `Literal`, and `Annotated` for expressing complex constraints.
- Type hints dramatically improve developer experience in AI-assisted coding: tools like GitHub Copilot and Claude produce significantly better code when types are declared, because the type information constrains the space of valid completions.
- Type hints serve as living documentation that never goes out of sync with the actual code, unlike separate docstring-based documentation.

## Related Concepts

- [[totaltypescript]] -- TypeScript's type system as the compiled-language counterpart to Python type hints
- [[type-safe-models]] -- applying type safety to ML model definitions
- [[fastapi]] -- the framework that made type hints a first-class API design tool

## Sources

- [[flask-vs-fastapi]]
