---
created: 2026-04-29
updated: 2026-04-29
url: "https://www.armosec.io/blog/ebpf-reverse-engineering-programs/"
title: "Reverse Engineering eBPF Programs: A Deep Dive"
tags: [source, ebpf, reverse-engineering, security, kernel]
source: unknown
---

# Reverse Engineering eBPF Programs: A Deep Dive

**Author:** ARMO security team
**URL:** https://www.armosec.io/blog/ebpf-reverse-engineering-programs/

## Summary

A deep dive into eBPF internals and reverse engineering eBPF-based programs, using a real-world rootkit (exechijack from bad-bpf project) as the target. Covers eBPF instruction set, registers, verifier constraints, helper functions, maps, and the process of loading programs into the kernel. Demonstrates step-by-step bytecode analysis using llvm-objdump to reconstruct the rootkit's logic: intercepting execve, overwriting program names, and logging via ring buffer.

## Key Takeaways

1. **eBPF architecture**: Runs JIT-compiled in kernel space with its own instruction set (10 general-purpose 64-bit registers + read-only frame pointer). Sandboxed by a verifier before loading.
2. **Verifier constraints**: Ensures safety — no unbounded loops, bounded memory access, all paths must exit. This shapes code patterns that look unusual in reverse engineering.
3. **Instruction encoding**: 64-bit instruction + 32-bit immediate. Three LSBs of opcode field store instruction class (ALU, JMP, LD, ST, etc.).
4. **Loading via bpf() syscall**: `BPF_PROG_LOAD` command with program bytecode, license, and section info. Maps created via same syscall with different commands.
5. **Maps are key-value stores**: Global kernel objects for state persistence, user-kernel communication. Stack limited to 512 bytes, so maps hold overflow data.
6. **Security concern**: Any process with CAP_SYS_ADMIN/CAP_SYS_BPF can access and modify maps, enabling bypass of eBPF-based security tools (Falco, Tracee).
7. **SEC() macro**: Each function decorated with SEC() becomes a separate program in its own ELF section, attached to specific hooks (tracepoints, kprobes, uprobes, LSM hooks).
8. **BPF_CORE_READ**: Macro for safely reading kernel struct fields across version changes (CO-RE = Compile Once, Run Everywhere).
9. **Rootkit analysis**: exechijack intercepts sys_enter_execve, checks PPID, reads program name via bpf_probe_read_user, overwrites first 2 chars with "/a", logs via ring buffer.
10. **Helper functions**: Predefined kernel APIs (bpf_get_current_pid_tgid, bpf_probe_read_user, bpf_probe_write_user, bpf_ringbuf_reserve/submit). Can't freely call kernel functions like kernel modules.

## Entities Mentioned

- **ARMO** — Cloud security company, authors of Kubescape
- **pathtofile** — Author of bad-bpf rootkit project
- **Cloudflare** — Company using eBPF extensively for routing/tracing
- **Falco / Tracee** — eBPF-based runtime security tools

## Concepts Mentioned

- [[ebpf]] — Extended Berkeley Packet Filter, kernel programmability
- [[ebpf-verifier]] — Static analysis ensuring eBPF program safety
- [[ebpf-maps]] — Key-value stores for eBPF state
- [[ebpf-helper-functions]] — Predefined kernel APIs for eBPF programs
- [[bpf-core-read]] — Cross-kernel-version struct field reading
- [[ring-buffer]] — Efficient kernel-to-user communication for eBPF
- [[tracepoints]] — Static kernel instrumentation points
- [[kprobes]] — Dynamic kernel function probes
- [[bpf-probe-write-user]] — Overwriting user-space memory from eBPF (rootkit technique)
- [[co-re]] — Compile Once, Run Everywhere for eBPF portability

## Raw Notes

- eBPF registers: R0 (return), R1-R5 (scratch/args), R6-R9 (callee-saved), R10 (read-only frame pointer)
- Helper function indices map to bpf_func_proto enum
- exechijack rootkit flow: get pid_tgid → check PPID match → read prog_name from execve arg[0] → overwrite with "/a" → log to ring buffer
- BPF_MAP_TYPE_RINGBUF: modern replacement for perf buffers, supports multi-producer
- Stack limit (512 bytes) forces creative memory management in eBPF programs
- Verifier path complexity has led to multiple CVEs over the years
- readelf -S shows ELF sections corresponding to SEC() decorated functions

## Questions / Follow-ups

- How do eBPF-based security tools detect and prevent map tampering?
- What are the latest verifier bypass techniques?
- How does Cilium's eBPF-based networking compare to traditional iptables?
