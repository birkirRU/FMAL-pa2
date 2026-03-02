# AGENTS.md

## Project Overview

This is a Scheme programming assignment (FMAL - Functional and Logic Programming course). The project contains two `.scm` files with Scheme implementations of various functional programming exercises.

## Build/Lint/Test Commands

### Running Scheme Code

```bash
# Run a Scheme file interactively with MIT Scheme
mit-scheme --load a2problem1.scm

# Run with quiet mode
mit-scheme --quiet --load a2problem1.scm

# Run non-interactively
echo "(display (countdown 5))" | scheme --silent
```

### Running a Single Test/Function

To test a specific function, you can either:
1. Edit the `.scm` file to uncomment test expressions at the bottom
2. Run interactively:

```bash
# Run mit-scheme interactively
mit-scheme
; Then load file:
(load "a2problem1.scm")
; Test functions:
(countdown 5)
(remove-every-second '(a b c d))
(insert-at '(a b c d) 3 'z)
```

### Available Executables

- `scheme` - MIT Scheme interpreter
- `mit-scheme` - MIT Scheme interpreter (preferred)

## Code Style Guidelines

### General Principles

- Write functional code using recursion instead of iteration
- Use Scheme's built-in procedures (`car`, `cdr`, `cons`, `list`, `map`, `cond`, etc.)
- Keep functions small and focused on a single task

### Naming Conventions

- Use **kebab-case** for function names: `countdown`, `remove-every-second`, `insert-at`
- Use descriptive names that reflect the function's purpose
- Helper functions typically start with underscore: `_res`, `_ia`, `_split`

### Formatting

- Opening parenthesis for `define` on same line as function name
- Closing parenthesis on its own line for multi-line functions
- Add spaces around operators and after commas in lists
- Example:

```scheme
(define (countdown n)
  (if (= n 1) (list 1)
    (cons n (countdown (- n 1)))
  ))
```

### Code Organization

- Put main function first, helper functions after
- Use comment blocks to separate problems/sections (e.g., `; 1.`, `; a) Countdown`)
- Uncomment test expressions at the bottom of each file for verification
- Document what each function does with comments

### Error Handling

- Use `cond` for multiple conditional branches
- Return appropriate empty values (`'()`) for base cases
- Validate inputs at the start of functions when needed
- Use guard clauses (early returns) for invalid inputs

### Types

- Scheme is dynamically typed; no type annotations needed
- Use appropriate predicates: `null?`, `pair?`, `list?`, `eqv?`, `=`, `equal?`
- Be explicit with quote (`'`) for literal data: `'()`, `'(a b c)`, `#t`, `#f`

### Common Patterns

**Recursion pattern:**
```scheme
(define (main-fn args)
  (if (base-case?) base-value
    (combine (first-element) (main-fn (rest-elements)))
  ))
```

**Helper function pattern:**
```scheme
(define (public-fn args)
  (helper-fn args initial-state))

(define (helper-fn args state)
  ; recursive helper with accumulated state
  )
```

**Let binding pattern:**
```scheme
(let
  ((var1 value1)
   (var2 value2))
  ; body using var1 and var2
  )
```

### Testing

- Uncomment test expressions at the bottom of each `.scm` file
- Test edge cases: empty lists, single element, first/last positions
- Verify base cases work correctly

## File Structure

```
/home/birki/vor_2026/fmal/a2/
├── README.md           # Project README (minimal)
├── a2problem1.scm     # Problem 1 implementations
└── a2problem2.scm     # Problem 2 implementations
```

## Important Notes

- This is a course assignment with no CI/CD or automated testing
- Code is run manually using MIT Scheme interpreter
- Follow the existing code style in the `.scm` files
