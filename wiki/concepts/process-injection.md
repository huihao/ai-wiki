---
created: 2026-04-29
updated: 2026-04-29
tags: [memory, reverse-engineering, security]
---

# Process Injection

Process injection is a technique where a running process writes code into the memory space of another process (often a child process it creates) and executes it. Malware commonly uses process injection to unpack itself: the packed parent creates a child process, allocates memory in it with VirtualAlloc, copies the unpacked malicious code into that memory, and executes it. This allows the malware to run its true payload while the original packed file on disk appears inert.

## Common Variants
- Classic DLL injection
- Process hollowing (creating suspended process, replacing its memory)
- Reflective DLL loading
- AtomBombing

## Related
- [[malware-unpacking]]
- [[how-to-unpack-malware-with-x64dbg]]
