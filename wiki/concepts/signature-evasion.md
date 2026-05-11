---
created: 2026-04-29
updated: 2026-04-29
tags: [anti-analysis, evasion, security]
sources: 1
---
# Signature Evasion

## Definition

Signature evasion refers to techniques used to avoid detection by antivirus and endpoint detection systems that rely on known malware signatures (byte patterns, behavioral heuristics, or hash-based matching).

## Key Concepts

- AV engines use static analysis (signature matching) and dynamic analysis (behavioral monitoring) to detect malware
- Polymorphic malware changes its binary signature with each infection using variable-length encryption keys
- Metamorphic malware rewrites its own code while preserving functionality, changing instruction sequences
- Encryption with unique keys ensures each sample produces a different file hash (MD5, SHA-256)
- Code obfuscation makes reverse engineering harder without changing functionality
- Fileless malware lives only in memory, avoiding file-based signature detection entirely
- Signature evasion must be combined with behavior evasion to bypass EDR solutions
- The 0xPat tutorial demonstrates creating a custom AV scanner to understand detection from the defender's perspective
- Testing against VirusTotal (with awareness of AV vendor sharing) is essential for developing evasion techniques

## Related Concepts

- [[malware-development]]
- [[shellcode]]
- [[obfuscation]]

## Sources

- [[malware-development-part-1-basics]]
