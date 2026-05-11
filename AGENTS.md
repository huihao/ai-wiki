# LLM Wiki — Agent Schema

> This file is the "constitution" of the wiki. It tells the LLM how the wiki is structured, what conventions to follow, and what workflows to use when ingesting sources, answering questions, or maintaining the wiki.
>
> You and the LLM co-evolve this over time as you figure out what works for your domain.

## Purpose

This is a **persistent, compounding knowledge base**. The core principle: instead of retrieving from raw documents at query time, we incrementally build and maintain a structured, interlinked wiki. The knowledge is compiled once and kept current, not re-derived on every query.

The wiki is a persistent, compounding artifact. Cross-references are already there. Contradictions have already been flagged. The synthesis already reflects everything we've read.

## Architecture

```
.
├── AGENTS.md          ← This file — schema and conventions
├── index.md           ← Content-oriented catalog of all wiki pages
├── log.md             ← Chronological, append-only record of activity
├── raw/               ← Incoming source documents (deleted after ingest)
│   └── assets/        ← Downloaded images and attachments
└── wiki/              ← LLM-generated markdown (LLM owns this)
    ├── sources/       ← Summaries of individual raw sources
    ├── entities/      ← Pages for people, organizations, places, etc.
    ├── concepts/      ← Pages for ideas, theories, frameworks, etc.
    └── synthesis/     ← Comparative analyses, overviews, evolving theses
```

## File Conventions

### Wiki Pages

- Use Obsidian-style `[[Wiki Links]]` for cross-references. Prefer `[[Target|Display Text]]` when readability matters.
- Add YAML frontmatter to all wiki pages. Minimum:
  ```yaml
  ---
  created: YYYY-MM-DD
  updated: YYYY-MM-DD
  tags: [entity, concept, source, synthesis]
  sources: 0  # count of raw sources that contributed to this page
  ---
  ```
- Page titles should be sentence-case (e.g., `[[Artificial intelligence]]`, not `[[Artificial Intelligence]]`), except for proper nouns.
- Use headers hierarchically (`#`, `##`, `###`). Avoid H1 except for the page title.
- Keep pages focused. One concept or entity per page. Split when a page gets too long (>200 lines).

### Source Pages (`wiki/sources/`)

- One page per raw source.
- Filename: use a slug derived from the source title.
- Structure:
  - `# Title` — original source title
  - `## Metadata` — author, date, URL, access date, raw file path
  - `## Summary` — concise overview of the source
  - `## Key Takeaways` — bullet points of the most important claims
  - `## Entities Mentioned` — list of `[[Entity]]` links, with brief context
  - `## Concepts Mentioned` — list of `[[Concept]]` links, with brief context
  - `## Raw Notes` — optional, less structured notes
  - `## Questions / Follow-ups` — open questions this source raises

### Entity Pages (`wiki/entities/`)

- Pages for people, organizations, places, products, events, etc.
- Structure:
  - `# Name`
  - `## Summary` — one-paragraph overview
  - `## Key Attributes` — facts, dates, relationships
  - `## Related Entities` — `[[Entity]]` links
  - `## Related Concepts` — `[[Concept]]` links
  - `## Sources` — links to `wiki/sources/` pages
  - `## Contradictions / Open Questions` — flagged conflicts

### Concept Pages (`wiki/concepts/`)

- Pages for ideas, theories, frameworks, methods, terms of art.
- Structure:
  - `# Concept Name`
  - `## Definition` — concise definition
  - `## Key Proponents / Critics` — `[[Entity]]` links
  - `## Related Concepts` — `[[Concept]]` links
  - `## Sources` — links to `wiki/sources/` pages
  - `## Evolution` — how understanding of this concept has changed

### Synthesis Pages (`wiki/synthesis/`)

- Higher-order pages: comparisons, overviews, evolving theses, literature reviews.
- Structure is flexible. These are often the most valuable pages.
- Always cite sources and link to entities/concepts.

## Workflows

### Ingest

When a new source is added to `raw/`:

1. Read the source (and any images, separately if needed).
2. Discuss key takeaways with the user. Confirm understanding before writing.
3. **Determine the source slug** from the title (lowercase, hyphenated, no punctuation). This slug becomes the filename: `wiki/sources/<slug>.md`.
4. Create or update `wiki/sources/<slug>.md`.
5. **Extract all entities and concepts** mentioned in the source. Decide which ones warrant their own pages.
6. **Before writing the source page**, ensure you know the slug for every entity/concept that will be linked:
   - If the page already exists, note its exact filename.
   - If creating a new page, decide the slug now and create the file **in the same batch**.
