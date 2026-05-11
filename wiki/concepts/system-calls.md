---
created: 2026-04-29
updated: 2026-04-29
tags: [kernel, linux, operating-systems]
sources: 1
---
# System Calls

## Definition

System calls are the interface between user-space applications and the operating system kernel, providing access to hardware resources, file systems, process management, and networking. On Linux x86-64, system calls use the syscall instruction with the call number in rax.

## Key Concepts

- On Linux x86-64, syscall number goes in rax; arguments in rdi, rsi, rdx, r10, r8, r9; return value in rax
- Common system calls: read (0), write (1), open (2), close (3), mmap (9), brk (12), exit (60)
- r10 is used instead of rcx for the 4th argument because syscall clobbers rcx with the return address
- System calls transition from ring 3 (user mode) to ring 0 (kernel mode), incurring context switch overhead
- The vDSO (virtual dynamic shared object) allows user-space access to some kernel data (e.g., gettimeofday) without a system call
- strace is the standard tool for tracing system calls made by a process
- Linux is the only mainstream OS with a stable userland ABI (system call numbers never change)
- seccomp-BPF allows filtering system calls for sandboxing and security
- Modern kernels cache file system state in the page cache to minimize actual disk I/O system calls

## Related Concepts

- [[x86-64-assembly]]
- [[system-v-abi]]
- [[elf-format]]
- [[nasm-assembler]]

## Sources

- [[x86-64-assembly-gui]]
- [[x86re]]
