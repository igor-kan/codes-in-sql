# User Signup Cohort Month-0/Month-1 Retention Rate Matrix (`cohort_retention_d60`)

> Category: **Retention Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Pairs user signup dates against monthly activity logs to quantify baseline cohort size and month+1 retained fraction.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) cohort baseline windowing and conditional pivot` |
| **Space Complexity** | `O(U)` |

## Mathematical & Safety Invariants

- Retained cohort user count never exceeds initial cohort signup count.

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
