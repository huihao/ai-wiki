# LLM Wiki

A personal knowledge base maintained by an LLM agent. This repo follows the **LLM Wiki** pattern:

- **Raw sources** (`raw/`) — immutable documents you collect.
- **The wiki** (`wiki/`) — structured, interlinked markdown generated and maintained by the LLM.
- **The schema** (`AGENTS.md`) — conventions and workflows the LLM follows.

## Quick Start

1. Drop source documents into `raw/`.
2. Tell your LLM agent to **ingest** them.
3. Ask questions; the LLM reads the wiki and synthesizes answers.
4. Periodically ask the LLM to **lint** the wiki for contradictions, orphans, and gaps.
5. Browse the results in Obsidian (or any markdown viewer with wiki-link support).

## Structure

```
.
├── AGENTS.md          ← Schema & conventions (read this first)
├── index.md           ← Catalog of all wiki pages
├── log.md             ← Chronological activity log
├── raw/               ← Your immutable source documents
│   └── assets/        ← Images and attachments
└── wiki/              ← LLM-generated knowledge
    ├── sources/       ← Source summaries
    ├── entities/      ← People, places, orgs, events
    ├── concepts/      ← Ideas, theories, frameworks
    └── synthesis/     ← Comparisons, overviews, theses
```

## Recommended Tools

- **Obsidian** — best browsing experience, graph view, Dataview plugin.
- **Obsidian Web Clipper** — convert web articles to markdown for `raw/`.
- **qmd** — local search engine for markdown (optional, useful at scale).
- **Marp** — slide decks from wiki content (optional).
# ai-wiki
