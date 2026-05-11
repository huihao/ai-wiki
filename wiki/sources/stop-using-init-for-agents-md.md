---
created: 2026-04-28
updated: 2026-04-28
tags: [source, research]
sources: 1
---

# Stop Using /init for AGENTS.md

## Metadata

- **Author**: Addy Osmani
- **Date**: 2026-02-23
- **URL**: https://addyosmani.com/blog/agents-md/
- **Fetched**: 2026-04-27
- **Raw file**: `raw/Stop Using _init for AGENTS.md.md`

## Summary

Addy Osmani analyzes two 2026 research papers on AGENTS.md effectiveness and argues against auto-generated context files. Auto-generated files add 20%+ cost with minimal benefit; human-written files with non-discoverable information help modestly.

## Key Takeaways

- Lulla et al. (ICSE JAWs 2026): human-authored AGENTS.md reduced runtime by 28.64% and tokens by 16.58%.
- ETH Zurich study: LLM-generated context files reduced success by 2-3% and increased cost by 20%+.
- Auto-generated files are redundant; agents can discover directory structure and tech stack on their own.
- What belongs: non-discoverable tooling (e.g., `uv` vs `pip`), gotchas, conventions.
- Hierarchical AGENTS.md files (per module) are better than monolithic root files.
- ACE framework (ICLR 2026) treats context as an evolving playbook, outperforming static by 12.3%.
- Arize AI's automated optimization loop improved accuracy by 5-10% over manual instructions.

## Entities Mentioned

- Addy Osmani — author
- Arize AI — prompt learning research

## Concepts Mentioned

- [[stop-using-init-for-agents-md|AGENTS.md]] — context files for coding agents
- [[context-engineering|Agentic context engineering]] — dynamic context strategies
- [[prompt-engineering]] — system prompt design

## Questions / Follow-ups

- What tools exist for automatically maintaining hierarchical AGENTS.md files?
