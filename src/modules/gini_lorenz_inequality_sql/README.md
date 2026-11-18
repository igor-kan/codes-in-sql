# Lorenz Curve Rank-Ordered Cumulative Share & Gini Coefficient (`gini_lorenz_inequality_sql`)

> Category: **Econometric SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes exact discrete Gini inequality coefficient G = (2 * sum(i * y_i)) / (N * sum(y_i)) - (N + 1) / N over ascending non-negative wealth observations.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) ordered rank-weighted income summation` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Equal distribution yields Gini = 0.0 and single-holder concentration yields (N-1)/N.

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
