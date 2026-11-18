# Time-Bucketed Open/High/Low/Close (OHLC) Candlestick Aggregator (`ohlc_candlestick_rollup`)

> Category: **Financial Time Series** | Language: **SQL (ANSI / SQLite3)**

## Overview

Rolls tick-level trade executions into fixed-width time bars emitting exact Open, High, Low, Close prices and total traded volume per bucket.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) partitioned FIRST_VALUE / LAST_VALUE window framing` |
| **Space Complexity** | `O(B)` |

## Mathematical & Safety Invariants

- Every bar satisfies low_px <= open_px <= high_px and low_px <= close_px <= high_px.

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
