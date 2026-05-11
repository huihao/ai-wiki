---
created: 2026-04-28
updated: 2026-04-28
tags: [rag, retrieval]
sources: 0
---

# Multi-Query Retrieval

## Definition

Multi-query retrieval is a RAG technique that improves search quality by generating multiple reformulations of the user's query. The LLM rephrases the original question into 5 variants, each retrieves relevant documents, and results are combined. This overcomes vocabulary mismatch and improves recall when user phrasing differs from document phrasing.

## How It Works

1. User submits query
2. LLM generates 5 reworded versions of the query
3. Each variant retrieves relevant chunks from vector DB
4. Retrieved chunks are combined as context
5. LLM generates response from aggregated context

## Benefits

- **Vocabulary mismatch**: Different phrasings capture same concept with different terms
- **Improved recall**: Multiple queries retrieve more relevant documents
- **Robustness**: Reduces dependency on exact query phrasing

## Related Concepts

- [[retrieval-augmented-generation]] — retrieval enhancement technique
- [[semantic-search]] — underlying search mechanism
- [[prompt-engineering]] — generating query variants via prompting
- [[query-expansion]] — similar technique in traditional search
- [[rag-optimization]] — multi-query improves retrieval quality

## Sources

- [[tuning-local-llms-with-rag]] — implements MultiQueryRetriever with LangChain

## Use Cases

- Technical documents: user asks "how to install", retrieves "setup guide", "configuration steps"
- Domain-specific: user uses lay terms, documents use technical jargon
- Ambiguous queries: multiple interpretations retrieve different relevant documents