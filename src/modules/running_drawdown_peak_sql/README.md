# Cumulative High-Water Mark & Maximum Portfolio Drawdown Window (`running_drawdown_peak_sql`)

> Category: **Quantitative Risk** | Language: **SQL (ANSI / SQLite3)**

## Overview

Tracks cumulative peak portfolio NAV via running window maxima and computes point-in-time fractional drawdown and worst peak-to-trough drawdown.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) unbounded-preceding MAX window & drawdown curve` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Drawdowns remain strictly non-positive <= 0.0 and reach exact -0.25 on 120->90 drop.

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
