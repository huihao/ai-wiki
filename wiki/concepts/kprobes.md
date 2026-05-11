---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Kprobes

## Definition

Kprobes (kernel probes) are a Linux kernel debugging mechanism that allows dynamic insertion of breakpoint-like probes at almost any instruction address in the kernel, enabling runtime inspection of kernel behavior without recompilation. In the context of eBPF and security research, kprobes serve as attachment points for eBPF programs that need to intercept and inspect kernel function calls.

## Key Aspects

- Allow eBPF programs to attach to nearly any kernel function entry or return, enabling dynamic instrumentation without kernel module loading
- Used by eBPF programs to intercept system calls (e.g., `sys_enter_execve`), read kernel data structures, and monitor security-relevant events
- The `SEC()` macro in eBPF programs decorates functions with section names specifying the hook type, including kprobes, tracepoints, and uprobes
- kprobe-based eBPF programs can read kernel memory via helper functions like `bpf_probe_read_user` and `bpf_probe_write_user`
- Security concern: any process with `CAP_SYS_ADMIN` or `CAP_SYS_BPF` can attach kprobes and potentially extract or modify sensitive kernel data
- Complement tracepoints (static instrumentation points) by providing dynamic, user-defined hook points wherever needed

## Related Concepts

- [[ebpf]]
- [[tracepoints]]
- [[reverse-engineering-ebpf-programs]]

## Sources

- [[reverse-engineering-ebpf-programs]]
