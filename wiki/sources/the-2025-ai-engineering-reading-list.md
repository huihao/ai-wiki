---
created: 2026-04-27
updated: 2026-04-27
tags: [source, reading-list, ai-engineering]
sources: 1
---

# The 2025 AI Engineering Reading List

## Metadata

- **Author**: [[latent-space]]
- **Date**: 2024-12-27
- **URL**: https://www.latent.space/p/2025-papers
- **Fetched**: 2026-04-24
- **Raw file**: `raw/The 2025 AI Engineering Reading List.md`

## Summary

A curated "required reads" list for the AI engineer, spanning ~50 papers/models/blogs across 10 fields. The authors' design goals: pick roughly one paper per week for a year, explain *why* each matters, and focus on practical relevance for working engineers rather than foundational research history.

The list intentionally skips well-trodden introductions (e.g., *Attention is All You Need*) in favor of what practitioners actually need to know in 2025.

## Key Takeaways

- **Frontier LLMs**: Understanding the leading labs' model families is essential — OpenAI (GPT, o-series), Anthropic (Claude), Google (Gemini), Meta (Llama), Mistral, AI2 (Olmo), xAI (Grok). The 2025 frontier is dominated by **[[understanding-reasoning-llms|reasoning models]]** (o1, o3, DeepSeek-R1, QwQ, f1).
- **Scaling Laws**: Still relevant literature — Kaplan, Chinchilla, Emergence/Mirage, Post-Chinchilla — though practical knowledge is increasingly accumulated by outsiders and practitioners rather than formal papers.
- **Benchmarks**: A moving and often gamed target. MMLU Pro, GPQA Diamond, BIG-Bench Hard, MRCR (long context), FrontierMath, IFEval, and ARC-AGI are highlighted. The authors note benchmarks saturate quickly and the whole approach may be getting dated.
- **Prompting**: Chain-of-Thought, Tree-of-Thought, and automatic prompt engineering (DSPy) are key. Humans are terrible zero-shot prompters; LLMs can optimize prompts better than us.
- **RAG**: Described as the bread and butter of AI Engineering in 2024. The authors emphasize RAG is fundamentally an information retrieval problem with a 60-year history (TF-IDF, BM25, FAISS, HNSW). GraphRAG and contextual embeddings are modern developments.
- **Agents**: SWE-Bench / SWE-Lancer are the highest-profile agent benchmarks. ReAct, MemGPT, and tool use (Gorilla, BFCL) are foundational. The field is moving fast from research to industry (Devin, Claude Sonnet for coding).
- **Code Generation**: Open code models (DeepSeek-Coder, Qwen2.5-Coder, CodeLlama) and evaluation beyond HumanEval (Aider, Codeforces, LiveCodeBench). Flow engineering can add significant performance.
- **Vision**: CLIP and ViT remain required knowledge, though superseded by BLIP, SigLIP, SAM 2. Early fusion vs. late fusion (LLaVA) is an important architectural distinction. Much frontier VLM work is unpublished.
- **Voice**: Whisper dominates ASR. Kyutai Moshi and OpenAI Realtime API represent the frontier of full-duplex speech-text. Voice and vision modalities are converging.
- **Diffusion**: Stable Diffusion / Latent Diffusion lineage, DALL-E, consistency models, and the rise of autoregressive image generation (Gemini, 4o, Llama). Text-to-video (Sora, OpenSora) was the most significant launch of 2024.
- **Finetuning**: LoRA/QLoRA is the de facto cheap method. DPO is preferred over PPO for preference tuning. Synthetic data (Orca 3/AgentInstruct) and RL/reasoning tuning are frontier topics.

## Entities Mentioned

- **Publications / Communities**: [[latent-space]], a16z, Machine Learning Research, Hugging Face
- **Labs / Companies**: [[openai]], [[anthropic]], [[google|Google DeepMind]], [[meta|Meta AI]], [[mistral-ai]], [[xai]], AI2, [[amazon-bedrock-agentcore-langfuse|Amazon]], [[cohere]], [[phi-4-microsoft-collection|Microsoft]], [[apple]], Reka, 01.AI, [[nvidia]], [[stability-ai]], [[agent-tools-guide-rejecting-complexity-fragmentation-black-box|Black Forest Labs]], Ideogram, Recraft, Pika, Playground, Genmo, [[huggingface-skills|Hugging Face]]
- **People**: Sebastian Raschka, Alec Radford, Lilian Weng, Eugene Yan, Noam Brown, Denny Zhou, Shunyu Yao, Chip Huyen
- **Models / Products**: GPT-4, Claude 3/3.5/4, Gemini 1/2/2.5, Llama 1/2/3, Mistral 7B, Mixtral, Pixtral, Grok, Olmoe, ModernBERT, Whisper, SAM 2, CLIP, ViT, DALL-E, Sora, Stable Diffusion, Flux, ComfyUI, DeepSeek-Coder, Qwen2.5-Coder, CodeLlama, CriticGPT, AlphaCode, Kyutai Moshi, OpenAI Realtime API
- **Benchmarks**: MMLU, MMLU Pro, GPQA, BIG-Bench, MRCR, MuSR, LongBench, BABILong, RULER, FrontierMath, AIME, AMC10/12, IFEval, Multi-IF, COLLIE, Scale MultiChallenge, MT-Bench, ARC-AGI, SWE-Bench, SWE-Lancer, WebArena, SWE-Gym, TauBench, GAIA, HumanEval, Aider, Codeforces, IOI, BigCodeBench, LiveCodeBench, SciCode, MMVP, MMMU, MathVista, CharXiv

## Concepts Mentioned

- [[ai-engineering]] — the target discipline of this reading list
- [[understanding-reasoning-llms|Reasoning LLMs]] — 2025 frontier dominated by test-time compute models
- [[model-scaling|Scaling Laws]] — Kaplan, Chinchilla, emergence/mirage debates
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Benchmarks and Evaluation]] — saturated, gamed, but still required knowledge
- [[prompt-engineering]] — CoT, ToT, DSPy, automatic prompt optimization
- [[retrieval-augmented-generation|RAG]] — bread and butter of production AI Engineering
- [[llm-agents]] — tool use, memory, agentic workflows
- [[code-generation-with-llms]] — open models, benchmarks, flow engineering
- [[large-language-models|Vision Language Models]] — CLIP, ViT, early vs. late fusion
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Speech and Voice AI]] — ASR, TTS, full-duplex speech-text
- [[diffusion-models]] — image/video generation, latent diffusion, consistency models
- [[supervised-fine-tuning|Fine-tuning LLMs]] — LoRA, DPO, synthetic data, RL tuning
- [[in-context-learning]] — few-shot prompting and its descendants
- [[function-calling]] — tool use by LLMs
- [[graphrag]] — knowledge-graph-enhanced retrieval

## Raw Notes

- The authors run paper clubs and produce a "Best of" series annually. This list consolidates recommendations from their community and speaker network.
- Practical focus: they explicitly exclude foundational papers that "everyone else already starts there" and most engineers won't need at work.
- The list will likely need a 2026 update given the pace of the field.

## Questions / Follow-ups

- Which of these 50 papers are most critical for someone building production RAG systems?
- How does the reasoning model landscape look now (mid-2026)? Has the list aged well?
- What are the best industry resources for the "unpublished" frontier (4o vision, Sora, Realtime API)?
- Should we create individual concept pages for each of the 10 sections?
