# Proper Divisor Sum Sigma Enumeration and Perfect-Number Detection (`divisor_sigma_d61`)

> Category: **Number Theory Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Enumerates every integer strictly below each input as a proper-divisor candidate, accumulates the exact divisors, and sums them into the classical sigma function.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) recursive divisor candidate enumeration per input` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- The proper-divisor sum never exceeds n * (n - 1) / 2 and is zero only for the unit input.

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
