---
created: 2026-04-28
updated: 2026-04-28
tags: [agent, architecture]
sources: 1
---

# Self-Programming Agent

## Definition

An agent architecture where LLMs generate and execute Python code to control their own behavior, enabling complex logic patterns like branching, loops, and self-modification. Unlike traditional agents that rely on JSON-based tool calls, self-programming agents use code generation as the primary control mechanism, allowing for more flexible and deterministic execution.

## Key Principles

- **Code-Driven Execution**: Python code replaces JSON+assembly patterns for tool invocation
- **Self-Control**: Agents can inspect their own capabilities, manage tasks, and adjust behavior
- **CoT via Segments**: Chain-of-Thought reasoning structured through prompt segments
- **Python Native**: Leverages Python's string operations, math, time functions for determinism
- **Hybrid Model Strategy**: Different models for different tasks (translation, thinking, general)

## Architecture Components

### Memory System
- **Short Term Memory**: Session-level context (current conversation only)
- **Sensory Memory**: Environmental awareness (captured pages, URLs via floating ball)
- **Experience**: Configuration-derived and summarized knowledge for guiding generation

### Context Structure
- **System Prompt**: Dynamic, configurable system-level instructions
  - Platform introduction + role definition + workflow + input/output formats + available tools + principles + experience
- **User Prompt Segments**:
  - **Round**: Execution summary and goal definition per iteration
  - **Express**: Agent responses to users
  - **Thought**: Reasoning at each execution step
  - **Code**: Generated code as prompt segment
  - Other segments added as needed

### Code Execution Layer
- **Python Executor**: Local Python process invoked from Java backend
- **Py4j**: Python-to-Java callback bridge for generalized tool invocation
- **Toolkit**: Python-semantic template design converting toolkits to Python classes

### Model Deployment Strategy
- **Translation/Data Extraction**: Qwen3-Turbo (low-latency priority)
- **Thinking/Dynamic Code**: Qwen3-Coder (enhanced code capabilities)
- **General Tasks**: Qwen, DeepSeek models from various platforms

## Technical Implementation

### Backend Stack
- Spring Boot framework
- Spring AI ecosystem + Spring AI Alibaba
- Internal evaluation platform + observation platform for full-chain monitoring
- MCP protocol for underlying business capabilities
- A2A protocol for multi-agent architecture coordination

### Tool System Design
- Each toolkit = Python Class
- Each tool = Python function
- Tool descriptions/attributes mapped to Python definitions
- Enables both external capabilities and system-level self-control tools

### Self-Control Capabilities
- Check initiated tasks
- Query possessed skills
- Proactive sleep/suspension
- Active user dialogue
- Deep thinking via LLM
- Data parsing via LLM

## Key Innovation

The architecture transforms agent behavior from simple "next token prediction" to complex programmatic logic:
- Traditional: JSON parameters → tool assembly → simple invocation
- Self-Programming: Python code generation → execution → branching/loops → self-modification

This enables:
- Complex workflow orchestration
- Deterministic string/math/time operations
- Self-awareness and self-regulation
- Multi-task management and capability assessment

## Development Impact

- ~50-60% of code written by AI with no modifications
- Code-driven logic: ~80% AI-written
- Demonstrates practical "AI programming AI" workflow

## Related Concepts

- [[react-agent|ReAct Agent]] — Base pattern optimized for self-programming
- [[chain-of-thought|Chain-of-Thought (CoT)]] — Reasoning structure via segments
- [[agent-frameworks|Agent Frameworks]] — General agent architecture patterns
- [[multi-agent-systems|Multi-Agent Systems]] — A2A protocol for coordination
- [[function-calling|Function Calling]] — Traditional tool invocation method
- [[sandboxed-execution|Sandboxed Execution]] — Python executor isolation

## Related Entities

- [[qwen|Qwen]] — Model family used for different tasks
- [[deepseek|DeepSeek]] — Alternative model for general scenarios
- [[spring-ai|Spring AI]] — Java framework for LLM integration
- [[model-context-protocol|Model Context Protocol]] — Tool integration standard
- [[py4j|Py4j]] — Python-Java bridge library

## Sources

- 从代码生成到自主决策：打造一个Coding驱动的"自我编程"Agent — WeChat article by 残风、栀七、荀易、辉酱, 2025-09-18

## Contradictions / Open Questions

- How does code-driven execution compare to traditional JSON-based approaches in terms of reliability and debugging?
- What are the security implications of agents executing their own generated code?
- How complex can self-modification become before it becomes unstable or unpredictable?
- What safeguards prevent harmful self-modifications or runaway task creation?