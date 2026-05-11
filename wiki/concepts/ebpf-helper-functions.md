---
created: 2026-04-29
updated: 2026-05-09
tags: [ebpf, kernel, security]
sources: 1
---

# eBPF Helper Functions

## Definition

eBPF helper functions are predefined kernel APIs that eBPF programs can call to interact with the kernel in a safe, sandboxed manner. Unlike kernel modules, eBPF programs cannot freely call arbitrary kernel functions; instead they are restricted to an approved set of helpers whose indices map to the `bpf_func_proto` enum. This constraint is enforced by the eBPF verifier before any program is loaded into the kernel.

## Key Aspects

- Helpers serve as the sanctioned interface between eBPF programs and the kernel — the only way to perform privileged operations such as reading user-space memory, writing output, or querying system state
- Common helpers include: `bpf_get_current_pid_tgid`, `bpf_probe_read_user`, `bpf_probe_write_user`, `bpf_ringbuf_reserve`, `bpf_ringbuf_submit`
- Each helper is assigned a numeric index that maps to a specific entry in the kernel's `bpf_func_proto` function pointer table
- The verifier statically resolves helper calls at load time, checking argument types and return values against expected signatures
- Helpers enable eBPF programs to perform operations like intercepting syscalls, reading kernel structures, writing to user memory (used by rootkits like exechijack), and communicating via ring buffers
- The restricted helper set is a deliberate security design: limiting the API surface reduces the attack surface of kernel-resident code

## Related Concepts

- [[ebpf-verifier]]
- [[ebpf-maps]]
- [[ring-buffer]]

## Sources

- [[reverse-engineering-ebpf-programs]]
