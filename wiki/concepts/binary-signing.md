---
created: 2026-04-29
updated: 2026-04-29
tags: [authentication, code-signing, security]
sources: 1
---
# Binary Signing

## Definition

Binary signing is the process of digitally signing executables and scripts to confirm the software author and guarantee that the code has not been altered or corrupted since it was signed. It uses cryptographic signatures (typically X.509 certificates) to establish trust and authenticity.

## Key Concepts

- Code signing uses public-key cryptography: the developer signs with a private key, systems verify with the public key
- Authenticode is Microsoft's code signing technology for Windows executables and drivers
- Self-signed certificates are free but trigger SmartScreen warnings; CA-signed certificates provide trust
- EV (Extended Validation) code signing certificates provide immediate SmartScreen reputation
- Signing prevents tampering: any modification invalidates the signature
- Timestamping ensures the signature remains valid after the certificate expires
- The signing process requires a Certificate Signing Request (CSR) and interaction with a Certificate Authority
- Some malware attempts to use stolen or forged certificates to appear legitimate
- Driver signing enforcement (DSE) on Windows 64-bit requires all kernel-mode drivers to be signed

## Related Concepts

- [[malware-development]]
- [[obfuscation]]
- [[virtualalloc]]

## Sources

- [[malware-development-part-1-basics]]
