# Three-Tick Partitioned Window Frame VWAP Market Microstructure View (`rolling_vwap_d60`)

> Category: **Financial Time Series** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes Volume-Weighted Average Price across trailing 3-trade windows per ticker symbol using SQL window frames.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) ROWS BETWEEN 2 PRECEDING AND CURRENT ROW aggregation` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Trailing VWAP lies strictly between rolling min price and rolling max price.

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
