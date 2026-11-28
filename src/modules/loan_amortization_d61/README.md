# Recursive CTE Fixed-Payment Loan Amortization Schedule Rollup (`loan_amortization_d61`)

> Category: **Financial Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Expands a fixed-rate loan into a month-by-month balance schedule charging integer-basis-point interest and subtracting the level payment until the balance retires.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(M) recursive common table expression over monthly periods` |
| **Space Complexity** | `O(M)` |

## Mathematical & Safety Invariants

- Every scheduled balance stays non-negative and the terminal balance reaches exactly zero.

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
