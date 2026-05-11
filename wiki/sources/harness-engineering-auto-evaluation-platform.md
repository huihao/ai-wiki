---
created: 2026-05-11
updated: 2026-05-11
tags: [source]
sources: 1
---

# Harness Engineering实践：Building a Platform for AI-Driven Overnight Auto-Evaluation and Optimization

## Metadata

- **Author**: [[feng-ling|凤聆]] (Feng Ling)
- **Date**: 2026-04-29
- **URL**: https://mp.weixin.qq.com/s/UhWYE_XTQcFVmoSt8aosyg
- **Access Date**: 2026-05-11
- **Raw File**: `Clippings/Harness Engineering实践，做了一个平台让AI一晚上自动评测和优化你的系统.md`

## Summary

This article demonstrates how to build a fully automated [[automated-evaluation-platform|evaluation platform]] where AI generates test sets, runs evaluations (including browser-based UI testing), submits reports, and iteratively optimizes the target system overnight — with zero human labor after initial task description. Three case studies are presented: (1) basic API-level evaluation of DingTalk Documents MCP achieving 95/100 with 13 auto-generated test cases; (2) UI-quality evaluation of a PPT generation tool (HuiBao) scoring 85/100 across 5 projects with both functional and content-quality assessment; and (3) a fully autonomous overnight optimization loop (v1: 90.7 → v2: 97.4 → v3: 99.1) where Cursor reads evaluation reports and iteratively improves the system across multiple rounds. The author argues this "AI First" philosophy — restricting human operations at the platform level — is the key to making the loop truly autonomous.

## Key Takeaways

- The platform is designed so that **only AI can operate it** — humans describe the task in natural language, and the AI agent connects to the platform API to create tasks, generate test suites, run evaluations, and submit reports.
- Two types of evaluation sets are supported: **standard** (binary pass/fail) and **rubric-based** (graduated quality levels for subjective content like PPT aesthetics).
- The overnight auto-optimization case achieved steady score improvement across three rounds: v1 90.7 → v2 97.4 → v3 99.1, with Cursor reading the evaluation report and making code changes autonomously.
- **Prerequisites for success**: (1) the system under test must have clean, standardized UI — if AI "gets lost" in the UI, automated testing fails; (2) the system must be built with high AI-Coding content, so AI can quickly start local services for verification — legacy systems without dev environments are "dead ends."
- Compatible with local AI coding tools: Claude Code, Codex, QoderWork, and others that support tool use and browser connectivity.

## Entities Mentioned

- [[feng-ling|凤聆]] — Author, Alibaba Cloud Developer
- [[qoderwork]] — AI coding tool by Alibaba used to drive the evaluation workflow
- [[cursor]] — AI coding IDE used in the overnight optimization case

## Concepts Mentioned

- [[automated-evaluation-platform]] — AI-first platform where agents autonomously generate test sets, evaluate, and optimize systems
- [[rubric]] — Graduated scoring criteria for subjective quality assessment (beyond binary pass/fail)
- [[harness-engineering]] — The broader practice of engineering constraints and workflows around AI models

## Questions / Follow-ups

- How does the rubric generation quality compare to human-designed rubrics? Is there a ceiling on rubric-driven subjective evaluation?
- What happens when the overnight loop gets stuck in a local optimum? Are there mechanisms to break out?
- How transferable is this approach to non-Alibaba tooling stacks?
