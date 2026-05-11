---
created: 2026-04-28
updated: 2026-04-28
tags: [methodology, workflow-control]
sources: 2
---

# RIPER State Machine

## Definition

RIPER is an approval-driven state machine workflow for controlling AI agent execution sequence, progression permissions, and granular step control. It ensures AI agents only proceed to subsequent stages after human review/approval.

RIPER = **Research → Innovate → Plan → Execute → Review**

## Core Purpose

Solve the fundamental problem: How to constrain AI agents' execution flow in long-horizon tasks while maintaining human control and preventing runaway execution.

## Five Stages

### 1. Research (调研与事实锁定)

**Goal**: Let AI investigate code status, lock facts, eliminate information gaps. No guessing allowed.

**Core principles**:
- Every conclusion must have code citation (file path, function name, line number)
- Reject "I think", "usually" — only accept "I saw YYY at XXX.java:L42"
- AI must proactively ask questions, expose uncertainties

**Completion criteria**:
- Entry points, chains, dependencies, risks all locked
- Every conclusion has code citation
- Uncertain items explicitly marked in Spec
- AI questions all answered or marked [待确认]

### 2. Innovate (方案设计与对比)

**Goal**: Force AI to propose 2-3 solutions, compare pros/cons, human makes decision.

**Core principles**:
- Forbidden to provide only one solution (one solution = no choice = local optimum trap)
- Each solution must specify: files to modify, impact scope, risk points, effort estimate
- Human makes decision, AI provides analysis

**Required outputs**:
- Core approach
- Files to modify
- Pros (advantages)
- Cons (disadvantages)
- Risk points
- Effort estimate

**Note**: For simple tasks (config changes), Innovate can be skipped with explicit notation in Spec.

### 3. Plan (原子级规划)

**Goal**: Break chosen solution into atomic implementation checklist, precise to file path and function signature.

**This is the decisive point**: If Plan is unclear, execution is forbidden.

**Core principles**:
- Each step must be precise: which file, which function, how to change
- Must include function signatures (new functions/classes)
- Must have clear execution order (dependency relationships)
- Must specify verification methods

**Human approval required**: After Plan generation, human must explicitly approve with **"Plan Approved"**.

**Approval checklist**:
1. Can I understand every step?
2. Are file paths and function signatures correct?
3. Is execution order reasonable?
4. Are there missing files or steps?
5. Are risk points marked?

### 4. Execute (按图施工)

**Goal**: AI strictly executes per Plan, generates code. Human supervises only.

**Core principles**:
- AI can only execute per Plan, no improvisation allowed
- Report progress after each step completion
- If Plan issues found during execution, must stop, return to Plan stage for correction, cannot "secretly fix"

**Execution modes**:
- Standard mode: Step-by-step execution with progress reports
- YOLO mode forbidden: No "execute first, report later"

### 5. Review (验收闭环)

**Goal**: Verify code against Spec, ensure "document says = code does".

**Core principles**:
- Triangular positioning: Spec (expected) vs. code (implemented) vs. execution log (process)
- When deviation found: Fix Spec first, then fix code (Reverse Sync)
- Record all deviations and risks

**Three-axis review** (recommended via review_execute command):
1. **Axis 1**: Spec achievement rate (e.g., 4/4 target behaviors implemented)
2. **Axis 2**: Code consistency diff (deviation from plan)
3. **Axis 3**: Code quality and weaknesses (security, performance, maintainability)

**Review verdict**:
- PASS: All axes pass → can archive
- FAIL: Critical issues found → return to Plan for fixes

## Implementation Patterns

### Collaboration Contract Model

Clear separation of human vs. AI roles at each stage:

| Stage | Human Role | AI Role | Freedom Level |
|-------|-----------|---------|---------------|
| Research | Review findings, answer questions | Investigate, question, lock facts | High (explore freely) |
| Innovate | Choose solution | Propose options, analyze pros/cons | Medium (within scope) |
| Plan | Approve or reject | Generate atomic checklist | Low (no execution yet) |
| Execute | Supervise, intervene if issues | Strict implementation | Zero (no improvisation) |
| Review | Final verdict | Self-verify with evidence | Medium (evidence-based) |

### Freedom Level Management

