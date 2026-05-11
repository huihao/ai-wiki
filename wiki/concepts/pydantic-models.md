---
created: 2026-04-28
updated: 2026-04-28
tags: []
sources: 1
---

# Pydantic Models

## Definition

Pydantic models are Python classes using BaseModel for type-safe function schema definitions in LLM function calling. Provide runtime type checking, automatic validation, better IDE support, and clear documentation through Python type annotations and Field descriptions.

## Key Proponents / Critics

- [[huggingface|Hugging Face]] — Recommended for function calling schemas
- Pydantic library developers
- Python type safety advocates

## Related Concepts

- [[function-calling|Function Calling]] — Application using Pydantic schemas
- [[tools-api|Tools API]] — JSON schema alternative to Pydantic
- [[structured-outputs|Structured Outputs]] — Output format validated by Pydantic

## Sources

- [[function-calling-huggingface|Function Calling · Hugging Face]]

## Evolution

Pydantic models offer Python-native alternative to JSON schemas for function definitions. Advantages: runtime type checking (validates on instantiation), automatic validation (Field constraints like ge/le for numeric bounds), better IDE support (autocomplete, type hints), clear documentation (Field descriptions embedded in code). Usage: BaseModel subclass, Field with description and constraints, List/str/int types. Example: ParkObservation with location (str), activity (str), animals_seen (int, ge=1, le=5), animals (List[str]). response_format uses model_json_schema() to convert Pydantic to JSON schema. LLM generates JSON matching schema, parsed into validated Pydantic instance. Enables complex nested structures, type-safe execution, reduced validation errors compared to raw JSON schemas.