---
created: 2026-04-29
updated: 2026-05-09
tags: [assembly, reverse-engineering]
sources: 1
---

# Flags Register

## Definition

The flags register is a special-purpose CPU register that stores the results of arithmetic and logical operations as individual status bits (flags), enabling conditional execution and control flow. In x86 architecture, the FLAGS register contains the Zero Flag (ZF), Sign Flag (SF), Overflow Flag (OF), and Carry Flag (CF), among others, which are set by instructions like CMP and TEST and read by conditional jump instructions like JZ, JNZ, JB, and JL.

## Key Aspects

- CMP (compare) performs subtraction internally but discards the result, updating only the FLAGS register — it is effectively "SUB without storing"
- TEST performs a logical AND and sets flags without storing the result, used to test whether specific bits are set
- The Zero Flag (ZF) is set when a comparison yields equality (result is zero); JZ (jump if zero) and JNZ (jump if not zero) branch based on this flag
- The Sign Flag (SF) reflects whether the result is negative; JL (jump if less) uses SF for signed comparisons, JB (jump if below) uses CF for unsigned comparisons
- Conditional jumps (JZ, JNZ, JB, JL, JG, JGE) implement all high-level control flow: if/else statements, for loops, while loops, and switch statements
- XOR reg, reg is a common reverse engineering pattern: it zeros a register by XORing it with itself, which is both faster and smaller (fewer bytes) than MOV reg, 0
- In reverse engineering, tracking flag states through a sequence of instructions is essential for understanding conditional branching logic and reconstructing the original program's decision-making structure

## Related Concepts

- [[x86-assembly]]
- [[reverse-engineering]]
- [[cpu-registers]]

## Sources

- [[primer-reverse-engineering]]
