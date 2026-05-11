# smolagents

> Hugging Face's minimalist library for building LLM agents with tool use.

**Type:** Entity (Library)  
**Created:** 2025  
**Maintainer:** [[Hugging Face]]

---

## Overview

smolagents is a lightweight Python library for constructing [[LLM Agents|LLM agents]] with minimal boilerplate. Key innovations:

- **Code-first agents** — LLMs write Python code to invoke tools instead of JSON schemas
- **Hugging Face integration** — serverless inference via HfApiModel (1,000 free calls/day)
- **Error-tolerant execution** — agents self-correct from failed intermediate steps

---

## Architecture

### Core Classes

- **CodeAgent** — main agent class that writes and executes Python code
- **HfApiModel** — wrapper for Hugging Face serverless inference API
- **Tool** — base class for defining custom tools with declarative schemas

### Built-in Tools

- `PythonInterpreterTool` — mathematical computation for small models
- `DuckDuckGoSearchTool` — web search for current information
- `VisitWebpageTool` — webpage content extraction

---

## Philosophy

**Minimalism over abstraction:** Unlike heavier frameworks ([[LangChain]], [[LangGraph]]), smolagents focuses on barebones agent construction with minimal dependencies.

**Code as interface:** Leverages LLMs' existing Python proficiency rather than forcing them to learn JSON function calling conventions.

---

## Use Cases

- Image generation via Hugging Face Spaces tools
- Arithmetic with Python execution (compensating for SLM limitations)
- Current event queries via web search
- Multi-tool pipelines (search + webpage visit)

---

## Technical Stack

- **Language:** Python
- **Inference:** Hugging Face Hub API
- **Execution:** Local Python interpreter
- **Models:** Any Hugging Face hosted model (Llama, Qwen, etc.)

---

## Sources

- [Getting Started with Smolagents](wiki/sources/getting-started-with-smolagents.md) — comprehensive tutorial
- GitHub: [huggingface/smolagents](https://github.com/huggingface/smolagents) (implied)