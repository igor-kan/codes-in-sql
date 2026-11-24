# Half-Open Reservation Double-Booking Conflict Detector (`interval_overlap_sql_d59`)

> Category: **Temporal Overlap** | Language: **SQL (ANSI / SQLite3)**

## Overview

Detects overlapping half-open time reservations [s1, e1) and [s2, e2) on identical rooms using s1 < e2 AND s2 < e1 cleanly.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) self-join` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Non-overlapping sequential reservations generate zero conflict pairs.

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
