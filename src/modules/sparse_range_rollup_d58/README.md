# Conditional Bucketed Spend Rollup Reconciliation (`sparse_range_rollup_d58`)

> Category: **Metric Reconciliation** | Language: **SQL (ANSI / SQLite3)**

## Overview

Categorizes purchase tickets into small/medium/large buckets and verifies bucket sums conserve exact overall total.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N)` |
| **Space Complexity** | `O(K)` |

## Mathematical & Safety Invariants

- Sum across all conditional tier columns matches raw table SUM(amt).

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
