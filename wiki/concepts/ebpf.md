---
created: 2026-04-29
updated: 2026-04-29
tags: [kernel, security]
sources: 1
---

# eBPF

## Definition

Extended Berkeley Packet Filter — a technology that allows safe, sandboxed programs to run in the Linux kernel without modifying kernel source or loading kernel modules. Programs are JIT-compiled, verified for safety before loading, and can attach to various hooks (tracepoints, kprobes, LSM hooks, network events) to extend kernel functionality.

## Key Details

- **10 general-purpose 64-bit registers** (R0-R9) + read-only frame pointer (R10)
- **Verifier**: Static analysis ensures safety — no unbounded loops, bounded memory, all paths must exit
- **Helper functions**: Predefined kernel APIs (bpf_get_current_pid_tgid, bpf_probe_read, etc.)
- **Maps**: Key-value stores for state persistence and user-kernel communication
- **512-byte stack limit**: Forces creative memory management
- **Loading**: Via bpf() syscall with BPF_PROG_LOAD command
- **Applications**: Networking (Cilium), security (Falco, Tracee), observability (Pixie), tracing (BCC)

## Related Concepts

- [[ebpf-verifier]] — Safety verification before kernel loading
- [[ebpf-maps]] — Key-value stores for state
- [[cilium]] — eBPF-based Kubernetes CNI
- [[ring-buffer]] — Kernel-to-user communication mechanism

## Sources

- [[reverse-engineering-ebpf-programs]] — Deep dive into eBPF RE
