# Recursive Tabular 0/1 Knapsack Value Frontier in SQL (`knapsack_dp_tabular_sql`)

> Category: **Combinatorial SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes exact optimal subset value for bounded capacity 0/1 Knapsack instances step-by-step across ordered items via deduplicated recursive CTE state transitions.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N * W) bounded state expansion` |
| **Space Complexity** | `O(N * W)` |

## Mathematical & Safety Invariants

- Exact DP maximum matches known optimum 90 for classic weight=50 test vector without exceeding capacity.

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
