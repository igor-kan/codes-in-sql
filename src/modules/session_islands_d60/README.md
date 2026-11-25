# Gaps-and-Islands Inactivity Threshold User Sessionization (`session_islands_d60`)

> Category: **Event Stream SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Groups timestamped click events into discrete sessions whenever elapsed silence between consecutive user events exceeds 300 seconds.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) partitioned LAG() gap boundary cumulative sum` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Assigned session counts match exact number of >300s breaks plus 1 per user.

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
