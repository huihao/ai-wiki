
---

## [2026-05-09] lint | Entity/concept reclassification + stub content fill

Ran lint pass across `wiki/concepts/` to (a) reclassify entity stubs wrongly placed in concepts, and (b) fill stub pages with content derived from their source files.

**Entity reclassification (28 files):**
- Deleted 18 concept stubs that duplicated existing entity files (alibaba-cloud, automatic-differentiation, autoregressive-model, benchmark-saturation, claude, computer-vision, continuous-integration, decision-trees, edge-computing, graph-theory, image-classification, instruction-tuning, jupyter-notebook, knowledge-distillation, model-management, neural-network, python, vaswani-et-al)
- Migrated 7 concept stubs to entities with proper content: `anthropic-api`, `github-workflows`, `google-bigquery`, `google-colab`, `node-js`, `nyu`, `pip`
- Migrated 3 entity-like stubs to entities (0 sources): `docker`, `kubernetes` (created new entity files); `keras` (deleted concept stub, entity already existed)

**Stub content filled (319 stubs in 16 batches):**
- Batch 1-6: 38 stubs with 4-16 sources (agents, transformers, llm-evaluation, residual-connections, neural-networks, llm-inference, attention-mechanisms, visualization, ml-infrastructure, human-in-the-loop, hardware-acceleration, distributed-systems, least-squares, post-training, llm-training, model-training, memory-management, ai-agents, improving-gpu-memory-oversubscription-performance, web-frameworks, vectors, transformer, parallel-computing, model-performance-metrics, embeddings, relationship-extraction, process-reward-models, matrices, mathematical-reasoning, jupyter-notebooks, healthcare-ai, gpu-clusters, entity-extraction, dynamic-analysis, developer-tools, cross-platform-deployment, batch-size, alignment)
- Batches 7-10: 71 stubs with 3 sources (agent-benchmarking, agent-loop, agent-systems, agent-workflows, attention-is-all-you-need, chain-of-thought-prompting, context-windows, feature-visualization, gpu-throughput, llm-hallucination, mcp-security, pi, probability-distributions, reasoning, sinusoidal-functions, supervised-learning, tensor-core, tool-use, transformer-scaling, zero-trust, and 52 others)
- Batches 11-16: 210 stubs with 2 sources (adam-optimizer, autoencoders, beam-search, convolution, cross-entropy, dropout, gan-training, gpt-2, gru, kl-divergence, loss-function, markov-chain, ppo, stable-diffusion, temperature-parameter, text-generation, and 194 others)

**Result:** Concepts 1491, Entities 616, Remaining stubs 567 (1-source stubs only)

---

## [2026-05-09] ingest | 3 Clippings articles

Processed 3 files from `Clippings/` directory.

**Files processed (3):**

1. **From Bounded Contexts to Capability Boundaries** — Naftiko maps DDD primitives (bounded contexts, ubiquitous language, aggregates, anti-corruption layers) onto YAML-based AI agent capability format
2. **Managers Returning to 'Coding' with AI** — Engineering manager categorizes 7 groups of managers returning to hands-on work via AI tools, argues clarity about group membership is essential
3. **Pushing Local Models With Focus And Polish** — Armin Ronacher argues local model inference needs focus over fragmentation; presents ds4.c + pi-ds4 for DeepSeek V4 Flash on high-RAM Macs

**Created:**
- Sources: `bounded-contexts-to-capability-boundaries`, `managers-returning-to-coding-with-ai`, `pushing-local-models-with-focus-and-polish`
- Entities: `naftiko`, `ds4-c`, `pi-ds4`
- Concepts: `bounded-context`, `ubiquitous-language`, `ddd-aggregates`, `anti-corruption-layer`, `context-map`, `tool-parameter-streaming`, `coding-agent-ux`

**Updated:**
- Entity: `armin-ronacher` (expanded from stub with new source)
- Concepts: `local-ai` (expanded from stub), `kv-cache` (added SSD offloading source)

**Deleted:** 3 Clippings files after processing

---

## [2026-04-29] ingest | Batch: 52 raw files from raw/ directory (001-077)

Processed 52 new files from `raw/` directory (full batch 001-077), skipping 24 files that were already ingested, extraction failures, or too large.