Key principle: **Release freedom when AI creativity needed (Innovate), constrain freedom when execution needed (Execute)**.

Common mistake: Requesting execution when should be discussing, or allowing freedom when should be executing.

### Execution Before Approval

Critical rule: **"未经 Plan Approved，不得改代码"** (Without Plan Approved, code modification forbidden).

This single rule ensures entire team operates within RIPER flow, not "write wherever thinking goes".

## Integration with SDD

RIPER is the execution engine for [[spec-driven-development]]:
- SDD defines what to do (Specs as truth source)
- RIPER defines how to execute (approval-driven flow)
- Combined: SDD-RIPER methodology

**Spec lifecycle in RIPER**:
- Research → Update Spec with findings
- Innovate → Record chosen solution and rationale in Spec
- Plan → Embed approved Plan in Spec
- Execute → Log execution progress in Spec
- Review → Write Review Verdict in Spec

## Team Adoption

### Week 1: Pilot Phase

**Day 1-2**: Pick an old requirement for pilot
- Core dev spends 1-2 hours creating Code Map for old project
- Junior developer uses SDD-RIPER to complete requirement
- Core dev only reviews Plan + final Review

**Day 3-4**: Retrospect and adjust
- Did requirement complete as expected?
- Did Plan review effectively block issues?
- Where did junior developer struggle?
- Is Spec complete and reusable?

**Day 5-7**: Expand scope
- Second requirement: Different person to validate reproducibility
- Parallel delivery: Core dev writes Spec + reviews Plan, multiple juniors execute simultaneously
- Template沉淀: Pilot Specs become team templates

### Skill Configurations

Two tracks for different use cases:

**Standard version (sdd-riper-one)**:
- Complete automation native instruction system
- Cross-project automatic dependency discovery
- Mandatory three-axis code review
- Task completion smart archiving
- Recommended for new teams to establish norms

**Light version (sdd-riper-one-light)**:
- For strong models (GPT-5.4, Claude 4.5+)
- Dramatically reduced protocol length
- Auto-triage: Fast/Standard/Deep based on task complexity
- Micro-spec + summary for high-frequency small tasks
- Reduces team cognitive load
- **Warning**: Requires top-tier models, otherwise context loss or boundary失控

## Anti-Patterns

### "Free discussion mixed with commands"

Example: "Help me look at this permission module, and also fix that bug"
- First half: discussion (understand status)
- Second half: command (fix bug)
- AI receives mixed instruction → skips discussion → starts fixing → fixes wrong thing

**Correct**: One intent per prompt.

### "YOLO execution mode"

Allowing AI to "execute first, then report":
- Breaks approval gate
- Removes human control
- High risk of architectural damage

### "Skipping Plan approval"

Executing without explicit human approval:
- "Looks good, go ahead" is not approval
- Approval must be explicit: "Plan Approved"
- Ambiguous approval = no approval

## Metrics Validation

Teams practicing SDD-RIPER report:

| Metric | Improvement |
|--------|-------------|
| Bug rate (Java) | -18% |
| Bug rate (non-primary languages) | -37% |
| Requirement cycle | 1-2 weeks → 3-4 days |
| Large requirement cycle | 2 months → 1 month |
| Developer time savings | 40% |
| Code review efficiency | +55% |

Heavy validation:
- 10.8亿 requests system
- 4 development windows simultaneously
- Only periodic review needed

## Sources

- [[sdd-riper-team-guide]] — comprehensive adoption framework
- [[harness-engineering-practice-tencent]] — RIPER in large-scale systems

## Related Concepts

- [[harness-engineering]] — broader discipline containing RIPER
- [[spec-driven-development]] — paired methodology with RIPER
- [[auto-memory]] — session persistence complementing RIPER
- [[model-context-protocol]] — tool integration for RIPER stages

## Evolution

RIPER emerged from practical needs:
- Prevent AI agents from "黑盒干到底" (black-box execution)
- Maintain human control in long-horizon tasks
- Enable team collaboration and handoff
- Avoid "drift" from original goals

Current state (2026): Mature workflow with tool support
Future directions:
- Automated Plan validation
- Cross-session Plan persistence
- Team Plan sharing and templates
- Adaptive freedom levels based on task complexity