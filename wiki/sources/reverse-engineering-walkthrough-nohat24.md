---
created: 2026-04-29
updated: 2026-04-29
url: "https://www.hacktivesecurity.com/blog/2024/11/04/a-reverse-engineering-walkthrough-journey/"
title: "A Reverse Engineering Walkthrough Journey"
tags: [source, reverse-engineering, ctf, binary-analysis]
source: unknown
---

# A Reverse Engineering Walkthrough Journey

**Author:** Alessandro Groppo (Hacktive Security)
**Published:** November 4, 2024
**URL:** https://www.hacktivesecurity.com/blog/2024/11/04/a-reverse-engineering-walkthrough-journey/
**Context:** NoHat24 security conference CTF challenge

## Summary

A beginner-friendly, step-by-step walkthrough of reverse engineering a statically-linked, stripped x86-64 C++ binary implementing a custom TCP protocol. The challenge involves reconstructing function signatures from syscall numbers, building custom struct definitions in Ghidra, and understanding an XOR-encrypted command protocol with stat/read/write operations.

## Key Takeaways

1. **Statically linked + stripped = harder RE**: No dynamic library symbols, no function names. Must reconstruct from syscall numbers and string references.
2. **Syscall-based function identification**: Check `MOV EAX, <number>` before `SYSCALL` instruction to identify libc functions (0x2b=accept, 0x106=newfstatat, etc.).
3. **String-guided analysis**: Log messages ("Failed to create socket", "Accept failed") provide hints about function purpose, confirmed via syscall numbers.
4. **Struct reconstruction**: Iteratively refine Ghidra structs by tracking field access patterns, casts, and sizes. Start with magic values, then add fields as their purpose becomes clear.
5. **Custom TCP protocol**: Magic value 0xff66 header, command byte at offset 0x2, size at offset 0x6, payload starting at offset 0x8.
6. **XOR encryption scheme**: Command 0x10 sets a session key derived from a calculated value; Command 0x20 uses that key to XOR-decrypt message chunks.
7. **Three commands**: stat (check file existence), read (read file with offset), write (not implemented).
8. **Exploit**: Initialize session → get XOR key → encrypt read command for /home/pwnx/flag.txt → receive flag.
9. **IDA FLIRT / Ghidra ApplySig**: Alternative approach for identifying statically-linked libc functions using function signatures.

## Entities Mentioned

- **Alessandro Groppo** — RE researcher at Hacktive Security
- **Hacktive Security** — Security research company
- **NoHat24** — Security conference where challenge was presented
- **pwnx.io** — CTF platform

## Concepts Mentioned

- [[static-analysis]] — Examining binary without execution
- [[dynamic-analysis]] — Runtime debugging (GDB)
- [[syscall-numbers]] — Mapping EAX values to libc functions
- [[struct-recovery]] — Reconstructing data structures from binary analysis
- [[xor-encryption]] — Simple symmetric encryption used in protocol
- [[ctf-challenges]] — Capture The Flag security challenges
- [[ghidra]] — NSA's open-source reverse engineering tool

## Raw Notes

- Binary: ELF 64-bit LSB, x86-64, statically linked, stripped
- Port 81 (0x51) TCP server, AF_INET socket
- Custom struct layout: magic(2B) + undefined(4B) + size(2B) + payload(254B)
- command_0x10: validates xor_key_derivate (0x100-0x900 range), generates random XOR key via modular arithmetic
- command_0x20: parses up to 3 length-prefixed chunks, XOR-decrypts each, dispatches to stat/read/write
- Fun fact: payload[-2] access revealed struct members were misaligned; fixed by extending payload array

## Questions / Follow-ups

- How does the binary exploitation challenge (part 2) work with the custom allocator?
- What is the "store_and_get" function's internal hash table implementation?
- How does the session key derivation resist brute-force?
