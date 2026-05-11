---
created: 2026-04-29
updated: 2026-04-29
tags: [graphics, networking, x-window-system]
sources: 1
---
# X11 Protocol

## Definition

The X11 (X Window System) protocol is a network-transparent protocol for graphical user interfaces on Unix-like operating systems, where the X server manages display hardware and client applications communicate with it via socket-based messages.

## Key Concepts

- X11 follows a client-server model: the X server manages display/input, clients send drawing requests
- Communication occurs over Unix domain sockets or TCP/IP, enabling remote GUI applications
- Messages have a specific binary format: 1-byte order, 1-byte opcode, 2-byte length, followed by data
- Authentication uses MIT-MAGIC-COOKIE-1 (128-bit shared secret) or XDM-AUTHORIZATION-1
- The protocol supports window management, input handling, and 2D rendering primitives
- XWayland provides X11 compatibility on Wayland compositors, requiring authentication
- Extensions (XInput, XRender, RandR) add functionality beyond the core protocol
- X11 is stateless from the client perspective; all state is maintained by the server
- Wayland is the modern replacement, simplifying the protocol but breaking backward compatibility

## Related Concepts

- [[x86-64-assembly]]
- [[system-calls]]

## Sources

- [[x86-64-assembly-gui]]
