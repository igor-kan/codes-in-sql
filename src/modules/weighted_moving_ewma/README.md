# Recursive CTE Exponentially Weighted Moving Average (EWMA) (`weighted_moving_ewma`)

> Category: **Time-Series Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes exact stateful Exponentially Weighted Moving Average s_t = alpha * x_t + (1 - alpha) * s_{t-1} via SQLite WITH RECURSIVE over partitioned time series without external procedural code.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) ordered recursive recurrence per partition` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- EWMA at t = 1 initializes strictly to x_1 for every series_id.
- Smoothed EWMA trajectories stay strictly bounded inside [min(x), max(x)] of each series.

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
