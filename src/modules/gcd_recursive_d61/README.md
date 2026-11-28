# Recursive Euclidean Greatest Common Divisor Residual Chain (`gcd_recursive_d61`)

> Category: **Number Theory Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Expands each integer pair into its Euclidean remainder chain until the zero remainder and reports the final non-zero residual as the greatest common divisor.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log min(A, B)) recursive common table expression` |
| **Space Complexity** | `O(log min(A, B))` |

## Mathematical & Safety Invariants

- Every reported divisor divides both inputs and exactly one result is produced per input pair.

## Module Architecture

| File | Lifecycle Role |
| :--- | :--- |
| `schema.sql` | Stage 01 |
| `errors.sql` | Stage 02 |
| `views.sql` | Stage 03 |
| `core.sql` | Stage 04 |
| `validation.sql` | Stage 05 |
| `fast_path.sql` | Stage 06 |
| `concurrent.sql` | Stage 07 |
| `invariants.sql` | Stage 08 |
| `unit_tests.sql` | Stage 09 |
| `property_tests.sql` | Stage 10 |
| `benchmark.sql` | Stage 11 |
| `README.md` | Stage 12 |

## Verification & Execution Example

```text
cat schema.sql errors.sql views.sql core.sql validation.sql fast_path.sql concurrent.sql invariants.sql unit_tests.sql property_tests.sql benchmark.sql | sqlite3 :memory:
```

---
© 2026 Igor Kan
