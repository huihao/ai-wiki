---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# BFS Crawling

## Definition
BFS (Breadth-First Search) crawling is a web crawling strategy that systematically visits web pages level by level, starting from a seed URL and discovering new links breadth-first before going deeper. This approach ensures even coverage of a website's structure and is the foundational crawling pattern used by search engine crawlers and web archiving tools.

## Key Aspects
- **Level-by-level exploration**: Start at seed URLs (level 0), discover and queue all linked URLs (level 1), then visit all level-1 URLs and discover level-2 links, and so on
- **Queue-based implementation**: Uses a FIFO queue to maintain the frontier of URLs to visit, ensuring breadth-first ordering
- **Completeness guarantee**: BFS guarantees that the shortest path from any seed to a target page is found first, ensuring no reachable page is indefinitely deferred
- **Politeness constraints**: Real-world BFS crawlers must respect robots.txt, rate limits, and crawl-delay directives to avoid overwhelming servers
- **Deduplication**: Visited URLs must be tracked (typically in a hash set) to avoid revisiting pages, which would cause infinite loops in cyclic link structures
- **Scalability challenge**: BFS frontier grows exponentially on well-linked sites; practical crawlers impose depth limits or prioritize by page importance (PageRank, freshness)

## Related Concepts
- [[web-crawling]] -- the broader field of automated web content retrieval
- [[graph-traversal]] -- BFS as a fundamental graph algorithm
- [[spider]] -- an alternative name for web crawlers

## Sources
- [[web-crawling]]
