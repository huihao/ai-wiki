---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# CO-RE

## Definition

CO-RE (Compile Once, Run Everywhere) is a portability mechanism for eBPF programs that allows a single compiled eBPF bytecode to run correctly across different kernel versions. It solves the problem of kernel struct layout changes between versions by using relocation entries and the `BPF_CORE_READ` macro to safely access kernel data structures.

## Key Aspects

- **Portability**: One compiled eBPF program works across multiple kernel versions without recompilation
- **BPF_CORE_READ Macro**: Safely reads kernel struct fields by embedding relocation hints in the bytecode
- **Relocation Entries**: ELF metadata that tells the loader how to adjust field offsets at load time
- **Verifier Compatibility**: Works within eBPF verifier constraints (no unbounded loops, bounded memory access)
- **Kernel Struct Changes**: Handles reordering, addition, or removal of fields between kernel versions
- **Practical Impact**: Critical for deploying eBPF-based security tools (Falco, Tracee) across diverse production environments
- **Limitation**: Not all kernel changes are covered; some manual adjustment may still be needed

## Related Concepts

- [[ebpf]]
- [[ebpf-verifier]]
- [[reverse-engineering-ebpf-programs]]
- [[container-security]]

## Sources

- [[reverse-engineering-ebpf-programs]]
