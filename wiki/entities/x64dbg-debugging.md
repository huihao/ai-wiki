---
created: 2026-04-29
updated: 2026-04-29
tags: [reverse-engineering, security, tool]
---

# x64dbg Debugging

x64dbg is an open-source x64/x32 debugger for Windows, widely used in malware analysis and reverse engineering. It provides a GUI for stepping through assembly instructions, setting breakpoints, inspecting memory, and analyzing running processes. Key features for malware analysis include the ability to set API breakpoints (e.g., on VirtualAlloc), step over/into functions, view register states, dump memory regions, and follow memory in the dump window.

## Core Operations
- **Step Into (F7)**: enter a called function and execute its instructions
- **Step Over (F8)**: execute a called function without entering it
- **Run (F9)**: continue execution until next breakpoint
- **Breakpoints**: pause execution at specific addresses or API calls
- **Memory Map**: view all memory regions with their permissions (R/W/X)
- **Dump**: inspect raw memory contents at any address

## Related
- [[how-to-unpack-malware-with-x64dbg]]
- [[malware-unpacking]]
