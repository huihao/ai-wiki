---
created: 2026-04-29
updated: 2026-05-09
tags: [cryptography, security]
sources: 1
---

# XOR Encryption

## Definition

XOR encryption is a symmetric encryption technique that combines a plaintext byte with a key byte using the bitwise exclusive-or operation. It is one of the simplest forms of encryption, where applying the same XOR operation with the same key to ciphertext recovers the original plaintext, making it useful in protocol design, obfuscation, and as a building block for more complex ciphers.

## Key Aspects

- Symmetric operation: plaintext XOR key = ciphertext; ciphertext XOR key = plaintext. The same key both encrypts and decrypts.
- In practice, XOR encryption is vulnerable to known-plaintext attacks; it is used for obfuscation rather than strong security.
- Session-key XOR protocols: a key is derived or exchanged (e.g., via a handshake command), then used to XOR-decrypt individual message chunks in subsequent commands.
- Common in CTF (Capture The Flag) challenges and binary reverse engineering exercises, where protocols embed XOR-based command encryption.
- The XOR problem in neural networks is a separate concept referring to the non-linearly-separable classification task (see [[xor-problem]]).

## Related Concepts

- [[xor-problem]] -- the classic neural network classification challenge (distinct concept)
- [[reverse-engineering-walkthrough-nohat24|Reverse Engineering Walkthrough]]
- [[ghidra]] -- tool commonly used to identify XOR patterns in binaries

## Sources

- [[reverse-engineering-walkthrough-nohat24]]
