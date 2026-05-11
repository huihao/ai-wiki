---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Cabinet Archives

## Definition
Cabinet archives (.cab files) is a Microsoft-developed file compression and packaging format used in the Wii game "Tales of Symphonia: Dawn of the New World" to bundle game script data. During reverse engineering of the game's bytecode interpreter, the .cab format was identified as the container format storing Script Object (.so) files containing the game's TSS bytecode for character conversation "skits."

## Key Aspects
- **Microsoft Cabinet format**: A legacy compression format (.cab) originally designed for Windows installer distribution, with support for LZX and MSZIP compression algorithms
- **Game data packaging**: The Wii game used .cab archives to bundle multiple Script Object files, with language-specific subdirectories (e=English, g=German, f=French, s=Spanish, i=Italian)
- **Discovery via file monitoring**: The .cab format was identified by using the Dolphin emulator's file monitor to observe which files the game accessed during skit playback, then extracting and inspecting the archive contents
- **Script Objects (.so)**: Files within the .cab archive are not shared objects but "Script Objects" containing compiled bytecode with a `TSS\0` magic header
- **Reverse engineering context**: The cabinet archive format was a key step in the chain from identifying game data files to extracting the bytecode that the custom interpreter executed
- **Extraction tools**: Standard cabinet extraction tools (like 7-Zip or cabextract) can decompress .cab archives to access the enclosed script objects

## Related Concepts
- [[bytecode-interpreter]] -- the virtual machine that executes scripts from cabinet archives
- [[dynamic-analysis]] -- the runtime debugging technique used to identify cabinet archive usage
- [[reverse-engineering-wii-script-interpreter]] -- the full walkthrough where cabinet archives were encountered

## Sources
- [[reverse-engineering-wii-script-interpreter]]