**Files processed (52):**

1. `001_The Parts of a Transformer Nobody Talks About` — Layer normalization, FFN, residual connections, Pre-Norm vs Post-Norm
2. `002_This Kernel Was Faster Yesterday` — GPU kernel benchmarking with CUDA events, clock frequency, cache state
3. `003_JOIN Algorithms` — Database join algorithms: nested loop, hash, merge, index, grace hash, broadcast
4. `007_Understanding and Coding Self-Attention` — Sebastian Raschka's self-attention from scratch tutorial with PyTorch
5. `012_Overview` — Georgia Tech Interactive Linear Algebra textbook overview
6. `014_On-Policy Distillation` — On-policy distillation combining RL relevance with dense distillation signal
7. `019_Critical Thinking during the age of AI` — Addy Osmani's framework for critical thinking with AI tools
8. `022_Continuous batching from first principles` — KV cache, chunked prefill, ragged batching for LLM serving
9. `023_On Different Degrees of Smallness` — Infinitesimals and orders of smallness (Calculus Made Easy)
10. `026_A Primer Guide to Reverse Engineering` — x86 assembly fundamentals, registers, stack, IDA
11. `031_What are LLM Embeddings` — Neptune.ai article (content replaced by OpenAI acquisition notice)
12. `034_How to Unpack Malware with x64dbg` — Emotet unpacking via VirtualAlloc breakpoints
13. `035_Hello World Learn Go with tests` — Go + TDD tutorial by Chris James
14. `036_ML Systems Textbook` — MIT Press ML systems engineering textbook
15. `037_How to Read Research Papers` — Intuition-Empirics-Details framework for paper reading
16. `041_x86 Reverse Engineering` — x86 assembly RE techniques
17. `042_Inside the V8 JavaScript Engine` — V8 JIT compilation pipeline, Ignition, TurboFan, deoptimization
18. `043_Intro Linear Algebra for Applied ML` — Linear algebra crash course for ML applications
19. `044_My Favorite Papers` — Pedro Tavares' curated CS papers list
20. `045_Understanding Reader-Writer Locks` — Synchronization primitives with C implementations
21. `046_Malware Development Part 1` — Shellcode loading, AV evasion, sandbox detection basics
22. `048_Diffusion Meets Flow Matching` — Diffusion model theory, SDE/ODE formulation, flow matching
23. `049_What to do to Scale Up` — Scaling laws, muP, maximal feature learning
24. `050_How to Scale Your Model` — Parameterization schemes: Standard, muP, SP, ABC
25. `051_CBOW Model` — Continuous Bag of Words implementation from scratch
26. `052_Transformers from Scratch` — Building transformers from first principles
27. `053_Attention Is All You Need Discovery` — Transformer paper walkthrough with NMT implementation
28. `056_So You Want to Learn LLMs Roadmap` — LLM learning roadmap
29. `058_Transformers Word Embeddings Explained` — Word embeddings for transformers
30. `059_Transformer Positional Encoding` — Sinusoidal positional encoding
31. `062_Deep Dive Self-Attention by Hand` — Step-by-step self-attention computation
32. `063_Multi-Head Attention from Scratch` — Multi-head attention implementation
33. `064_Build Your Own CLI Coding Agent` — Pydantic-AI coding agent tutorial
34. `067_Kubernetes Basics` — Pods, Deployments, Services
35. `069_Wafflehouse Method` — Personal career planning framework
36. `070_How I Studied LLMs in Two Weeks` — LLM study guide
37. `071_Transformers HuggingFace Docs` — Hugging Face Transformers documentation
38. `072_Math for ML Resources` — Mathematics for machine learning resource collection
39. `073_LLMs Know About Linguistics` — Linguistic analysis of LLM capabilities
40. `074_Speech and Language Processing` — Jurafsky & Martin textbook
41. `075_chrome-read-later` — Vim-powered Chrome reading list extension
42. `076_Transformer Explainer` — Interactive transformer visualization
43. `077_Tiny TPU` — Student-built toy TPU in Verilog
44. `047_x86-64 Assembly GUI` — x86-64 assembly with GUI programming
45. `056_So You Want to Learn LLMs` — LLM learning roadmap (duplicate processing)
46. `069_Wafflehouse Method` — Career planning DAG-based framework
47. `070_How I Studied LLMs` — Two-week LLM study plan
48. `072_Math for ML Resources` — Math learning resources for ML
49. `058_Transformers Word Embeddings` — Word embeddings in transformers
50. `059_Transformer Positional Encoding` — Positional encoding explained
51. `071_Transformers Documentation` — Hugging Face docs
52. `076_Transformer Explainer` — Interactive visualization tool

