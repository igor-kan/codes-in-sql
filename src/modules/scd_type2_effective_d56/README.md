# Slowly Changing Dimension Type-2 Point-In-Time Resolver (`scd_type2_effective_d56`)

> Category: **Warehouse Modeling** | Language: **SQL (ANSI / SQLite3)**

## Overview

Validates non-overlapping [valid_from, valid_to) effective history ranges for Type-2 slowly changing entities cleanly.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) interval adjacency check` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- At any timestamp, each entity resolves to at most one active version.

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
