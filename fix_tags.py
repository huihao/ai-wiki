#!/usr/bin/env python3
"""
Lint & normalize Obsidian concept tags.

Changes applied (in order):
  1. Strip surrounding quotes from every tag
  2. Normalize spelling variants   (pre-training → pretraining)
  3. Merge singular / plural       (agents → agent, tools → tool)
  4. Merge conceptual overlaps     (ai-agents → agent, generative-models → generative)
  5. Remove the 'concept' tag      (present in 96 % of files — no filtering value)
  6. Deduplicate & sort
"""

import re, glob, os

CONCEPTS_DIR = os.path.join(os.path.dirname(__file__), "wiki", "concepts")

# ── Spelling normalizations ──────────────────────────────────────────────────
SPELLING = {
    "pre-training": "pretraining",
    "post-training": "posttraining",
}

# ── Singular / plural merges ─────────────────────────────────────────────────
# Value = canonical form
SINGULAR_PLURAL = {
    "agents":           "agent",
    "ai-agents":        "agent",
    "ml":               "machine-learning",
    "infra":            "infrastructure",
    "transformers":     "transformer",
    "math":             "mathematics",
    "tools":            "tool",
    "embeddings":       "embedding",
    "knowledge-graphs": "knowledge-graph",
    "loss-functions":   "loss-function",
    "llm-foundations":  "llm-foundation",
    "llm-basics":       "llm-foundation",
    "neural-networks":  "neural-network",
    "generative-models":"generative",
    "generative-ai":    "generative",
    "reasoning-models":  "reasoning",
    "data-science":     "data",
}

# ── Tag to drop entirely ─────────────────────────────────────────────────────
DROP = {"concept"}

# ── Helpers ───────────────────────────────────────────────────────────────────

TAGS_RE = re.compile(r"^(tags:\s*\[)(.*?)(\])", re.MULTILINE)

def parse_tags(raw: str) -> list[str]:
    """Yield individual tags from the comma-separated, possibly quoted list."""
    for t in raw.split(","):
        t = t.strip().strip("\"'")
        if t:
            yield t

def normalize(tags: list[str]) -> list[str]:
    out = []
    for t in tags:
        t = SPELLING.get(t, t)
        t = SINGULAR_PLURAL.get(t, t)
        if t in DROP:
            continue
        out.append(t)
    # deduplicate while preserving order
    seen = set()
    result = []
    for t in out:
        if t not in seen:
            seen.add(t)
            result.append(t)
    return sorted(result)

def replace_tags(content: str, new_tags: list[str]) -> str:
    """Replace the tags line in YAML frontmatter."""
    tag_str = ", ".join(new_tags)
    return TAGS_RE.sub(rf"\g<1>{tag_str}\3", content, count=1)

# ── Main ──────────────────────────────────────────────────────────────────────

def main():
    files = sorted(glob.glob(os.path.join(CONCEPTS_DIR, "*.md")))
    changed = 0
    errors  = []

    for fp in files:
        with open(fp, "r", encoding="utf-8") as f:
            content = f.read()

        m = TAGS_RE.search(content)
        if not m:
            # no tags line — skip (these 57 files lack YAML frontmatter)
            continue

        old_tags = list(parse_tags(m.group(2)))
        new_tags = normalize(old_tags)

        if new_tags == old_tags:
            continue

        new_content = replace_tags(content, new_tags)
        with open(fp, "w", encoding="utf-8") as f:
            f.write(new_content)

        changed += 1
        short = os.path.relpath(fp, os.path.dirname(__file__))
        old_s = ", ".join(old_tags)
        new_s = ", ".join(new_tags)
        print(f"  {short}")
        print(f"    - [{old_s}]")
        print(f"    + [{new_s}]")

    print(f"\nDone. {changed}/{len(files)} files modified.")


if __name__ == "__main__":
    main()
