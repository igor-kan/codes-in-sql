# Monthly User Signup Cohort Retention Matrix (`cohort_retention_matrix_d56`)

> Category: **Product Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes first-seen cohort indices per user and tracks period-over-period retention ratios relative to cohort month zero.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) cohort baseline window join` |
| **Space Complexity** | `O(U)` |

## Mathematical & Safety Invariants

- Period-0 active count bounds all subsequent retained period counts.

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
