---
created: 2026-04-29
updated: 2026-04-29
tags: [source, book, go-programming, tdd, testing, beginner]
sources: 1
url: "https://quii.gitbook.io/learn-go-with-tests/go-fundamentals/hello-world"
title: "Hello, World | Learn Go with Tests"
---

# Hello, World | Learn Go with Tests

## Summary
Chris James's "Learn Go with Tests" opens with a classic Hello World tutorial that doubles as an introduction to test-driven development (TDD) in Go. Starting from a simple print function, the chapter iteratively adds features (name parameter, language support, default fallback) by writing failing tests first, making them pass, then refactoring, demonstrating the full TDD cycle while teaching Go fundamentals like functions, constants, subtests, and the switch statement.

## Key Takeaways
- TDD cycle: write a failing test, make it pass with minimal code, then refactor
- Separate domain logic from side effects (like fmt.Println) to make code testable
- Go's testing is built into the language: no external frameworks needed
- Subtests group related test scenarios and enable shared setup code
- t.Helper() marks helper functions so failure line numbers point to the calling test
- Constants capture meaning of values and can improve performance
- The compiler is your ally in statically typed languages: listen to its error messages
- Always commit working code before refactoring so you can revert if needed
- Write tests first (after the initial example) to ensure tests actually validate requirements

## Entities Mentioned
- [[chris-james]]

## Concepts Mentioned
- [[test-driven-development]]
- Go programming
- Go testing (`_test.go` files, `*testing.T`)
- subtests
- constants
- named return values
- Go modules (`go mod init`)
- switch statements
