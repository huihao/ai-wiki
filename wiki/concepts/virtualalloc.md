---
created: 2026-04-29
updated: 2026-04-29
tags: [memory-management, security, windows]
sources: 1
---
# VirtualAlloc

## Definition

VirtualAlloc is a Windows API function that reserves or commits a region of pages in the virtual address space of the calling process. It is commonly used in malware development to allocate executable memory for payloads and avoid traditional memory allocation patterns.

## Key Concepts

- VirtualAlloc can allocate memory with specific page protections: PAGE_EXECUTE_READWRITE (RWX) for executable code
- MEM_COMMIT allocates physical storage (RAM or paging file); MEM_RESERVE only reserves address space
- Memory allocation through VirtualAlloc avoids the heap, which is monitored by many AV solutions
- Heap allocations from malloc/new can be detected through heap integrity checks and metadata analysis
- VirtualProtect can change page protections after allocation, allowing write-then-execute patterns
- The NX (No-Execute) bit / DEP (Data Execution Prevention) prevents execution in non-executable memory
- BYPASS_DEP requires RWX allocation or ROP (Return-Oriented Programming) techniques
- VirtualFree is used to release allocated memory when it is no longer needed
- Memory scanning tools (Process Explorer, Process Hacker) can inspect allocated memory regions

## Related Concepts

- [[malware-development]]
- [[shellcode]]
- [[obfuscation]]

## Sources

- [[malware-development-part-1-basics]]
