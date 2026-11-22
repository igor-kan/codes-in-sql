# Account-Partitioned Running Ledger Balance Window (`running_sum_partition_d57`)

> Category: **Ledger Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes ordered cumulative cash balances per account ID and flags negative balance overdraft violations.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) cumulative partitioned sum` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Cumulative ending balance matches unconditional per-account SUM(amt).

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
