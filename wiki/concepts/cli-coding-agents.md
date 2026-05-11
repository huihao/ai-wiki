# CLI Coding Agents

**Type**: Agent Category
**Category**: Development Tools, AI Agents

## Description

AI agents that operate in terminal/command-line environments, capable of reading code, running tests, searching documentation, and modifying codebases asynchronously.

## Core Capabilities

- **Code Reading**: Understanding codebase structure
- **Test Execution**: Running and analyzing tests
- **Documentation Access**: Searching and reading docs
- **Code Modification**: Making changes to files
- **Problem Analysis**: Debugging and reasoning
- **File Operations**: Read, write, search

## Key Difference from Chatbots

Unlike ChatGPT or GitHub Copilot:
- Can read entire codebase context
- Execute tasks across multiple tools
- Maintain state across workflows
- Actively debug and verify
- Work asynchronously

## Architecture Components

1. **AI Model**: Foundation (Claude, GPT-4, Gemini)
2. **Framework**: Agent structure (Pydantic-AI, LangGraph)
3. **MCP Servers**: Specialized capabilities
4. **CLI Interface**: User interaction
5. **Tools**: File ops, testing, search, etc.

## Workflow Patterns

### Testing Workflow
- Run test suite
- Identify failures
- Analyze errors
- Suggest fixes
- Re-run tests
- Verify solutions

### Debugging Workflow
- Understand problem
- Search documentation
- Reason through causes
- Propose solutions
- Test hypotheses
- Implement fixes

### Development Workflow
- Understand requirements
- Plan changes
- Read related code
- Make modifications
- Write/update tests
- Verify implementation

## Commercial Examples

- Claude Code (Anthropic)
- Gemini Code (Google)
- Open Code
- Simon Willison's LLM CLI

## Custom Implementation Benefits

- Project-specific context
- Internal tool preferences
- Custom development standards
- Understanding system behavior
- Quality insights

## Frameworks

- [[pydantic-ai]] - Python agent framework
- LangGraph - Workflow orchestration
- LLM CLI - Command-line interface

## Related Sources

- [[building-cli-coding-agent-pydantic-ai]] - Implementation guide

## Related Concepts

- [[model-context-protocol]]
- [[mcp-servers]]
- [[code-reasoning]]