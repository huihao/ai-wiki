---
created: 2026-04-27
updated: 2026-04-27
tags: [source, case-study, aws, rag, agent, vertical]
sources: 1
---

# How Formula 1® Uses Generative AI to Accelerate Race-Day Issue Resolution

## Metadata

- **Author**: Carlos Contreras, Hin Yee Liu, Olga Miloserdova, Ying Hou (AWS)
- **Date**: 2025-02-18
- **URL**: https://aws.amazon.com/blogs/machine-learning/how-formula-1-uses-generative-ai-to-accelerate-race-day-issue-resolution/
- **Fetched**: 2026-04-24
- **Raw file**: `raw/How Formula 1® uses generative AI to accelerate race-day issue resolution _ Amazon Web Services.md`

## Summary

A case study of Formula 1's collaboration with AWS to build a root cause analysis (RCA) assistant using Amazon Bedrock. The system uses agentic RAG to troubleshoot operational issues during live races, reducing resolution time from weeks to minutes.

## Key Takeaways

- **Problem**: F1 IT engineers must triage critical issues (network degradation, API latency) during live races. Previously took up to 3 weeks and ~15 engineer-days to resolve recurrent issues across development, operations, infrastructure, and networking teams.
- **Solution**: RCA chat assistant powered by Amazon Bedrock with agentic RAG architecture.
- **Architecture**:
  - **Data pipeline**: CloudWatch logs → S3 → AWS Glue/Spark ETL → Bedrock Knowledge Bases
  - **Agent**: Amazon Bedrock Agents orchestrates reasoning and tool use
  - **Model**: Anthropic Claude 3 Sonnet
  - **Integrations**: SQL databases, EC2 health checks, Datadog, Jira ticket creation
  - **Frontend**: [[streamlit-source|Streamlit]] chat UI with visible agent orchestration traces
  - **Deployment**: AWS Fargate on ECS
- **Results**:
  - Query response: 5–10 seconds
  - Initial triage: >1 day → <20 minutes
  - End-to-end resolution: reduced by 86%
  - Full RCA + fix: within 3 days (including race weekend deployments)
- **Security measures**:
  - Predefined SQL queries and API checks (no dynamic query generation)
  - Principle of least privilege
  - Input/output schema validation
  - Data encryption in transit and at rest
- **Data optimization**:
  - Standardization: unified schemas and formats
  - Filtering: removed unnecessary columns (e.g., HTTP headers not needed)
  - Aggregation: minute-level aggregation reducing 60 data points/minute to 1

## Entities Mentioned

- Formula 1 — client organization
- [[amazon-bedrock-agentcore-langfuse|AWS]] — cloud provider and implementer
- [[amazon-bedrock-agentcore-langfuse|Amazon Bedrock]] — managed LLM and agent platform
- Anthropic — Claude 3 model provider
- [[streamlit-source|Streamlit]] — frontend framework
- Datadog — monitoring integration
- Jira — ticket management integration

## Concepts Mentioned

- [[retrieval-augmented-generation]] — core architecture
- [[llm-agents]] — Bedrock Agents orchestration
- [[llm-leaderboard-artificial-analysis|Root Cause Analysis]] — use case
- [[agentic-rag]] — pattern (agent + RAG + tools)
- ETL Pipeline — data preparation
- [[generative-ai-platform]] — AWS Bedrock as platform

## Raw Notes

- This is a well-documented enterprise case study with clear metrics and architecture diagrams.
- The security approach (predefined queries, no dynamic SQL) is a pragmatic response to prompt injection risks in agentic systems.
- The data optimization steps (standardization, filtering, aggregation) are often overlooked in RAG tutorials but critical for cost and accuracy.
- Streamlit used for both the internal tool and the open-source demo — consistent with its role as the default rapid-prototyping framework.

## Questions / Follow-ups

- How does this Bedrock-based agentic RAG compare to self-hosted alternatives (LangChain + local LLM) in terms of cost and flexibility?
- What is the maintenance burden of the ETL pipeline and knowledge base updates?
- Has F1 expanded this RCA assistant to other operational domains beyond race-day IT?
- How generalizable is this architecture to other event-driven operational contexts (e.g., live streaming, gaming, finance)?
