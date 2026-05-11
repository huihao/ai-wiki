# Wiki Lint Report — 2026-05-11 (updated, post-clippings + post-lint-fix)

## Summary

| Category | Before (2026-04-29) | After (2026-05-08) | After (2026-05-09) | After (2026-05-09 v2) | After (2026-05-11) | After (2026-05-11 clippings) |
|---|---|---|---|---|---|---|
| Ghost references (new) | 71 | **0** | 0 (new) | 0 (new), ~373 pre-existing | 0 (new), ~373 pre-existing | **0** (all resolved) | **0** (all resolved) |
| Total wiki pages | 2,568 | 2,605 | **2,585** | **2,582** | **2,536** | **2,578** | **2,602** |
| Stub pages (≤2 body lines) | 44 | 35 | **0** | **0** | **0** | **0** | **0** |
| Orphan pages (no inbound links) | 199 | ~138 | **~132** | **~132** | ~132 | ~132 | ~132 |
| Concepts (wiki/concepts/) | — | — | — | 1,457 | **1,411** | **1,433** | **1,441** |
| Entities (wiki/entities/) | — | — | — | — | — | **484** | **670** |
| Sources (wiki/sources/) | — | — | — | — | — | **658** | **662** |

## Changes Made on 2026-05-11: Lint Fix (25 ghost references resolved)

### Entity Pages Created (12)
tim-gowers, isaac-rajagopal, mel-nathanson, erdos-problems, tim-lian, ck-wolfe, pan-et-al, yang-et-al, zheng-et-al, wu-et-al, hsu-et-al, yandex

### Concept Pages Created (8)
additive-combinatorics, fork-join-parallelism, tool-overuse, hierarchical-rl, inference-cost, unit-economics, vllm, sglang

### Duplicate References Fixed (5)
- `[[llm-reasoning]]` → `[[reasoning-llms]]` (078, 080)
- `[[ai-in-mathematics]]` → `[[mathematical-reasoning]]` (078)
- `[[inference-time-scaling]]` → `[[inference-time-compute-scaling]]` (078, 079)
- `[[critical-path]]` → `[[critical-path-length]]` (079)
- `[[ai-agent-tool-use]]` → `[[tool-use]]` (080)

---

## Changes Made on 2026-05-11: Clippings Ingestion (6 articles)

### Source Notes Created (6)
- `10-comprehensive-resources-agentic-memory.md` — curated survey of agentic memory resources
- `ai-agent-memory-soar-to-llm.md` — SOAR architecture, memory types, ChatGPT memory mode
- `adaptive-parallel-reasoning-inference-scaling.md` — BAIR analysis of APR methods
- `grammar-constrained-bash-generation.md` — NVIDIA AI Red Team constrained decoding research
- `codex-handbook-practical-guide.md` — comprehensive Codex handbook with GPT-5.5 details
- `what-is-ralph-loop-bash-coding-pattern.md` — deep dive on the Ralph loop pattern

### Concept Pages Created (20)
adaptive-parallel-reasoning, constrained-decoding, tree-of-thoughts, soar-architecture, working-memory, chunking, memory-security, graph-based-memory, critical-path-length, radix-attention, stop-hook, constrained-retry, tree-sitter, lark-grammar, agentic-workflows, codex-cloud, approval-flows, bounded-changes, intermediate-thinking, rbac, backpressure, git-worktrees

### Entity Pages Created (12)
allen-newell, paul-rosenbloom, john-laird, tony-lian, jiayi-pan, joseph-lucas, tatev-aslanyan, curtis-pyke, salesforce, nemotron, gpt-5-5, gpt-5-4

### Existing Files Updated (9)
- `agentic-memory.md` — added 2 new sources
- `ralph-loop.md` — added new source and evolution entry
- `grammar-based-output-control.md` — added NVIDIA source
- `geoffrey-huntley.md` — added Ralph Loop article source
- `matt-pocock.md` — corrected summary, added sources
- `nvidia.md` — added grammar-constrained source, fixed ghost links
- `openai-codex.md` — rewritten with 4 surfaces, GPT-5.5, added handbook source
- `alyona-vert.md` — added curated resources source

