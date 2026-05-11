---
created: 2026-04-29
updated: 2026-05-09
tags: [kernel, security, verification]
sources: 2
---

# eBPF Verifier

## Definition
The eBPF verifier is a static analysis component in the Linux kernel that validates eBPF programs before they are loaded, ensuring they will not crash, hang, or compromise kernel stability. It performs path-sensitive analysis to verify safety properties including bounded memory access, termination (no unbounded loops), and valid control flow.

## Key Aspects
- Programs must pass verification before loading via the BPF_PROG_LOAD syscall command
- Ensures no unbounded loops exist (all loops must have provably finite iteration counts)
- All execution paths must reach a valid exit point; dead code or infinite loops are rejected
- Memory accesses are verified to be within bounds; only bounded reads and writes are permitted
- The verifier explores all possible execution paths, which can cause high CPU usage for complex programs
- Verifier path complexity has historically led to multiple CVEs (bypass vulnerabilities)
- Constraints shape unusual code patterns: developers must write in ways the verifier can prove safe
- BPF_CORE_READ macro helps write verifiable code that works across kernel versions (CO-RE)

## Related Concepts
- [[ebpf-maps]]
- [[fail-closed]]

## Sources
- [[ebpf]]
- [[reverse-engineering-ebpf-programs]]
