# Bi-Temporal Point-in-Time Valid x System Audit Join (`bitemporal_valid_system_join`)

> Category: **Temporal Databases** | Language: **SQL (ANSI / SQLite3)**

## Overview

Stores bi-temporal ledger rows with orthogonal valid-time and transaction-system-time intervals and resolves point-in-time historical snapshots.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(log N) indexed interval range probe` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Point-in-time query matches strictly one valid x system interval per entity.

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
