# Interpolated Quantiles & Empirical CDF (`percentile_ntile_deciles`)

> Category: **Analytical Statistics SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Linear-interpolated Type-7 empirical quantiles (P50 median, P90, P95) alongside exact CUME_DIST and NTILE(10) decile bucketing.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N)` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- every observation CUME_DIST lies strictly inside (0.0, 1.0]
- quantile monotonicity holds: min_val <= p50 <= p90 <= p95 <= max_val
- symmetric odd-length arithmetic progression yields exact midpoint P50

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
