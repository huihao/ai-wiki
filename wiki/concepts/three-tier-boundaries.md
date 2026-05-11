# Three-Tier Boundaries

Constraint system for AI agent guidance using graduated control levels (Always/Ask first/Never) instead of flat prohibition lists, providing clearer guidance on when to proceed, pause, or stop.

## Structure

### ✅ Always Do
Actions agent takes without asking:
- "Always run tests before commits"
- "Always follow naming conventions"
- "Always log errors to monitoring service"
- Proceed confidently on safe items

### ⚠️ Ask First
Actions requiring human approval:
- "Ask before modifying database schemas"
- "Ask before adding new dependencies"
- "Ask before changing CI/CD configuration"
- High-impact changes warranting human check
- Proceed after approval, pause until received

### 🚫 Never Do
Hard stops categorically off-limits:
- "Never commit secrets or API keys"
- "Never edit node_modules/ or vendor/"
- "Never remove failing test without explicit approval"
- Most common helpful constraint: "Never commit secrets"
- Stop immediately, no exceptions

## Benefits Over Flat Lists

More nuanced than simple don'ts:
- Acknowledges gradations of safety
- Agent can proceed confidently on "Always" items
- Flags "Ask first" items for review
- Hard-stops on "Never" items
- Reduces ambiguity in agent behavior

## Discovery

GitHub analysis of 2,500+ agent configuration files revealed this pattern as most effective for agent guidance.

## Implementation

Include in spec's Boundaries section with explicit emoji markers for visual clarity.

## Example Spec Section

```markdown
## Boundaries
- ✅ Always: Run tests before commits, follow naming conventions
- ⚠️ Ask first: Database schema changes, adding dependencies
- 🚫 Never: Commit secrets, edit node_modules/, modify CI config
```

## Related Concepts

- [[spec-driven-development]] — Workflow using three-tier boundaries
- [[agent-guardrails]] — Quality control mechanisms in specs
- [[llm-anti-patterns]] — Problems boundaries help prevent

## Related Sources

- [[how-to-write-a-good-spec-for-ai-agents]] — Three-tier system explanation

## Related Entities

- [[addy-osmani]] — Framework incorporating three-tier boundaries
- [[github]] — Research revealing pattern from agent configs