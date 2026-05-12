---
created: 2026-04-29
updated: 2026-05-09
tags: [agent]
sources: 5
---

# AI Agents

## Definition

AI agents are autonomous software systems powered by large language models that can plan, reason, use tools, and take actions to accomplish tasks on behalf of users. Unlike simple chatbots that produce text responses, agents maintain state, execute multi-step workflows, and interact with external systems such as APIs, databases, file systems, and other software services. They leverage function calling, memory, and orchestration frameworks to decompose complex objectives into manageable subtasks and iterate toward completion.

## Key Aspects

- **Frameworks and orchestration**: Multiple open-source frameworks exist for building agents, each suited to different use cases. LangGraph models workflows as stateful graphs (nodes and edges) with fine-grained control over reasoning. CrewAI enables multi-agent collaboration with specialized roles. LlamaIndex excels at knowledge-grounded agents connected to data sources via RAG. Composio provides a universal connector layer for external tools and APIs.
- **Tool use and function calling**: Agents rely on function calling to invoke external tools. Models like Gemini provide advanced function calling capabilities, allowing agents to select and execute the right tool for each step. Composio simplifies this by offering pre-built tool integrations (GitHub, Slack, Google Workspace, Notion) with managed authentication.
- **Memory and state**: Agents need persistent memory to maintain context across interactions. This includes short-term working memory for within-task context and long-term memory for learning from past experiences. Memory systems are critical for agent reliability and personalization.
- **Evaluation and benchmarking**: Agent performance is assessed through benchmarks that measure task completion, reasoning quality, and efficiency. Frameworks like those built on Pydantic AI help structure agent outputs for reliable evaluation.
- **Context engineering**: Effective agents require careful context management, including system prompts, tool descriptions, conversation history, and project-specific instructions. Poor context is a leading cause of agent failure.

- **Key components**: Intent/goals, memory (short-term and long-term), planning capability, and delegated authority
- **Agent architectures**: ReAct loops (reason-act-observe), plan-and-execute patterns, and hierarchical multi-agent systems
- **Infrastructure requirements**: State management, tool registries, error handling, and monitoring
- **Production demands**: Careful context engineering to balance cost, latency, and quality
- **AI SDK by Vercel**: TypeScript toolkit for building agent-powered applications with streaming and multi-model support

## Related Concepts

- [[multi-agent-orchestration]] -- systems where multiple agents collaborate with specialized roles
- [[function-calling]] -- the mechanism by which agents invoke external tools
- [[agent-frameworks]] -- frameworks and runtimes for building agent applications
- [[agent-engineering]] -- engineering practices for building reliable agents
- [[retrieval-augmented-generation]] -- retrieval-augmented generation for knowledge-grounded agents
- [[llm-agents]] -- LLM-based agents and their architectural patterns

## Sources

- [[building-agents-with-google-gemini]] -- guide to building agents with Gemini models and open-source frameworks
- [[gemini-cli-cheatsheet]] -- Gemini CLI as an example of a terminal-based AI agent
- [[waytoagi-chinese-ai-knowledge-base]] -- Chinese AI knowledge base covering agent tools and resources
- [[waytoagi-ai-knowledge-base]] -- comprehensive AI tool directory including agent platforms
- [[agent-engineering-source]] -- agent engineering principles and practices
