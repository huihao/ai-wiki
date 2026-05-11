---
title: "Delegated Authority"
created: "2026-04-28"
tags: [agent, permissions, trust]
---

# Delegated Authority

## Definition

Permission granted to agent to act on behalf of and in the interest of the user or organization.

## Core Quote

"An agent is trusted to act on behalf of and in the interest of those being represented. If there's no trust there is no agent." - Roman Pshichenko

## Importance in IMPACT

**A = Authority** in IMPACT framework:
- Permission foundation
- Enables action
- Defines scope
- Fourth most important element

Without authority, agent has no right to act.

## Authority Components

### Permission Scope

What agent can do:
- Read operations
- Write operations
- External actions
- System changes

### Delegation Level

How much authority:
- Narrow: Specific task only
- Medium: Domain within bounds
- Broad: Full autonomy
- Unlimited: No restrictions

### Interest Alignment

Acting in user's interest:
- Goals match user intent
- Actions benefit user
- Decisions align with values
- Outcomes serve user

### Representation

Agent as representative:
- Actions reflect user
- Decisions proxy user
- Results attributed to user
- Responsibility to user

## Authority Spectrum

### No Authority

**Agent capability**: None.

**Behavior**: Passive observer.

**Use case**: Analysis only, no action.

### Read Authority

**Agent capability**: Read, query, analyze.

**Behavior**: Information gathering.

**Use case**: Research, monitoring, analysis.

### Write Authority (Limited)

**Agent capability**: Create, modify within bounds.

**Behavior**: Controlled modifications.

**Use case**: Drafting, prototyping, temporary changes.

### Write Authority (Full)

**Agent capability**: Permanent modifications.

**Behavior**: Persistent changes.

**Use case**: Production updates, code commits.

### External Authority

**Agent capability**: External API calls, system operations.

**Behavior**: Real-world actions.

**Use case**: Deployments, purchases, communications.

## Authority vs Trust

**Authority**: Permission to act (delegation).

**Trust**: Confidence to act autonomously (belief).

**Relationship**:
- Authority enables action legally
- Trust enables action practically
- Both needed for effective agent

**Example**:
- Authority only: Can act but fearful (stutter-step)
- Trust only: Acts boldly but unauthorized (rogue)
- Both: Acts confidently with permission (effective)

## Delegation Mechanisms

### Explicit Delegation

User explicitly grants:
- "You can edit files"
- "You can run tests"
- "You can send emails"

### Implicit Delegation

Authority inferred from context:
- Task implies certain permissions
- Domain suggests allowed actions
- Role indicates authority level

### Scoped Delegation

Authority limited to specific domain:
- "Edit only authentication files"
- "Run only unit tests"
- "Send only status emails"

### Time-Limited Delegation

Authority expires:
- "Edit files for next 1 hour"
- "Complete task by deadline"
- Authority revoked after completion

## Enterprise Authority

**Writer Talk**: Enterprise requires sophisticated authority.

**Requirements**:
- Role-based permissions
- Approval workflows
- Audit trails
- Compliance checks
- Revocation mechanisms

**Implementation**:
- Permission tiers
- Action logging
- Review processes
- Compliance verification

## Authority Failures

### Over-Delegation

**Problem**: Too much authority granted.

**Risk**:
- Agent exceeds scope
- Unintended actions
- Damage from mistakes
- Security violations

**Solution**: Narrow scope, increase gradually.

### Under-Delegation

**Problem**: Insufficient authority granted.

**Risk**:
- Stutter-step behavior
- Cannot complete tasks
- Constant approval needed
- Frustrating UX

**Solution**: Exempt low-risk actions, tiered permissions.

### Misaligned Authority

**Problem**: Authority doesn't match task.

**Risk**:
- Can't perform needed actions
- Wrong actions enabled
- Task-authority mismatch
- Ineffective agent

**Solution**: Authority aligned with task requirements.

## Practical Examples

### Devin (Coding Agent)

**Authority Granted**:
- Read codebase
- Write code files
- Run tests
- Git operations
- Create/delete files

**Scope**: Within project directory.

### Windsurf (IDE Agent)

**Authority Granted**:
- Read files
- Edit buffers
- Format code
- Save files (approval)
- Git operations (approval)

**Scope**: Current project.

### Lindy (Task Agent)

**Authority Granted**:
- Send emails
- Schedule meetings
- Create documents
- Update databases

**Scope**: Calendar and communication domain.

## Authority in Action

### Action Proposal

Agent: "I will edit authentication.py."

Authority check: Has write authority? Yes.

Result: Proceeds (or requests approval).

### Action Execution

Agent: "Running tests now."

Authority check: Has execution authority? Yes.

Result: Executes tests.

### Action Rejection

Agent: "I will delete database."

Authority check: Has deletion authority? No.

Result: Request approval or abort.

## Best Practices

### 1. Start Narrow

Begin with limited authority:
- Read-only initially
- Expand as trust builds
- Monitor agent behavior
- Increase gradually

### 2. Scope Precisely

Define clear boundaries:
- What can be done
- What cannot be done
- Domain limitations
- Action categories

### 3. Log Actions

Track all agent actions:
- What was done
- When it was done
- Why it was done
- Outcome of action

### 4. Review Regularly

Audit agent authority:
- Is scope appropriate?
- Are actions safe?
- Is trust warranted?
- Should authority change?

## Related Concepts

- [[impact-framework|IMPACT Framework]] (A = Authority)
- [[agent-trust|Agent Trust]]
- [[stutter-step-agents|Stutter-Step Agents]]
- [[workflow-vs-agent|Workflow vs Agent]]
- [[agent-permissions|Agent Permissions]]

## Sources

- [[agent-engineering|Agent Engineering]]