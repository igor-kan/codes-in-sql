# Multi-Stage Sequential User Funnel Conversion & Drop-Off Engine (`funnel_conversion_dropoff`)

> Category: **Product Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Tracks user progression across ordered funnel stages (visit -> signup -> checkout) requiring strictly non-decreasing event timestamps.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) user-stage timestamp monotonicity join` |
| **Space Complexity** | `O(U)` |

## Mathematical & Safety Invariants

- Monotonic funnel counts satisfy checkout_users <= signup_users <= visit_users.

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
