# LLM Anti-Patterns

Common mistakes creating technical debt when integrating LLMs into development workflows, identified by Thoughtbot as three key problematic behaviors.

## Three Core Anti-Patterns

### 1. Magic Bandaid
Treating LLMs as oracles rather than tools:
- Paste errors into ChatGPT expecting instant fixes
- Iterate through increasingly convoluted solutions
- Ship code that "works but feels wrong"
- Knowledge gaps should be understood but skipped for speed

**Consequence**: Code works but lacks understanding, creates fragile solutions.

### 2. Review Time Sink
AI-generated artifacts overwhelming reviewers:
- Three-paragraph PR descriptions saying everything and nothing
- Code with "AI smell" requiring extra review effort
- Reviewers as first eyes on AI-generated work
- "ChatGPT chose to do it that way" weakens team learning

**Consequence**: Reviews take twice as long, team skills degrade.

### 3. Context Fragmentation
AI-generated artifacts breaking product coherence:
- Auto-generated tests lacking human reasoning
- Commit messages without architectural context
- Difficulty explaining decisions 6 months later
- Never really made decisions—just clicked "accept edits"

**Consequence**: Maintainability suffers, architectural ownership lost.

## Root Causes

- Speed pressure bypassing collaboration
- Treating AI as replacement for human reasoning
- Skipping planning steps
- Lack of team agreement on AI usage patterns

## Solutions

- Team communication before AI usage
- Self-review before tagging teammates
- Add human context throughout artifacts
- Discuss team norms for AI integration
- Stay in driver's seat—AI assists, doesn't lead

## Related Concepts

- [[ai-development-workflow]] — Best practices avoiding anti-patterns
- [[human-ai-collaboration]] — Effective partnership patterns
- [[spec-driven-development]] — Structured approach preventing anti-patterns

## Related Sources

- [[how-to-use-llms-without-driving-your-team-mad]] — Detailed anti-pattern identification

## Related Entities

- [[jimmy-thigpen]] — Author identifying anti-patterns
- [[thoughtbot]] — Consultancy publishing workflow guidance