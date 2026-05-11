# Awesome AI Apps (Arindam200)

> Comprehensive collection of 80+ practical LLM-powered application examples, tutorials, and recipes.

**Source:** [GitHub - Arindam200/awesome-ai-apps](https://github.com/Arindam200/awesome-ai-apps) by Arindam Majumder (February 16, 2025)

---

## Overview

Repository showcasing practical implementations across multiple AI frameworks and stacks:

- **Text agents**, **voice assistants**, **[[Retrieval Augmented Generation|RAG]] apps**, **[[Model Context Protocol|MCP]]-backed tools**
- 80+ examples organized by complexity: starter agents → simple use cases → voice → MCP → memory → RAG → advanced pipelines
- Multi-framework coverage: [[OpenAI]], [[LangChain]], [[LangGraph]], [[CrewAI]], [[LlamaIndex]], [[AWS Strands]], [[Pydantic AI]], [[Google ADK]], [[smolagents]], [[AutoGen]], [[Semantic Kernel]]

---

## Categories

### Starter AI Agents (19 projects)

Quick-start examples for learning different AI frameworks:

- **Agno HackerNews Analysis** — trend analysis agent
- **OpenAI Agents SDK** — email helper & haiku writer
- **LlamaIndex Task Manager** — task assistant
- **CrewAI Research Crew** — multi-agent research team
- **Letta Starter** — stateful agent with persistent long-term memory
- **PydanticAI Weather Bot** — real-time weather information
- **LangChain Starter** — tool-calling agent with `AgentExecutor`
- **LangGraph Starter** — ReAct agent with custom tools
- **AWS Strands Agent** — weather report agent
- **Mastra Starter** — TypeScript-first agent
- **Camel AI Starter** — performance benchmarking
- **DSPy Starter** — AI system optimization framework
- **Google ADK Starter** — Agent Development Kit template
- **Semantic Kernel Starter** — Microsoft ChatCompletionAgent
- **smolagents Starter** — Hugging Face code agent
- **AutoGen Starter** — Microsoft AssistantAgent
- **cagent Starter** — Docker multi-agent runtime
- **Sayna Voice Agent** — real-time voice with WebSocket streaming
- **KAOS Starter** — Kubernetes-native multi-agent system

---

### Simple AI Agents (14 projects)

Straightforward practical use cases:

- **Finance Agent** — real-time stock/market data tracking
- **Human-in-the-Loop Agent** — HITL actions for safe task execution
- **Newsletter Generator** — AI-powered builder with Firecrawl
- **Reasoning Agent** — financial reasoning demonstration
- **Calendar Assistant** — scheduling with Cal.com
- **Smart Scheduler** — Gmail reader + Google Calendar manager
- **Web Automation Agent** — browser automation (Nebius + browser-use)
- **RouteLLM Chat** — intelligent model routing for cost optimization
- **Talk to Your DB** — natural language database queries
- **Agent Discovery Agent** — find/compare agents across registries

---

### Voice Agents (6 projects)

Real-time voice assistants and streaming speech pipelines:

- **Healthcare Voice Contact Center** — appointment booking, FAQ, supervisor escalation
- **LiveKit + Gemini Realtime** — low-latency voice conversations
- **LiveKit Web Search Agent** — voice + web search with source citations
- **LiveKit RSVP Confirmation** — outbound voice for event RSVPs
- **Pipecat + Sarvam** — voice pipeline with WebRTC/Daily transport
- **Speed-to-Lead Voice Agent** — instant inbound lead routing to specialists

---

### MCP AI Agents (13 projects)

Model Context Protocol integration examples:

- **Doc-MCP** — semantic RAG documentation & Q&A
- **LangGraph MCP Agent** — Couchbase integration
- **GitHub MCP Agent** — repository insights and analysis
- **Database MCP Agent** — conversational GibsonAI database management
- **Hotel Finder Agent** — search/booking via MCP
- **Custom MCP Server** — implementation example
- **Couchbase MCP Server** — database integration
- **Docker E2B MCP Agent** — sandboxed Docker environments
- **Taskade MCP Agent** — project/task/workflow management
- **Telemetry MCP Okahu** — self-healing Text-to-SQL

---

### Memory Agents (12 projects)

Advanced memory capabilities for context retention:

- **Agno Memory Agent** — persistent memory
- **arXiv Researcher with Memori** — research assistant with GibsonAI Memori
- **AWS Strands with Memori** — enhanced memory system
- **Blog Writing Agent** — style consistency memory
- **Social Media Agent** — brand voice memory
- **Job Search Agent** — preference tracking
- **Brand Reputation Monitor** — news analysis + sentiment tracking
- **Product Launch Agent** — competitive intelligence
- **AI Consultant Agent** — Memori v3 + ExaAI research
- **Customer Support Voice Agent** — Memori v3 + Firecrawl
- **YouTube Trend Agent** — channel analysis with Memori/Agno/Exa
- **Study Coach Agent** — Memori v3 + LangGraph verification

---

### RAG Apps (12 projects)

Retrieve-augmented generation for document understanding:

- **Agentic RAG** — Agno & GPT-5 implementation
- **Agentic RAG with Web Search** — CrewAI + Qdrant + Exa hybrid search
- **Resume Optimizer** — AI-powered enhancement
- **LlamaIndex RAG Starter** — Nebius template
- **PDF RAG Analyzer** — multi-PDF chat/analysis
- **Qwen3 RAG Chat** — Streamlit PDF chatbot
- **Chat with Code** — code explorer + documentation assistant
- **Gemma3 OCR** — OCR document/image processor
- **Nvidia Nemotron OCR** — OCR with Nemotron-Nano-V2-12b
- **Contextual AI RAG** — enterprise-level with quality evaluation
- **Simple RAG** — Nebius quick-start implementation
- **WFGY LLM Debugger** — 16-mode map debugger for RAG bugs

---

### Advanced AI Agents (18 projects)

Complex multi-agent pipelines for production workflows:

- **Nebius AutoResearch** — NYC taxi analytics pipeline optimizer
- **AgentField Financial Research** — AgentField integration
- **Due Diligence Agent** — multi-agent company analysis (AG2 + TinyFish)
- **Deep Researcher** — multi-stage research (Agno + ScrapeGraph AI)
- **Candilyzer** — GitHub/LinkedIn profile analysis
- **Job Finder** — LinkedIn automation with Bright Data
- **AI Trend Analyzer** — Google ADK trend mining
- **Conference Talk Generator** — Google ADK + Couchbase
- **Finance Service Agent** — FastAPI stock data/predictions
- **Price Monitoring Agent** — CrewAI + Twilio + Nebius alerting
- **Startup Idea Validator** — agentic workflow validation
- **Meeting Assistant** — automated notes + task creation
- **AI Hedgefund** — comprehensive financial analysis
- **Smart GTM Agent** — go-to-market strategy
- **Conference CFP Generator** — automated proposal generation
- **Car Finder Agent** — CrewAI + MongoDB recommendation
- **Content Team Agent** — SEO optimization (Agno + SerpAPI)
- **Temporal Agents** — Temporal-based AI agents

---

## AWS Strands Course (8 Lessons)

Complete course on building AI agents with AWS Strands SDK:

1. **Foundation** — basic agents, session management, structured output
2. **Integration** — MCP agents, human-in-the-loop patterns
3. **Multi-Agent** — orchestrator agents, swarm intelligence, graph workflows
4. **Production** — observability, safety guardrails, best practices

---

## Technical Requirements

- **Python 3.10+** (3.11+ recommended)
- **Git** for repository cloning
- **Package Manager:** `pip` or `uv` (recommended for faster installs)
- **API Keys** — most projects require API keys (see individual READMEs)

---

## Installation

```bash
git clone https://github.com/Arindam200/awesome-ai-apps.git
cd awesome-ai-apps
cd starter_ai_agents/agno_starter  # Example
cp .env.example .env  # Configure API keys
pip install -r requirements.txt  # or uv sync
python main.py  # or streamlit run app.py
```

---

## Key Themes

- **Framework diversity** — coverage across 15+ agent frameworks
- **Production patterns** — observability, safety, human-in-the-loop
- **Multi-agent orchestration** — swarms, graphs, temporal workflows
- **MCP integration** — Model Context Protocol as tool standard
- **Memory systems** — persistent context retention (Memori v3)
- **RAG variations** — agentic RAG, hybrid search, document understanding
- **Voice infrastructure** — real-time streaming, WebSocket, WebRTC

---

## Related

- [[LLM Agents]] — agent architecture patterns
- [[Model Context Protocol]] — tool integration standard
- [[LangChain]], [[LangGraph]], [[CrewAI]] — agent frameworks
- [[AWS]] — cloud infrastructure
- [[Retrieval Augmented Generation]] — document retrieval patterns

---

## Sources

- GitHub: [Arindam200/awesome-ai-apps](https://github.com/Arindam200/awesome-ai-apps)
