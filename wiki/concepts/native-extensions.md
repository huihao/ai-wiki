---
created: 2026-04-29
updated: 2026-05-09
tags: []
sources: 1
---

# Native Extensions

## Definition

Native extensions are modules written in compiled languages (C, C++, Rust) that integrate with higher-level languages like Python to provide performance-critical functionality that pure interpreted code cannot efficiently deliver. In the Python ecosystem, C++ addons (built via setuptools or pybind11) are the standard mechanism for exposing compiled code to Python applications.

## Key Aspects

- **Performance bridging**: Native extensions overcome Python's interpretive overhead for computationally intensive operations like matrix multiplication and data processing
- **C++ addons in Python**: The standard mechanism for creating Python modules in C++, using Python's C API or wrapper libraries like pybind11
- **Build system integration**: Extensions are compiled during package installation using setup.py, pyproject.toml, or meson build configurations
- **Type safety**: Compiled extensions provide stronger type guarantees than pure Python, catching errors at compile time rather than runtime
- **Binary distribution challenges**: Native extensions create platform-specific binaries, complicating distribution across operating systems and Python versions
- **Common use cases**: NumPy's core arrays, PyTorch tensor operations, database drivers, image processing, and cryptography
- **Alternative approaches**: Cython, Numba JIT compilation, and ctypes/cffi offer intermediate options between pure Python and full C++ extensions
- **Maintenance burden**: Native code requires compilation toolchains, testing across platforms, and careful ABI compatibility management

## Related Concepts

- [[python-c-api]]
- [[pybind11]]
- [[performance-optimization]]
- [[cython]]

## Sources

- [[cpp-addons]]
