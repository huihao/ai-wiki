---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# Modernizing Project Files with AI: A Success Story from the .NET Team

## Metadata

- **Author**: Cathy Sullivan
- **Date**: 2025-05-01
- **URL**: https://devblogs.microsoft.com/blog/modernizing-project-files-with-ai-a-success-story-from-the-dotnet-team
- **Access Date**: 2026-04-27
- **Raw File**: `raw/ai/modernization/Modernizing Project Files with AI_ A Success Story from the .NET Team - Microsoft for Developers.md`

## Summary

Microsoft's .NET team used Azure OpenAI (GPT-4o-mini and o1-mini) to automate converting ~300 .NET Framework projects from custom build files to MSBuild. A script-based approach outperformed a Copilot Chat participant by enabling batch conversion and faster review cycles.

## Key Takeaways

- **Problem**: Converting ~300 projects manually was time-consuming and error-prone.
- **Two approaches tested**:
  1. **Copilot Chat Participant** (VS Code extension): iterated with Copilot per project, but was slow and comparable in time to manual conversion.
  2. **Script-based conversion** (Python + Azure OpenAI): generated conversion documentation from o1-mini, then applied rules via GPT-4o-mini. Generated 3 versions per project and picked the first that built successfully.
- **Results**: Project burndown speed increased drastically; goal reached well ahead of schedule. Simple projects converted quickly; complex/unique projects handled manually.
- **Cost**: Less than $1 in Azure OpenAI API costs.
- **Key lesson**: One-shot conversions occasionally missed property renames or import updates, but still provided a great starting point for engineer review.
- **Future improvement**: Would use a custom MCP server in VS Code for richer conversion context.

## Entities Mentioned

- [[phi-4-microsoft-collection|Microsoft]] — .NET team.
- [[openai]] — GPT-4o-mini, o1-mini via Azure.
- [[github-nousresearch-hermes-agent|GitHub]] — Copilot Chat.

## Concepts Mentioned

- [[claude-code-source-leak-harness|Code modernization]] — Migrating build systems and project files.
- MSBuild — Microsoft build engine.
- [[the-ai-coding-loop-how-to-guide-ai-with-rules-and-tests|Agentic coding]] — Using AI agents to iterate on file conversions.
- [[model-context-protocol|MCP]] — Model Context Protocol for VS Code integration.
- [[bentoml-documentation|Synthetic documentation generation]] — Using LLMs to infer and document conversion rules.

## Raw Notes

- The script generated documentation by inferring differences between old .csproj files and manually converted ones.
- A "generate 3 versions, pick first success" strategy reduced overall conversion time by accounting for LLM stochasticity.
- MSBuild verbosity and error messages were challenging for agentic behavior.

## Questions / Follow-ups

- Can this script-based approach generalize to other large-scale refactoring tasks (e.g., Java Maven → Gradle)?
- How would an MCP server improve context availability compared to the current script?
