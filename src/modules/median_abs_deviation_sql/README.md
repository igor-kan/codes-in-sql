# Robust Median Absolute Deviation (MAD) Anomaly Scorer (`median_abs_deviation_sql`)

> Category: **Statistical SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes the sample median and Median Absolute Deviation (MAD = median(|x_i - median(x)|)) per partition cleanly in pure relational window SQL.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) ordered quantile median + deviation median` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Uncontaminated central cluster achieves robust MAD = 1.0 despite extreme outlier injection.

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
