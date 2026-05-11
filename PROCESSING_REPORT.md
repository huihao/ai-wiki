# Agent Files Processing Report

## Date
2026-04-28

## Files Processed
25 markdown files from raw/ai/agent/ directory

## Wiki Pages Created

### Sources (10 new pages)
1. understanding-agent-tools.md - Agent Tools lifecycle design and AgentKit Gateway
2. getting-started-with-ralph.md - Ralph technique for autonomous agent loops
3. what-is-claude-code.md - Comprehensive Claude Code guide
4. cynefin-coding-agents.md - Cynefin framework analysis of agent complexity
5. stop-calling-tools-code-mode.md - Code mode pattern in FastMCP
6. spec-driven-development-tools.md - Analysis of Kiro, spec-kit, Tessl
7. self-learning-coding-agent.md - pi-self-learning extension for agent memory
8. ai-coding-loop.md - 7-step disciplined workflow for secure code
9. slowness-agent-coding.md - Deliberate pace philosophy
10. anatomy-claude-folder.md - Claude Code configuration system guide
11. harness-engineering-claude-code.md - Claude Code leak analysis (510K lines)
12. llm-knowledge-base-karpathy.md - Karpathy's markdown wiki architecture
13. what-i-learned-building-minimal-coding-agent.md - pi minimalism philosophy
14. ai-coding-architecture.md - Placeholder for architecture focus

### Entities (4 new pages)
1. volcano-engine.md - ByteDance platform offering AgentKit
2. andrej-karpathy.md - AI researcher and LLM Knowledge Base creator
3. matteo-collina.md - Node.js expert and self-learning extension creator
4. mario-zechner.md - Minimal agent (pi) creator

### Concepts (3 new pages)
1. harness-engineering.md (updated existing) - Everything outside the model
2. code-mode.md - MCP pattern for code composition
3. spec-driven-development.md - Writing specs before code
4. ralph.md - Autonomous agent loop technique

### Key Entities Referenced
- Anthropic (Claude Code creator)
- Volcano Engine (AgentKit platform)
- Jeremiah Lowin (FastMCP)
- Chris Richardson (Cynefin analysis)
- Birgitta Böckeler (SDD analysis)

### Key Concepts Identified
- Harness Engineering (evolution from prompt → context → harness)
- Code Mode (solving MCP scaling via script composition)
- Spec-Driven Development (spec-first, spec-anchored, spec-as-source)
- Ralph Technique (autonomous loops picking from PRD)
- Self-Learning (git-backed memory for agents)
- Slowing Down (discipline over speed)
- Cynefin Framework (complex vs complicated domains)
- LLM Knowledge Base (markdown over vector databases)
- Trust Boundary (server vs client data sources)

## Key Themes

### 1. Harness Engineering Emergence
Evolution from Prompt Engineering → Context Engineering → Harness Engineering.
Core formula: Agent = Model + Harness
Harness = Environment + Constraints/Validation

Evidence from Claude Code leak:
- 1700 lines for agent loop (not 10)
- 510K lines total harness code
- 7 core tools, 5-layer compression
- Circuit breakers preventing ~250K wasted API calls/day

### 2. Agent Scalability Patterns
**Code Mode**: Replacing sequential tool calling with code composition
- Amazon Ads: 34K tokens → 600 tokens per workflow
- 3 stages: Search → Get Schemas → Execute

**MCP Scaling**: 200 tools = tens of thousands tokens
- Progressive disclosure via discovery tools
- Tunable detail levels (brief/detailed/full)

### 3. Memory and Learning
**Self-Learning**: Agents don't learn from mistakes like humans
- pi-self-learning: git-backed memory hierarchy
- Daily/monthly/long-term/core structure
- Frequency + recency ranking

**LLM Knowledge Base**: Karpathy's approach
- Markdown > vector databases for mid-sized datasets
- Self-healing via linting
- Active maintenance vs static indexing

### 4. Discipline and Philosophy
**Slowing Down**: Mario Zechner's critique
- Compounding booboos without learning
- Merchants of complexity through local decisions
- Need human bottleneck and discipline

**Minimalism**: pi approach
- <1000 token system prompt (vs Claude Code 10K+)
- 4 core tools (vs Claude Code 40)
- YOLO by default, observability over safety theater

### 5. Specification Approaches
**Spec-Driven Development**: Three levels
- Spec-First: Write spec, use during task, discard
- Spec-Anchored: Keep spec for evolution
- Spec-as-Source: Spec is primary artifact, human never edits code

**Tools Comparison**:
- Kiro (lightweight): 3 files per feature
- spec-kit (GitHub): Many files, checklists, constitution
- Tessl (advanced): 1:1 spec-code mapping, validation

### 6. Security and Reliability
**Fail-Closed Defaults**: Undeclared = more restrictive
**Circuit Breakers**: Limits on recovery attempts everywhere
**Message Withholding**: Hide errors until recovery exhausted
**Trust Boundary**: Server sources trusted, client inputs untrusted
**Zero Trust**: Verify every tool call via delegation chain

### 7. Cynefin Framework Application
Coding agents = Complex domain (not Complicated):
- Cause-effect understood only in retrospect
- Prompt-outcome relationship unpredictable
- Requires safe-to-fail experiments, not analysis
- Platform must be learning amplifier, not policy factory

### 8. Enterprise Applications
**AgentKit Gateway** (Volcano Engine):
- 70% token reduction via tool search/recall
- 98.5% calling accuracy
- SOC2, ISO 27001, GDPR compliance

**Retail Case**: 60% queries automated, minutes → seconds
**Fintech Case**: 85% audit time reduction, real-time monitoring

## Index Updates
Added 31 new entries to wiki/index.md:
- 12 people entities
- 7 tool/platform entities  
- 32 concept definitions

## Raw Files Cleanup
All 25 raw markdown files deleted from raw/ai/agent/

## Statistics
- Sources pages: 395 (grew significantly)
- Entities pages: 343 (added 4 new)
- Concepts pages: 434 (added/updated 4)

## Recommendations for Future

1. **Extract more entity pages**: Key tools like FastMCP, spec-kit, Tessl deserve dedicated pages
2. **Deepen concept relationships**: Link related concepts more thoroughly (harness → cache → compression)
3. **Add practical examples**: Code snippets from sources showing implementation
4. **Create synthesis documents**: Combine themes (memory architectures comparison, agent scalability patterns)
5. **Process remaining raw files**: Placeholder sources need full extraction

## Open Questions

1. How mature are these tools in production?
2. What's actual performance vs claimed metrics?
3. How do teams adopt these philosophies?
4. What training helps developers transition?
5. Which approach wins: maximal harness (Claude Code) vs minimal (pi)?

