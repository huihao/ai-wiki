---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# BPF_CORE_READ

## Definition
BPF_CORE_READ is a helper macro in eBPF programming that safely reads kernel struct fields across different kernel versions, implementing the CO-RE (Compile Once, Run Everywhere) portability mechanism. It handles field offset changes between kernel versions by generating relocation instructions that the loader adjusts at load time, eliminating the need to recompile eBPF programs for each kernel version.

## Key Aspects
- **CO-RE portability**: Compile Once, Run Everywhere -- a single compiled eBPF binary works across multiple kernel versions without recompilation
- **Field relocation**: The macro generates BTF (BPF Type Format) relocation records that the loader resolves by comparing the compiled struct layout against the running kernel's actual layout
- **Safe kernel access**: Directly reading kernel memory from eBPF is dangerous and restricted by the verifier; BPF_CORE_READ provides a verifier-approved path to access kernel structures
- **Nested field access**: Supports reading through pointer chains (e.g., `BPF_CORE_READ(task, mm, pgd)`) with null pointer checks at each dereference
- **Verifier compliance**: The eBPF verifier requires bounded memory access and path safety; BPF_CORE_READ generates instruction sequences that satisfy these constraints
- **Rootkit analysis context**: In the exechijack rootkit, BPF_CORE_READ was used to read kernel data structures that the rootkit itself tried to manipulate via bpf_probe_write_user

## Related Concepts
- [[bpf-probe-write-user]] -- the complementary write-side helper for modifying user-space memory from eBPF
- [[ebpf-verifier]] -- the static analyzer that validates BPF_CORE_READ instruction sequences
- [[co-re]] -- the broader Compile Once, Run Everywhere framework

## Sources
- [[reverse-engineering-ebpf-programs]]
