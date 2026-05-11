---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# BPF_PROBE_WRITE_USER

## Definition
BPF_PROBE_WRITE_USER is an eBPF helper function that allows eBPF programs running in kernel space to write directly into user-space memory of the traced process. This is a powerful but dangerous capability primarily used in rootkits and advanced tracing tools to modify the behavior of user-space programs by intercepting and altering data at the kernel boundary.

## Key Aspects
- **User-space memory modification**: Enables an eBPF program to overwrite memory belonging to a user-space process, effectively altering what that process reads or does
- **Rootkit technique**: The exechijack rootkit uses this to intercept `sys_enter_execve`, read the program name from the execve argument, and overwrite the first two characters with "/a", disguising the process name
- **Dangerous by design**: Writing to user-space memory from kernel space can cause crashes, data corruption, and security vulnerabilities; the eBPF verifier restricts its use
- **Security implications**: Any process with CAP_SYS_ADMIN or CAP_SYS_BPF capability can load eBPF programs that use this helper, potentially bypassing security tools (Falco, Tracee) that rely on eBPF for monitoring
- **Verifier constraints**: The verifier allows BPF_PROBE_WRITE_USER only in specific contexts (tracing programs), requires careful bounds checking, and may restrict it further in hardened kernels
- **Detection**: Security tools must monitor for unexpected eBPF programs using this helper, as legitimate use is rare outside of advanced tracing scenarios

## Related Concepts
- [[bpf-core-read]] -- the read-side counterpart for safely reading kernel structs
- [[ebpf]] -- the programmable kernel framework providing this capability
- [[ring-buffer]] -- the complementary mechanism for kernel-to-user communication (output, not modification)

## Sources
- [[reverse-engineering-ebpf-programs]]
