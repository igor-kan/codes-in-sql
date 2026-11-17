# Partitioned Tukey 1.5*IQR Outlier Fence Detector (`anomaly_iqr_tukey_fences`)

> Category: **Statistical SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes exact lower/upper quartiles (Q1, Q3) per category partition and flags statistical outliers outside [Q1 - 1.5*IQR, Q3 + 1.5*IQR].

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) quartile window projection` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Extreme injected outlier beyond Q3 + 1.5*IQR is flagged strictly as anomaly = 1.

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
