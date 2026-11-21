# 30-Minute Inactivity Window Sessionization Engine (`session_timeout_split_d56`)

> Category: **Clickstream Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Splits raw user clickstream events into bounded session identifiers whenever inter-event gaps exceed 30 minutes via LAG + cumulative SUM.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) LAG timestamp delta scan` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Session identifiers increase monotonically per user along event timestamps.

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
