# Desktop Commander

**Type**: MCP Server
**Category**: File Operations, Terminal Execution
**Organization**: wonderwhy-er

## Description

Comprehensive MCP server providing file system operations, terminal command execution, code editing, and process management. Transforms AI assistants from helpers to active participants in development.

## Key Features

- **File System Operations**: Read, write, search files
- **Terminal Execution**: Run commands with process management
- **Code Editing**: Surgical edit_block capabilities
- **Process Control**: Intelligent process management
- **REPL Sessions**: Interactive terminal sessions
- **Security Model**: Configurable permissions

## Core Capabilities

### File Operations
- Read files with content access
- Write and modify files
- Search filesystem
- Directory operations
- File management

### Terminal Operations
- Command execution
- Process lifecycle management
- Output capture
- Background execution
- Interactive sessions

### Code Editing
- edit_block for surgical changes
- Search-and-replace
- Pattern matching
- Formatting preservation
- Multi-file edits

### Process Management
- Start/stop processes
- Monitor execution
- Control flow
- Resource management
- Timeout handling

## Security Features

- **Allowed Directories**: Configurable access
- **Blocked Commands**: Restriction capability
- **Permission Boundaries**: Clear limits
- **Sandbox Options**: Isolated execution

## Implementation

### MCP Integration
```python
desktop_commander = MCPServerStdio(
    command="npx",
    args=["-y", "@wonderwhy-er/desktop-commander"],
    tool_prefix="desktop_commander"
)
```

### Usage Examples
- Run test suite and analyze results
- Read failing test files
- Examine module code
- Search for patterns
- Make targeted edits
- Re-run tests for verification

## Workflow Transformation

Before: Manual testing, copy-paste to chat, manual fixes

After: Agent runs tests, analyzes failures, suggests fixes, makes edits, verifies solutions

## Foundation

Built on MCP Filesystem Server with additions:
- Search-and-replace editing
- Intelligent process control
- Extended capabilities

## Use Cases

- Test-driven debugging
- Code refactoring
- Project navigation
- Multi-file changes
- Continuous verification
- Development workflows

## Related Agents

- [[cline]] - Marketplace integration
- Pydantic-AI agents - Desktop Commander MCP
- Custom CLI agents

## Related Sources

- [[building-cli-coding-agent-pydantic-ai]] - Implementation example
- [[cline-mcp-marketplace]] - Server listing

## Related Concepts

- [[file-operations]]
- [[terminal-execution]]
- [[code-editing]]
- [[mcp-servers]]

## Links

- GitHub: [https://github.com/wonderwhy-er/DesktopCommanderMCP](https://github.com/wonderwhy-er/DesktopCommanderMCP)
- MCP Package: @wonderwhy-er/desktop-commander