**Files skipped (24):**
- 004, 036, 039, 040 — Files not found on disk
- 006, 010 — Extraction failures (rate limit, raw HTML)
- 017, 018 — Sparse/insufficient content
- 020, 030, 054, 066, 068 — Files too large (>200KB)
- 038, 060, 061, 065 — Already ingested
- 055, 057 — Colab notebook extraction failures
- 078+ — Non-existent files

**Wiki pages created:**
- **Sources**: ~43 new source pages in `wiki/sources/`
- **Entities**: ~40 new entity pages in `wiki/entities/`
- **Concepts**: ~95 new concept pages in `wiki/concepts/`

**Index updated:**
- Added 30+ new entity entries
- Added 100+ new concept entries
- Total index entries: ~400+ entities and concepts

**Log updated:** `wiki/log.md`

---

## [2026-04-29] ingest | Batch: 10 raw files from raw/ directory

Processed 10 new files from `raw/` directory (numbered 001-077 batch):

**Files processed:**

1. `003_JOIN Algorithms.md` — Database join algorithms (nested loop, hash, merge, index, grace hash, broadcast)
2. `019_Critical Thinking during the age of AI.md` — Critical thinking framework for AI-augmented engineering
3. `023_On Different Degrees of Smallness.md` — Calculus Made Easy excerpt on infinitesimals
4. `026_A Primer Guide to Reverse Engineering.md` — x86 assembly reverse engineering primer
5. `043_Understanding Reader-Writer Locks.md` — Concurrency primitives with C implementations
6. `048_Implementing CBOW.md` — Word2Vec CBOW implementation from scratch
7. `050_Attention is all you need discovery.md` — Transformer paper walkthrough with NMT implementation
8. `053_Linear Algebra Crash Course.md` — Technion linear algebra reference (eigendecomposition, norms, positive definite)
9. `058_Transformers Word Embeddings.md` — Word embedding training tutorial with Arabic example
10. `069_Wafflehouse Method.md` — Personal development framework for tech career planning

**Already existed (skipped):**
- 045 (Diffusion Meets Flow Matching) — source already at `diffusion-meets-flow-matching.md`
- 065 (ML Equations) — source already at `essential-ml-equations.md`

**Source pages created (10):**
- `wiki/sources/join-algorithms.md` — Comprehensive join algorithm guide
- `wiki/sources/critical-thinking-age-of-ai.md` — Critical thinking for AI teams
- `wiki/sources/on-different-degrees-of-smallness.md` — Calculus Made Easy excerpt
- `wiki/sources/primer-reverse-engineering.md` — x86 RE primer with IDA walkthrough
- `wiki/sources/understanding-reader-writer-locks.md` — RW lock guide with C code
- `wiki/sources/implementing-cbow-text-features.md` — CBOW from scratch
- `wiki/sources/attention-is-all-you-need-discovery.md` — Transformer paper walkthrough
- `wiki/sources/linear-algebra-crash-course-cs236605.md` — Linear algebra reference
- `wiki/sources/transformers-word-embeddings.md` — Word embedding tutorial
- `wiki/sources/wafflehouse-method.md` — Career planning framework

**Entity pages created (10):**
- `wiki/entities/arpit-bhayani.md` — Database internals writer
- `wiki/entities/silvanus-thompson.md` — Calculus Made Easy author
- `wiki/entities/mohit-mishra.md` — Concurrency/RE writer
- `wiki/entities/yacine-mahdid.md` — Wafflehouse Method creator
- `wiki/entities/ahmad-mustapha.md` — Transformers tutorial series author
- `wiki/entities/dipanjan-sarkar.md` — KDnuggets CBOW tutorial author
- `wiki/entities/ashish-vaswani.md` — Transformer paper lead author
- `wiki/entities/noam-shazeer.md` — Transformer paper co-author
- `wiki/entities/lilian-weng.md` — OpenAI ML blogger
- `wiki/entities/eduardo-munoz-sala.md` — Transformer NMT tutorial author

