---
created: 2026-04-29
updated: 2026-05-09
tags: [kernel, observability, security]
sources: 2
---

# eBPF Maps

## Definition
eBPF maps are key-value data structures that serve as the primary mechanism for state persistence and communication between eBPF programs running in kernel space and user-space applications. They enable eBPF programs to store and share data across multiple program invocations and with external processes.

## Key Aspects
- Maps are global kernel objects created via the bpf() syscall with BPF_MAP_CREATE command
- Available types include hash maps, arrays, ring buffers, perf event buffers, and LRU caches
- BPF_MAP_TYPE_RINGBUF is the modern replacement for perf buffers, supporting multi-producer scenarios
- The 512-byte stack limit forces eBPF programs to overflow data into maps for larger storage needs
- Any process with CAP_SYS_ADMIN or CAP_SYS_BPF can access and modify maps, creating security concerns
- Map tampering can bypass eBPF-based security tools like Falco and Tracee
- Maps enable eBPF programs to maintain state across invocations (e.g., counting events, tracking connections)

## Related Concepts
- [[ebpf-verifier]]
- [[delegation-chain]]

## Sources
- [[ebpf]]
- [[reverse-engineering-ebpf-programs]]
