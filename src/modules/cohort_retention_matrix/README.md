# Periodic Signup Cohort Retention Matrix & Month-N Pivot (`cohort_retention_matrix`)

> Category: **Product & Growth Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes user acquisition month cohorts and periodic activity offsets (m+0..m+3) using window aggregation and conditional COUNT(DISTINCT ...) FILTER clauses enforcing monotonic cohort bounds.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) hash join & cohort grouping` |
| **Space Complexity** | `O(Users + Events)` |

## Mathematical & Safety Invariants

- Period-0 active user count equals total cohort signup headcount (100% Day-0 baseline).
- Every retention percentage stays bounded in [0.0, 100.0] with m >= 0.

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