7. Write the source page using `[[slug|Display Text]]` for every cross-reference. **Never use `[[Display Text]]` unless the display text exactly matches the filename slug.**
8. Create or update `wiki/entities/<slug>.md` for each entity.
9. Create or update `wiki/concepts/<slug>.md` for each concept.
10. Run the **Ghost Check** (see below) to verify every `[[...]]` in the new source resolves to an existing file.
11. Update `index.md` with new or changed pages.
12. Append an entry to `log.md`.
13. **Delete the processed raw document** from `raw/`. The knowledge now lives in the wiki; the raw file is no longer needed.
14. Suggest any obvious contradictions or connections to the user.

Guidelines:
- Prefer updating existing pages over creating new ones.
- When updating, append new information or revise inline — flag contradictions explicitly.
- A single source might touch 10–15 wiki pages. That's expected.
- Stay conservative about creating new pages. Only create an entity/concept page if it's likely to be referenced again.
- **Golden rule for links**: When in doubt, use `[[exact-filename-slug|Human Readable Text]]`. Obsidian will navigate correctly; the display text stays readable.

#### Ingest Checklist (copy-paste before finishing)

```markdown
- [ ] Source slug decided and filename matches (`wiki/sources/<slug>.md`)
- [ ] Every `[[...]]` in the source uses `[[slug|text]]` format
- [ ] Every linked entity has a file in `wiki/entities/`
- [ ] Every linked concept has a file in `wiki/concepts/`
- [ ] Ghost Check passed: no `[[...]]` points to a missing file
- [ ] `index.md` updated with new entries
- [ ] `log.md` appended
- [ ] Raw document deleted from `raw/`
```

#### Ghost Check (quick script)

After each ingest, run this to catch broken links immediately:

```bash
cd /Users/huihao/work/wiki
python3 -c "
import re
from pathlib import Path
stems = {f.stem for d in ['sources','entities','concepts','synthesis'] for f in Path('wiki/'+d).glob('*.md')}
ghosts = []
for md in Path('wiki').rglob('*.md'):
    for m in re.finditer(r'\[\[([^\]|]+)', md.read_text()):
        t = m.group(1).strip().lower().replace(' ','-')
        if t not in stems: ghosts.append(f'{md}: [[{m.group(1)}]]')
print(f'Ghost links: {len(ghosts)}')
for g in ghosts[:10]: print(' ', g)
"
```

If the output is not `Ghost links: 0`, fix them before declaring the ingest complete.

### Query

When the user asks a question:

1. Read `index.md` to locate relevant pages.
2. Read the relevant wiki pages (and source pages if needed).
3. Synthesize an answer with citations: `[[Page Name]]` or `[[Source Title]]`.
4. If the answer is valuable and generalizable, ask the user: "Should I file this as a new synthesis page?"
5. If yes, create the page in `wiki/synthesis/` and update `index.md` and `log.md`.

### Lint

When asked to "lint" or "health-check" the wiki:

1. Scan `index.md` for orphan pages (no inbound links).
2. Look for contradictions between pages — same entity with conflicting facts, same concept with conflicting definitions.
3. Identify stale claims: pages not updated since newer sources arrived.
4. Find "ghost references": `[[Link]]` pointing to non-existent pages.
5. Identify important concepts mentioned in sources but lacking their own page.
6. Suggest new synthesis pages, comparisons, or follow-up questions.
7. Report findings and propose fixes. Apply fixes only after user confirmation.

## Index (`index.md`)

- Updated after every ingest, query-filing, or lint pass.
- Organized by category: Sources, Entities, Concepts, Synthesis.
- Each entry: `[[Page]]` — one-line summary. Optionally: `tags`, `updated`.
- Keep it scannable. The index is the primary navigation tool.

## Log (`log.md`)

- Append-only. Never edit past entries.
- Format:
  ```markdown
  ## [YYYY-MM-DD] <action> | <subject>
  <brief description of what happened>
  ```
  Where `<action>` is one of: `ingest`, `query`, `lint`, `synth`, `fix`.
- The log is parseable. Entries start with `## [YYYY-MM-DD]`.

## Tips

- The wiki is just a git repo of markdown files. Encourage the user to commit regularly.
- Obsidian's graph view is the best way to see the shape of the wiki.
- Images in `raw/assets/` should be referenced relatively from wiki pages. These persist after ingest (unlike raw documents, which are deleted once processed).
- If the user uses Obsidian Web Clipper, remind them to download attachments locally after clipping.
- Keep the wiki alive: dead pages, broken links, and stale claims erode trust.
