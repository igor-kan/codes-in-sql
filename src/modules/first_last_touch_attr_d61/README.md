# First-Touch versus Last-Touch Multi-Channel Attribution Split (`first_last_touch_attr_d61`)

> Category: **Marketing Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Assigns each conversion a pair of channel credits taken from the earliest and latest touch points occurring at or before the conversion event.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(C log T) correlated boundary scans per conversion path` |
| **Space Complexity** | `O(C)` |

## Mathematical & Safety Invariants

- Total first-touch credit and total last-touch credit each equal the number of conversions.

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