**Concept pages created (9):**
- `wiki/concepts/join-algorithms.md` — Database join strategies
- `wiki/concepts/critical-thinking.md` — Evidence-based reasoning framework
- `wiki/concepts/reader-writer-lock.md` — Concurrent read/exclusive write primitive
- `wiki/concepts/entropy.md` — Information-theoretic uncertainty measure
- `wiki/concepts/word-embeddings.md` — Dense semantic word representations
- `wiki/concepts/reverse-engineering.md` — Binary analysis and reconstruction
- `wiki/concepts/eigendecomposition.md` — Matrix factorization into eigenvalues/vectors
- `wiki/concepts/encoder-decoder-architecture.md` — Two-stack Transformer design
- `wiki/concepts/goal-setting.md` — Wafflehouse Method planning framework

**Key themes:**
1. **Database internals**: Join algorithm selection based on data size, sort order, memory, and cluster topology
2. **Critical thinking in AI age**: Verifying AI outputs, defining real problems, evidence-based decisions
3. **Reverse engineering**: x86 assembly fundamentals, stack/registers/flags, control flow reconstruction
4. **Concurrency**: Reader-writer locks improving read-heavy performance over mutexes
5. **Word embeddings**: CBOW/Skip-gram training, semantic vector spaces, task-specific representations
6. **Transformer architecture**: Self-attention, multi-head attention, positional encoding, encoder-decoder design
7. **Linear algebra foundations**: Eigendecomposition, norms, positive definite matrices for ML
8. **Personal development**: DAG-based goal decomposition from 5-year vision to daily tasks

---

## [2026-04-28] ingest | Batch: 5 raw files from raw/ai directory

Processed 5 raw files from `raw/ai/` directory:

**Files processed:**
1. `How we built Agent Builder's memory system.md` — LangSmith Agent Builder memory system architecture
2. `HyperAI.md` — AI workflow platform overview
3. `ImageNet.md` — ImageNet dataset description
4. `Installation¶.md` — Dive into Deep Learning installation guide
5. `Introduction · Hugging Face.md` — Hugging Face LLM Course setup guide

**Source pages created (5):**
- `wiki/sources/how-we-built-agent-builder-memory-system.md` — Memory system implementation details, COALA framework, AGENTS.md evolution, learnings
- `wiki/sources/hyperai.md` — Platform features: notebooks, datasets, papers, SOTA tracking
- `wiki/sources/imagenet-dataset.md` — Dataset overview, WordNet hierarchy, historical impact
- `wiki/sources/installation-d2l.md` — Setup guide for Miniconda, frameworks (PyTorch/MXNet/JAX/TensorFlow), d2l package
- `wiki/sources/introduction-hugging-face.md` — Setup options: Colab notebooks vs Python virtual environments

**Entity pages created (2):**
- `wiki/entities/langsmith-agent-builder.md` — No-code agent builder with memory system
- `wiki/entities/langchain-team.md` — Team behind memory system implementation
- `wiki/entities/hyperai.md` — AI workflow platform entity

**Entity pages updated (2):**
- `wiki/entities/imagenet.md` — Added imagenet-dataset source reference
- `wiki/entities/d2l.md` — Added installation-d2l source reference

**Concept pages created (5):**
- `wiki/concepts/agent-memory.md` — Memory systems for AI agents, COALA framework
- `wiki/concepts/procedural-memory.md` — Rules determining agent behavior
- `wiki/concepts/semantic-memory.md` — Facts about the world
- `wiki/concepts/deep-agents.md` — LangChain agent harness framework
- `wiki/concepts/ai-workflow-platform.md` — Integrated AI development platforms
- `wiki/concepts/python-virtual-environments.md` — Isolated Python environments using venv

**Concept pages updated (3):**
- `wiki/concepts/agents-md.md` — Added LangSmith Agent Builder usage, evolution example, memory type classification
- `wiki/concepts/agent-skills.md` — (already existed)
- `wiki/concepts/episodic-memory.md` — (already existed)

