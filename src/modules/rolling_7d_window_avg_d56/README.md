# Bounded ROWS Frame Moving Average Window (`rolling_7d_window_avg_d56`)

> Category: **Time-Series SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Evaluates 3-period causal moving sums and averages using explicit ROWS BETWEEN 2 PRECEDING AND CURRENT ROW window boundaries.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) ordered frame scan` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Windowed moving average lies between frame minimum and maximum metric values.

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
