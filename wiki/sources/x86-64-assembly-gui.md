---
created: 2026-04-29
updated: 2026-04-29
tags: [source, assembly, x86-64, x11, gui, nasm, systems]
sources: 1
url: "https://gaultier.github.io/blog/x11_x64.html"
title: "Learn x86-64 Assembly by Writing a GUI from Scratch"
---

# Learn x86-64 Assembly by Writing a GUI from Scratch

## Summary

A hands-on tutorial demonstrating how to write a complete GUI application in x86-64 assembly using NASM and the X11 protocol, achieving a binary size of around 1 KiB. The article builds from a minimal exit program through system calls, stack operations, socket communication, and X11 protocol messages to create a functioning GUI window, challenging the assumption that assembly is only for toy programs.

## Key Takeaways

- Assembly programs can produce remarkably small binaries -- the final GUI application is around 1 KiB compared to 30+ MiB for typical modern programs
- The X11 protocol is a network-accessible server protocol for windowing and rendering, communicating over sockets with messages in a specific format
- System calls on Linux use the System V ABI: syscall number in rax, up to 6 parameters in rdi, rsi, rdx, r10, r8, r9, with r10 used instead of rcx for the 4th parameter
- The stack must be kept 16-byte aligned before function calls; the call instruction pushes 8 bytes (return address), so alignment is 16*N + 8
- NASM uses Intel syntax: `instruction destination, source`
- Functions follow a prologue (push rbp; mov rbp, rsp) and epilogue (leave; ret) pattern
- Cross-compilation between Unix systems requires only changing syscall number values, making assembly surprisingly portable
- The `-static` linker flag and `-g` debug flag are important for assembly development

## Entities Mentioned

- None specific (educational tutorial by gaultier)

## Concepts Mentioned

- [[x86-64-assembly]] -- 64-bit assembly language for x86 processors
- [[x11-protocol]] -- X Window System protocol for GUI windowing
- [[system-calls]] -- interface between user programs and the operating system kernel
- [[nasm-assembler]] -- Netwide Assembler, a cross-platform x86 assembler
- [[system-v-abi]] -- calling convention for Unix-like operating systems
- [[elf-format]] -- Executable and Linkable Format for Unix binaries

## Raw Notes

- Uses strace to observe system calls made by the program
- Discusses the difference between Intel and AT&T assembly syntax
- Notes that Linux is the only mainstream OS with a stable userland ABI
- Authentication in X11 is optional but some servers like XWayland require it
- The tutorial is approachable for beginners while covering real systems programming concepts
