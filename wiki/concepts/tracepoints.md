---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Tracepoints

## Definition

Tracepoints are static instrumentation points built into the Linux kernel that allow eBPF programs and tracing tools to capture system state (syscall entry/exit, scheduler events, block I/O) without modifying kernel source code, providing a stable and low-overhead interface for observability and security monitoring.

## Key Aspects

- Tracepoints are defined at specific locations in the kernel source using the `TRACE_EVENT` macro, creating a stable ABI that survives kernel version updates (unlike kprobes which are fragile).
- In eBPF programs, tracepoints are attached via the `SEC()` macro in sections such as `tp/syscalls/sys_enter_execve` for syscall tracing.
- They fire synchronously when the kernel executes the corresponding code path, allowing eBPF programs to inspect arguments, context, and return values.
- Common tracepoint categories include syscalls (sys_enter/sys_exit), scheduling (sched_switch, sched_wakeup), block I/O (block_rq_issue, block_rq_complete), and network events.
- The eBPF rootkit analysis example (exechijack) demonstrates tracepoints in action: the program hooks `sys_enter_execve` to intercept process execution, read the program name, and modify it for evasion.
- Tracepoints differ from kprobes (dynamic, function-level) and uprobes (user-space); tracepoints are the most stable and recommended approach for production tracing.
- Tools like bpftrace, perf, and Falco heavily rely on tracepoints for system-wide observability.

## Related Concepts

- [[ebpf]] -- the programmability layer that typically consumes tracepoint data
- [[kprobes]] -- dynamic kernel probes as an alternative to static tracepoints
- [[bpf-core-read]] -- macro for safely reading kernel structs across versions when using tracepoints

## Sources

- [[reverse-engineering-ebpf-programs]]