### Ghost References Fixed
- `[[turingpost]]` → `[[turing-post]]` (wrong link name)
- `[[inference-time-scaling]]` → `[[inference-time-compute-scaling]]` (wrong link name)
- `[[Transformer Engine]]` → `[[transformer-engine]]` (case mismatch, 2 occurrences)
- `[[Flash Attention]]` → `[[flash-attention]]` (case mismatch)
- `[[FP8]]` → `[[fp8]]` (case mismatch)
- `[[Attention Mechanism]]` → `[[attention-mechanisms]]` (case mismatch)
- `[[smollm]]` → `[[hugging-face]]` (entity didn't exist, pointed to parent org)
- All 33 new ghost references from clippings: **0 remaining**

## Changes Made on 2026-05-11: Concept Deduplication

### 36 Merge Groups — 46 Files Deleted

Merged duplicate/near-duplicate concept pages. For each group, unique content was preserved in the canonical file, all `[[old-name]]` links were updated to point to the canonical file, and the redundant file was deleted.

**Singular/Plural merges (18):**

| Deleted | Canonical |
|---|---|
| `agent-loops.md` | `agent-loop.md` |
| `ai-agent.md` | `ai-agents.md` |
| `embedding-layer.md` | `embedding-layers.md` |
| `word-embedding.md` | `word-embeddings.md` |
| `self-improving-agent.md` | `self-improving-agents.md` |
| `markov-chains.md` | `markov-chain.md` |
| `subagent.md` | `subagents.md` |
| `knowledge-graphs.md` | `knowledge-graph.md` |
| `vector-databases.md` | `vector-database.md` |
| `context-windows.md` | `context-window.md` |
| `loss-functions.md` | `loss-function.md` |
| `layer-norm.md` | `layer-normalization.md` |
| `recurrent-neural-network.md` | `recurrent-neural-networks.md` |
| `convolutional-neural-networks.md` | `convolutional-neural-network.md` |
| `probability-distribution.md` | `probability-distributions.md` |
| `list-comprehension.md` | `list-comprehensions.md` |
| `reader-writer-locks.md` | `reader-writer-lock.md` |
| `warp-scheduling.md` | `warp-scheduler.md` |

**Multi-file merges (18):**

| Deleted | Canonical |
|---|---|
| `agent-safety.md`, `agentic-security.md` | `ai-agent-security.md` |
| `embedding.md` | `embeddings.md` |
| `position-encoding.md`, `position-embedding.md` | `positional-encoding.md` |
| `rotary-position-embeddings.md`, `rotary-positional-embedding.md` | `rope.md` |
| `attention-mechanism.md` | `attention-mechanisms.md` |
| `multi-head-attention-mechanics.md` | `multi-head-attention.md` |
| `flashattention.md` | `flash-attention.md` |
| `inference-time-scaling.md` | `inference-time-compute-scaling.md` |
| `chain-of-thought-prompting.md`, `chain-of-thought-reasoning.md` | `chain-of-thought.md` |
| `llm-hallucination.md` | `hallucination.md` |
| `rag.md` | `retrieval-augmented-generation.md` |
| `generative-adversarial-networks.md`, `gan.md` | `gans.md` |
| `rlhf.md` | `reinforcement-learning-from-human-feedback.md` |
| `coding-agents.md`, `ai-coding-agent.md` | `coding-agent.md` |
| `deep-agents.md` | `deepagents.md` |
| `on-device-ml.md` | `on-device-ai.md` |
| `rag-benchmarking.md` | `rag-evaluation.md` |
| `reasoning-models.md`, `thinking-models.md` | `reasoning-llms.md` |
| `model-fine-tuning.md` | `fine-tuning.md` |
| `transformer.md`, `transformer-architecture.md` | `transformers.md` |

## Changes Made on 2026-05-09 (Second Pass)

### MCP Duplicate Merge

Three separate pages existed for the same concept (Model Context Protocol). Merged into `model-context-protocol.md` (6 sources) and deleted `mcp.md` and `modelcontextprotocol.md`. Updated 24 files with `[[mcp]]` links to `[[model-context-protocol]]`.

### Computer Vision Duplicate Resolution

`computer-vision.md` existed in both `concepts/` and `entities/`. Computer Vision is a field/concept (not a specific named product), so the entities version was deleted. The concepts version was kept as the canonical page.

### Entity/Concept Misclassification Fixes (18 pages)

Moved 18 entity-like pages from `concepts/` to `entities/`, updating tags from `[concept]` to `[entity]` and renaming "Definition" headers to "Summary":

| Page | Type | Reason |
|---|---|---|
| `gpt-2.md` | Model | Specific OpenAI model release (2019, 1.5B params) |
| `gpt-3.md` | Model | Specific OpenAI model release (2020, 175B params) |
| `gpt-4.md` | Model | Specific OpenAI model release |
| `clip.md` | Model | Specific OpenAI neural network for vision-language |
| `t5.md` | Model | Specific Google model family (Text-to-Text Transfer Transformer) |
| `gpt-neo.md` | Model | Specific EleutherAI open-source model |
| `tpu.md` | Hardware | Specific Google AI accelerator ASIC |
| `ida-disassembler.md` | Tool | Specific Hex-Rays reverse engineering tool |
| `ai-sdk.md` | SDK | Specific Vercel TypeScript toolkit |
| `wolfram-language.md` | Language | Specific Wolfram Research programming language |
| `growthbook.md` | Platform | Specific open-source feature flagging platform |
| `tensor2tensor.md` | Library | Specific Google Brain deep learning library |
| `agentdojo.md` | Framework | Specific Invariant Labs benchmarking framework |
| `word2vec.md` | Model | Specific Google neural network model (2013) |
| `pi.md` | Framework | Specific minimal coding agent framework |
| `codetextbook-dataset.md` | Dataset | Specific Microsoft Research curated dataset |
| `tiny-stories-dataset.md` | Dataset | Specific Microsoft Research synthetic dataset |
| `lenet-5.md` | Architecture | Specific LeCun CNN architecture (1998) |

## Remaining Issues

### Entity/Concept Misclassification Fixes

Moved 7 entity-like pages from `concepts/` to `entities/`:

| Page | Reason |
|---|---|
| `gh-cli.md` | GitHub CLI — specific named tool, not an abstract concept |
| `neostandard.md` | Neostandard ESLint config — specific named tool |
| `node-test-runner.md` | Node.js Test Runner — specific built-in tool |
| `pi-agent.md` | Pi Agent — specific product by Mario Zechner |
| `prime-cli.md` | Prime CLI — specific tool by Prime Intellect |
| `prime-lab.md` | Prime Lab — specific platform by Prime Intellect |
| `nccl.md` | NCCL — NVIDIA software library |

**Second pass (2026-05-09):**

| Page | Reason |
|---|---|
| `piotr-niedzwied.md` → `entities/piotr-niedzwiedz.md` | Person (Neptune.ai founder/CEO) — merged with existing entity page |
| `nvlink.md` | NVIDIA GPU interconnect — specific product/technology |
| `sharp.md` | NVIDIA in-network reduction technology — specific product/technology |

### Concept Stubs Filled (82 pages)

All concept stubs expanded with full content including Definition, Key Proponents, Related Concepts, Related Entities, Sources, and Evolution sections.

**Additional stub filled (2026-05-09):** `residual-connection.md` — expanded from empty skeleton to full concept page

**Batch 1 (16):** agi, ai-safety, backpropagation, bert, context-window, cross-entropy-loss, few-shot-learning, gans, gpt, gradient-descent, hallucination, information-theory, natural-language-processing, next-word-prediction, relu, softmax

**Batch 2 (16):** dpo, constitutional-ai, reward-hacking, reinforcement-learning-from-human-feedback, prompting, prompt-injection, positional-bias, supervised-fine-tuning, self-supervised-learning, temperature-sampling, sparse-autoencoders, attention-mask, subagents, guided-decoding, long-context-llms, multimodal-model

**Batch 3 (16):** data-parallelism, pipeline-parallelism, tensor-parallelism, flash-attention, kernel-fusion, rope, prefix-caching, roofline-model, flops, torch-compile, disaggregated-prefill-decode, hnsw, approximate-nearest-neighbor, vector-database, graphrag, rag-evaluation

**Batch 4 (17):** canary-deployment, zero-downtime-deployment, reverse-proxy, load-balancing, pod, sidecar-pattern, sandbox-execution, sandboxing, feature-flags, hooks, test-driven-development, vim-keybindings, chrome-extension, bookmark-management, opentelemetry, experiment-tracking, deep-document-understanding

**Batch 5 (17):** arc-agi, mmlu, micrograd, cognitive-debt, differential-rendering, guardrails, wolfram-language, warp, resnet, bayesian-optimization, principle-of-computational-equivalence, background-review, colpali, speech-recognition, computer-vision (new page), gpu-architecture, semantic-search

### Entity Stubs Filled (142 pages)

All entity stubs expanded with Summary, Key Attributes, Related Entities, Related Concepts, Sources, and Contradictions sections.

**People (20):** alessio-fanelli, alex-krizhevsky, alyona-vert, birgitta-bckeler, chenhao-tan, chris-james, eric-brill, gabriel-mongaras, geoffrey-hinton, harrison-chase, iximiuz, john-carmack, john-schulman, lex-fridman, mark-harris, peter-steinberger, rickyshou, sam-rose, sepp-hochreiter, shane-legg, tom-yeh, tomas-mikolov, yejin-choi

**Organizations & Companies (20):** alibaba-cloud, apple-silicon, azure, cloudflare, cohere, crewai, databricks, deepmind, devin, django, elasticsearch, epoch-ai, epoch-capability-index, facebook, freecodecamp, github-copilot, google-adk, grafana, groq, haystack, ibm-granite, intel, microsoft-research, minimax, mistral, moonshot, mozilla, netflix, openai-codex, openrouter, pinecone, postgres, postgresql, presto, prometheus, purism, rabbitmq, redis, snowflake, stanford, tesla, thoughtworks, tmall, turing-post, ucla, university-of-chicago, varonis, vs-code, windsurf, xai, xiaomi, zapier, zhipu

**Tools & Software (20):** agent-orchestration, agent-patterns, ai-friendly-codebase-design, ai-observability, aws-strands, claude, cobol, code-autocomplete, crewai, jupyter, jupyter-notebook, langgraph, litellm, matplotlib, nginx, ngrok, numpy, obsidian, openrouter, pandas, python, rabbitmq, redis, scikit-learn, scipy, semantic-kernel, tinytpu, tensortonic, typescript, v8

**Concepts-in-entities (20):** automatic-differentiation, autoregressive-model, benchmark-saturation, business-process-automation, cnn-architectures, code-autocomplete, computer-vision, continuous-integration, data-governance, decision-trees, deep-learning-history, distributed-tracing, dynamic-programming, edge-computing, gpu-computing, graph-theory, image-classification, instruction-tuning, knowledge-distillation, knowledge-persistence, llms-know-linguistics, log-management, longest-common-prefix, master-servant-pattern, metrics-collection, model-management, nccl, neural-network, privacy-first-ai, problem-solving-ai, sequence-modeling, shared-memory-architecture, string-manipulation

### Ghost Link Fixes

38 new ghost links introduced by stub filling were identified and fixed:
- 27 fixed via batch script (typos, person names without pages, missing concept pages)
- 11 fixed individually (source link format corrections)
- 0 new ghost links remaining

### New Pages Created

- `wiki/concepts/computer-vision.md` — concept page for computer vision (entity page already existed)

## Remaining Issues

### Pre-existing Ghost References (~373)

These existed before the 2026-05-09 passes and were not introduced by this session:
- `[[index]]` (34x): References to `wiki/index.md` — false positive (file exists at root)
- `[[log]]` (4x): References to `wiki/log.md` — false positive (file exists at root)
- Person names without pages (e.g., `[[chris-olah]]`, `[[collaborative-filtering]]`)
- Concept pages not yet created (e.g., `[[microservices]]`, `[[explainable-ai]]`)

### Remaining Stub Pages (0)

All concept and entity stubs have been filled.

### Orphan Pages (~132)

Pages with zero inbound `[[...]]` links. Main categories: source pages not linked from any concept/entity, entity pages not mentioned in sources.
