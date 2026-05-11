# Getting Started with Smolagents

> Hugging Face's barebones library for building LLM agents with tool use.

**Source:** [Getting Started with Smolagents](https://debuggercafe.com/smolagents/) by Sovit Ranjan Rath (March 10, 2025)

---

## Overview

**smolagents** is a Hugging Face library for building [[LLM Agents|LLM agents]] and agentic workflows with minimal complexity. Key features:

- **Code Agents by default** — LLMs write Python code to call tools instead of JSON function calling
- **HfApiModel integration** — access 1,000 free API calls/day for Hugging Face models
- **Multi-tool workflows** — combine multiple tools in single agent pipeline
- **Error resilience** — agents self-correct even when intermediate steps fail

---

## Core Components

### CodeAgent

The `CodeAgent` class writes and executes Python code to use loaded tools. This leverages LLMs' existing coding proficiency rather than requiring JSON-based function calling.

**Example:**
```python
from smolagents import CodeAgent, HfApiModel, load_tool

model = HfApiModel('Qwen/Qwen2.5-72B-Instruct')
image_gen_tool = load_tool('m-ric/text-to-image', trust_remote_code=True)
agent = CodeAgent(tools=[image_gen_tool], model=model)
results = agent.run('Generate a photo of a white mountain with orange sunset.')
```

### HfApiModel

Serverless inference class that runs models on Hugging Face hardware. Supports any Hugging Face model (Llama 3B, Qwen 72B, etc.) without local deployment. Each user gets 1,000 API calls/day for free.

### Built-in Tools

- **`PythonInterpreterTool`** — execute mathematical operations, compensating for small LLMs' arithmetic limitations
- **`DuckDuckGoSearchTool`** — web search for current information beyond training cutoff
- **`VisitWebpageTool`** — fetch and parse webpage content

---

## Tool Architecture

Tools are defined as Python classes inheriting from `Tool`, with configuration files specifying:

- **description** — natural language description for LLM understanding
- **inputs** — parameter schema (type, description for each argument)
- **output_type** — expected output format
- **tool_class** — Python class reference

**Example tool structure (Hugging Face Space):**
```
app.py          — Gradio demo launcher
tool.py         — Tool implementation class
tool_config.py  — JSON configuration for smolagents
```

---

## Use Cases Demonstrated

### 1. Image Generation
Load Hugging Face Space tool (`m-ric/text-to-image`) and generate images via agent prompt.

### 2. Arithmetic with Python Interpreter
Equip small models (Llama 3.2 3B) with Python execution for complex calculations: `What is (99*99)+9999*(9999)+(89×5199)?`

### 3. Web Search for Current Events
Query recent information beyond training cutoff (e.g., "When does F1 2025 season start?"). Even with syntax errors in intermediate steps, SLMs successfully extract answers from search results.

### 4. Multi-tool Pipeline
Combine `VisitWebpageTool` + `DuckDuckGoSearchTool` to visit specific URLs and extract structured information (e.g., "Find all 2025 F1 driver lineups from official calendar page").

---

## Key Insights

**Error Resilience:** Even when intermediate code execution fails, LLMs receive error messages as natural language context in subsequent steps. This allows SLMs to eventually converge on correct answers despite syntax errors in tool calls.

**Code vs. JSON Calling:** LLMs already trained on vast Python codebases, making code-based tool invocation more natural than JSON function calling schemas.

**SLM Viability:** Small models (Llama 3.2 3B) can successfully complete complex agentic workflows when equipped with appropriate tools, despite making errors in individual steps.

---

## Related

- [[LLM Agents]] — general agent architecture
- [[Hugging Face]] — inference platform
- [[Function Calling]] — alternative tool invocation method
- [[Python]] — execution environment
- [[Qwen]] — model family used in examples

---

## Sources

- Original article: [Getting Started with Smolagents](https://debuggercafe.com/smolagents/) by Sovit Ranjan Rath
