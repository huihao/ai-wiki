---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# CTF Challenges

## Definition

Capture The Flag (CTF) challenges are competitive cybersecurity exercises where participants exploit vulnerabilities, reverse engineer binaries, or analyze systems to find hidden flags (secret strings). They are the primary training ground for developing practical skills in binary exploitation, reverse engineering, cryptography, and web security.

## Key Aspects

- Static CTF challenges involve analyzing binaries without executing them, requiring reverse engineering skills with tools like Ghidra and IDA Pro
- Statically linked and stripped binaries are common targets: no dynamic library symbols, no function names must be reconstructed from syscall numbers and string references
- Syscall-based function identification is key: checking EAX values before SYSCALL instructions maps to libc functions (0x2b = accept, 0x106 = newfstatat)
- Custom protocol challenges often involve reconstructing struct layouts through iterative field access tracking
- XOR encryption schemes and session key derivation are common obfuscation techniques in network protocol challenges
- String-guided analysis uses log messages and error strings to identify function purposes, confirmed through syscall number correlation
- Tools used: Ghidra (NSA's open-source RE tool), IDA Pro with FLIRT signatures, GDB for dynamic analysis

## Related Concepts

- [[disassembly]]
- [[reverse-engineering]]
- [[static-analysis]]
- [[dynamic-analysis]]
- [[binary-exploitation]]
- [[ghidra]]

## Sources

- [[reverse-engineering-walkthrough-nohat24]]