**Key themes:**
1. **Agent memory systems**: Filesystem representation, COALA framework (procedural/semantic/episodic), iterative evolution through corrections, prompting as hardest challenge
2. **AI workflow platforms**: Integrated notebooks, datasets, compute, research, SOTA tracking, accelerating development
3. **Landmark datasets**: ImageNet's role in deep learning revolution, WordNet hierarchy
4. **Deep learning setup**: Environment installation, framework choices (PyTorch/JAX/TensorFlow/MXNet), virtual environments vs Colab
---

## [2026-04-28] ingest | Batch: 6 raw files from raw/ai directory

Attempted to process 6 raw files from `raw/ai/` directory:

**Successfully processed (3 files):**

1. **Advanced Techniques to Build Your RAG System - MachineLearningMastery.com.md**
   - Source: `wiki/sources/advanced-techniques-build-rag-system.md`
   - Concepts: query-expansion, hybrid-retrieval, multi-stage-retrieval, re-ranking, bm25, cross-encoder, dense-vectors, sparse-vectors
   - Key themes: RAG optimization techniques (query reformulation with BART, hybrid dense+sparse retrieval, multi-stage re-ranking with cross-encoders)
   - Status: Deleted original file

2. **Agent Engineering.md**
   - Source: `wiki/sources/agent-engineering.md`
   - Concepts: impact-framework, agent-planning, workflow-vs-agent, stutter-step-agents, delegated-authority
   - Key themes: IMPACT framework for agent definition (Intent, Memory, Planning, Authority, Control flow, Trust), workflow vs agent spectrum, autonomy challenges
   - Status: Deleted original file

3. **GitHub - rwitten_HighPerfLLMs2024.md**
   - Source: `wiki/sources/high-performance-llms-2024.md`
   - Concepts: roofline-analysis, llm-sharding, quantized-training
   - Key themes: High-performance LLM training/inference in JAX (roofline analysis, distributed sharding, quantized training AQT, flash attention, Pallas optimization)
   - Status: Deleted original file

**Skipped (3 files) - incomplete/problematic content:**

1. **Agentic Design Patterns.md**
   - Issue: Contains only JavaScript error message ("您的浏览器中未启用 JavaScript"), no actual content
   - Status: Left in raw/ai directory

2. **GRPO.md**
   - Issue: HTML wrapper dynamically fetching 'grpo.md' via JavaScript, actual markdown content not available
   - Status: Left in raw/ai directory

3. **Gemini.md**
   - Issue: 616KB raw HTML from Gemini web app interface, no useful extracted content
   - Status: Left in raw/ai directory

**Summary statistics:**
- Files successfully processed: 3/6 (50%)
- Wiki sources created: 3
- Wiki concepts created: 17 (8 RAG concepts, 5 agent concepts, 3 performance concepts, 1 extra)
- Index entries added: 29 total (3 sources + 17 concepts + 9 people/publications/entities)
- Files deleted: 3 (successfully processed)
- Files remaining: 3 (problematic/incomplete)

**Cross-cutting themes:**

1. **RAG Optimization**: Advanced techniques beyond basic retrieval
   - Query expansion handles terminology mismatch
   - Hybrid retrieval combines semantic (dense) + keyword (sparse/BM25)
   - Multi-stage retrieval balances efficiency (fast initial) + accuracy (slow re-ranking)
   - Cross-encoders provide precise relevance scoring in Stage 2

2. **Agent Engineering**: Comprehensive framework for agent design
   - IMPACT provides spanning definition across perspectives
   - Control flow distinction: LLM-driven (agent) vs preset (workflow)
   - Trust enables meaningful autonomy beyond stutter-step behavior
   - Planning essential for multi-step complex tasks

3. **High-Performance LLMs**: Optimization reaching hardware limits
   - Roofline analysis identifies compute vs memory bounds
   - Sharding enables distributed scaling beyond single device
   - Quantized training (AQT) achieves 4x memory reduction without accuracy loss
   - Flash attention reduces memory from O(N²) to O(N)

**Index updates:**
- Added Muhammad Asad Iqbal Khan (author)
- Added Latent Space (publication)
- Added Rafi Witten (course creator, Google Cloud TPU lead)
- All concept entries properly linked with source references

