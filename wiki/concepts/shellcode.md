---
created: 2026-04-29
updated: 2026-04-29
tags: [assembly, exploitation, security]
sources: 1
---
# Shellcode

## Definition

Shellcode is a small piece of position-independent machine code, typically used as a payload in software exploits. It is called "shellcode" because it traditionally spawns a shell, but can perform any system-level operation.

## Key Concepts

- Shellcode must be position-independent (PIC) since the injection address is unknown at compile time
- Avoids null bytes (0x00) since many exploits use null-terminated strings as input
- On x86-64, shellcode uses relative addressing and avoids absolute addresses
- Common shellcode actions: spawning a shell, establishing a reverse connection, downloading and executing files
- Syscalls are the primary interface for shellcode to interact with the operating system
- Shellcode is typically injected via buffer overflow, format string, or code injection vulnerabilities
- Polymorphic shellcode changes its encoding with each instance to evade signature detection
- Metasploit provides a comprehensive framework for generating and testing shellcode payloads

## Related Concepts

- [[malware-development]]
- [[signature-evasion]]
- [[obfuscation]]
- [[binary-signing]]
- [[virtualalloc]]

## Sources

- [[malware-development-part-1-basics]]
