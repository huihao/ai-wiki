---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Tools API

## Definition

Tools API is the mechanism for defining callable functions for LLMs through structured schemas. Each tool requires a unique name, clear description, and JSON schema defining expected parameters, enabling models to understand function capabilities and generate correct calls.

## Key Proponents / Critics

- [[huggingface|Hugging Face]] — Documented tools approach
- OpenAI (tools parameter in API)
- API designers for LLM integration

## Related Concepts

- [[function-calling|Function Calling]] — Capability enabled by tools
- [[structured-outputs|Structured Outputs]] — Format for tool definitions
- [[pydantic-models|Pydantic Models]] — Alternative schema definition

## Sources

- [[function-calling-huggingface|Function Calling · Hugging Face]]

## Evolution

Tools API emerged as structured way to define LLM-callable functions. Tool structure: type "function", function object with name (unique identifier), description (clear capability explanation), parameters (JSON schema with type "object", properties defining each parameter with type/description/enum/constraints, required array). Example: get_n_day_weather_forecast with location (string, city+state), format (enum celsius/fahrenheit), num_days (integer). Models analyze user request against tool descriptions to select appropriate function and fill parameters. InferenceClient accepts tools array, tool_choice "auto". Security requires validation before execution. Enables NL to API translation, action execution, computation tasks. Chaining tools enables complex multi-step workflows (search_products → create_order).