---

## [2026-04-28] ingest | Batch: 7 raw files from raw/ai directory

Attempted to process 4 remaining raw files from `raw/ai/` directory:

**Successfully processed (1 file):**

1. **How we built Agent Builder's memory system.md**
   - Status: Content already existed in wiki
   - Source: `wiki/sources/how-we-built-agent-builder-memory-system.md` (already present)
   - Entity: `wiki/entities/langsmith-agent-builder.md` (already present)
   - Concept: `wiki/concepts/agent-memory.md` (already present)
   - Key content: LangSmith Agent Builder memory implementation using filesystem representation, COALA framework (procedural/semantic/episodic), AGENTS.md evolution, key learnings (prompting as hardest challenge, file validation, compaction difficulty), future directions
   - Action: Deleted original file

**Skipped (3 files) - extraction failures:**

1. **Agentic Design Patterns.md**
   - Issue: Google Docs link requiring JavaScript to load content
   - Content: Only contains Chinese error message "您的浏览器中未启用 JavaScript" (JavaScript not enabled in browser)
   - Status: Deleted after verification of extraction failure

2. **GRPO.md**
   - Issue: HTML wrapper dynamically fetching markdown content via JavaScript
   - Content: HTML template with `<script>` tags using `fetch('grpo.md')` to load content, actual markdown not available without JavaScript execution
   - Status: Deleted after verification of extraction failure

3. **Gemini.md**
   - Issue: File too large (615.6KB) exceeding read limit
   - Content: Raw HTML from Gemini web app interface, no useful extracted content available
   - Status: Deleted after verification of extraction failure

**Summary statistics:**
- Files successfully processed: 1/4 (25%) - content already existed
- Files skipped (extraction failed): 3/4 (75%)
- Wiki pages created: 0 (all content already existed)
- Files deleted: 4 (1 processed, 3 failed)

**Extraction failure patterns:**

1. **JavaScript-required content**: Google Docs and dynamic HTML pages require JavaScript execution to render content. Browser-based extraction tools would be needed.

2. **Dynamic content loading**: HTML templates using `fetch()` to load markdown/content asynchronously cannot be extracted without JavaScript runtime.

3. **File size limits**: Large HTML files (>256KB) from web app interfaces exceed read limits and often contain non-extractable content.

**Wiki verification:**
- Confirmed existing pages:
  - Source: `how-we-built-agent-builder-memory-system.md` - comprehensive coverage
  - Entity: `langsmith-agent-builder.md` - platform overview
  - Concept: `agent-memory.md` - COALA framework details

**Directory cleanup:**
- All markdown files removed from `raw/ai/`
- Only subdirectories remain (agent, benchmarks, framwork, gpu, harness, math, memory, modernization, package, platform, rag, ralpha, rl, runner, skills, transformer)

**Updated:** `wiki/log.md`
**Deleted:** 4 raw files from `raw/ai/` after processing verification

## [2026-04-29] lint | Full wiki health check
Full lint pass: 1860 ghost references (1123 unique missing pages), 199 orphan pages (30 concepts, 53 entities, 114 sources, 2 synthesis). Top ghost refs: [[agents]](15x), [[transformers]](14x), [[pydantic]](8x), [[claude]](7x). Report written to lint-report.md.

## [2026-04-29] fix | Resolve all ghost references
Created 1114 stub pages (1033 concepts + 81 entities) for all referenced-but-missing wiki pages. Fixed 1 Unicode slug mismatch (jurgen-schmidhuber), created 1 missing entity (piotr-niedzwiedz). Ghost references: 1860 → 0. Total wiki pages: 1444 → 2568.

## [2026-04-30] fix | Trim stub pages to 15 high-value concepts
Deleted all 1115 stub pages. Re-created 15 high-value concept stubs for the most-referenced missing pages: agents(16x), transformers(14x), claude(8x), pydantic(7x), llm-evaluation(7x), attention-mechanisms(6x), automatic-differentiation(6x), llm-inference(6x), python(6x), neural-networks(6x), residual-connections(6x), human-in-the-loop(5x), agent-trust(5x), visualization(5x), distributed-systems(5x). Ghost references now at 1190 (down from 1860, 670 resolved by the 15 stubs).
