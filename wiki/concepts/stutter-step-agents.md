---
title: "Stutter-Step Agents"
created: "2026-04-28"
tags: [agent, trust, ux]
---

# Stutter-Step Agents

## Definition

Agents that request user confirmation before every single external action, disrupting flow and preventing meaningful autonomy.

## Problem

**Quote**: "Stutter-step agents get old fast."

**Behavior**: Agent pauses at every action:
- "Should I write this file?"
- "Should I run this test?"
- "Should I make this commit?"
- "Should I send this message?"

**Result**: Constant interruptions, frustrating UX.

## Why Stutter-Step

### Safety Concerns

Fear of agent mistakes:
- Wrong actions
- Damaging changes
- Irreversible operations
- Security risks

### Lack of Trust

Not trusting agent judgment:
- Doubt decisions
- Need oversight
- Human validation required
- Safety over autonomy

### Technical Limitations

Can't determine safe actions:
- All actions seem risky
- No risk classification
- No permission tiers
- Everything needs approval

## Impact

### User Frustration

Constant confirmations:
- Interrupts workflow
- Slows progress
- Mental fatigue
- Abandon agent

### Reduced Efficiency

Waiting for approvals:
- Task completion delayed
- Human bottleneck
- Agent useless without approval
- No parallel execution

### No Meaningful Autonomy

Agent can't act independently:
- Always dependent on user
- Can't complete tasks alone
- Not truly autonomous
- Just an assistant

## Solutions

### Clever Exemptions

**Windsurf Approach**:
- Classify actions by risk
- Exempt low-risk actions
- Request approval for high-risk
- Enable meaningful autonomy

**Example**:
- Exempt: Reading files (low risk)
- Exempt: Creating temp files (low risk)
- Approve: Deleting files (high risk)
- Approve: Pushing commits (high risk)

### Trust but Verify

**Brightwave Approach**:
- Allow actions without approval
- Log all actions
- Review after execution
- Correct mistakes retroactively

**Works for**: Read-heavy workflows.

**Fails for**: Enterprise (needs more sophisticated trust).

### Tiered Permissions

**Permission Levels**:
- Level 0: No actions allowed
- Level 1: Read-only actions
- Level 2: Temporary changes
- Level 3: Permanent changes
- Level 4: External operations

Agent operates at appropriate level.

### Scope Delegation

**Delegation Scope**:
- Narrow: Specific task permissions
- Medium: Domain permissions
- Broad: Full autonomy within bounds

Match scope to task and trust.

## Enterprise Needs

**Writer Talk**: Enterprise needs more than "trust but verify."

**Requirements**:
- Audit trails
- Permission management
- Risk classification
- Approval workflows
- Compliance checks

Sophisticated trust infrastructure.

## Trust in IMPACT

**T = Trust** in IMPACT framework:
- Foundation for autonomy
- Enables meaningful action
- Prevents stutter-step behavior
- Required for real agents

Without trust, agent stuck in stutter-step pattern.

## Delegated Authority Connection

**Authority (A) in IMPACT**: Permission to act.

**Trust (T) in IMPACT**: Confidence to act without constant approval.

**Together**: Authority + Trust = Meaningful autonomy.

Authority alone → Stutter-step (have permission but fear acting).
Trust alone → Rogue agent (acting without permission).
Authority + Trust → Effective agent (permission and confidence).

## Practical Implementation

### Risk Classification

```python
def classify_action_risk(action):
    if action.type == "read":
        return "low"
    elif action.type == "write_temp":
        return "medium"
    elif action.type == "delete":
        return "high"
    elif action.type == "external_api":
        return "critical"
```

### Approval Policy

```python
def needs_approval(action, trust_level):
    risk = classify_action_risk(action)
    policy = {
        "low": trust_level >= 1,
        "medium": trust_level >= 2,
        "high": trust_level >= 3,
        "critical": trust_level >= 4
    }
    return not policy[risk]
```

### Windsurf Example

**Actions Exempted**:
- File reads
- Buffer edits (before save)
- Temporary computations
- Context gathering

**Actions Approved**:
- File saves
- Git operations
- External commands
- API calls

## Balancing Act

**Too Restrictive**: Stutter-step, useless agent.

**Too Permissive**: Dangerous, rogue agent.

**Balanced**: Meaningful autonomy with safety.

Approach: Start restrictive, expand exemptions based on:
- Agent reliability
- Task complexity
- User trust
- Risk tolerance

## Related Concepts

- [[impact-framework|IMPACT Framework]] (T = Trust)
- [[workflow-vs-agent|Workflow vs Agent]]
- [[delegated-authority|Delegated Authority]]
- [[agent-trust|Agent Trust]]
- [[agent-permissions|Agent Permissions]]

## Sources

- [[agent-engineering|Agent Engineering]]