# Recursive Exact EWMA Exponential Moving Average Filter in SQL (`exponential_ewma_alpha_sql`)

> Category: **Time-Series Smoothing** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes exact first-order exponential weighted moving average sequentially across ordered timestamps using a recursive CTE.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) ordered step recursion y_t = alpha * x_t + (1 - alpha) * y_{t-1}` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Step-1 EWMA converges accurately for constant step inputs and tracks step jumps smoothly.

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
