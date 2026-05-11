---
created: 2026-04-28
updated: 2026-04-28
tags: [source]
sources: 1
---

# The AI Coding Loop: How to Guide AI With Rules and Tests

## Metadata

- **Author**: Sumit Analyzen; Sumit Saha
- **Date**: 2026-02-25
- **URL**: https://www.freecodecamp.org/news/how-to-guide-ai-with-rules-and-tests/
- **Access Date**: 2026-04-27
- **Raw File**: raw/ai/agent/The AI Coding Loop_ How to Guide AI With Rules and Tests.md

## Summary

Practical workflow for shipping secure code with AI assistance through a disciplined 7-step process: defining goals, mapping edge cases, building incrementally with runnable tests, using a shopping cart example.

## Key Takeaways

### The Core Problem

One-shot AI output creates extra work:
- Big pile of code you didn't write
- Need to understand it
- Need to verify correctness
- Need to catch hidden mistakes

**If you can't verify it, you don't own it. And if you don't own it, you can't safely ship it.**

### The 7-Step Workflow

1. **Write goal in one sentence**
2. **Write rules** (what must be true)
3. **Write two examples** (input → output)
4. **Write two bad situations** (edge cases)
5. **Ask AI for small piece, not whole thing**
6. **Ask for tests, then run them**
7. **If fails, improve prompt and repeat**

### The Shopping Cart Example

**Golden Rule**: Never trust user prices

**Problem**: Server-side cart total calculator
- User sends productId and quantity
- Must ignore any price from user
- Use own product catalog
- Handle unknown products and invalid quantity
- Calculate subtotal, discount, tax, total
- Round money correctly

**Trust Boundary**: Prices come from server, not client

### Wrong vs Correct Implementation

**Wrong Version** (trusts user price):
```javascript
const priceCents = Math.round((item.price ?? 0) * 100); // user can cheat
subtotalCents += priceCents * item.qty;
```

**Correct Version** (uses trusted catalog):
```javascript
if (typeof productId !== 'string' || !PRODUCTS[productId]) {
  throw new Error('Unknown productId: ' + productId);
}
subtotalCents += PRODUCTS[productId].priceCents * qty;
```

### Testing Strategy

**Failing Tests as Flashlight**:
- Tests pass: You earned confidence
- Tests fail: You earned clarity

On failure, ask: **Which rule was unclear, missing, or contradictory?**

Then adjust:
- Add stricter rule
- Add example removing ambiguity
- Add edge case forcing correct behavior
- Regenerate only small piece

### Prompt Template

```
Build ONE small piece, not the full app.

Goal:
(One sentence)

Rules:
(3 to 7 bullets)

Examples:
(2 examples: input -> output)

Edge cases:
(2 cases that can break it)

Deliver:
- one runnable file
- include tests using Node assert
- print one example output

Then ask:
Before giving code, list possible mistakes and confirm rules.
```

### Fundamentals Still Matter

In AI era, coding isn't less important—it's more important, differently:
- How data flows through system
- How to break big problems into small parts
- How to write clear rules and requirements
- How to test and verify
- How to notice edge cases
- How to think about security
- How to understand tools, not copy answers

**Let AI type the code. You do the thinking, breaking down, and proof.**

## Entities Mentioned

- [[sumit-analyzen|Sumit Analyzen]] — Author and educator
- [[sumit-saha|Sumit Saha]] — Co-author
- [[freecodecamp|freeCodeCamp]] — Platform publishing article

## Concepts Mentioned

- [[ai-coding-loop|AI Coding Loop]] — 7-step disciplined workflow
- [[one-shot-ai|One-Shot AI]] — Problem of generating entire app at once
- [[trust-boundary|Trust Boundary]] — Security concept separating trusted/untrusted sources
- [[price-tampering|Price Tampering]] — Attack vector accepting client prices
- [[failing-tests|Failing Tests as Flashlight]] — Debugging approach
- [[prompt-template|Prompt Template]] — Reusable format for requests
- [[incremental-development|Incremental Development]] — Building one small piece at a time
- [[verification|Verification]] — Proving code correctness

## Raw Notes

Mindset shift: Your value is not how fast you type, but how well you can define problem, break it down, and prove correctness.

## Questions / Follow-ups

- How well does this scale to larger systems?
- What other security examples work well?
- How do you teach this workflow to beginners?
- What tools support this loop best?
