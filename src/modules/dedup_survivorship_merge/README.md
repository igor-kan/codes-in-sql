# Golden-Record Multi-Source Survivorship Merge Engine (`dedup_survivorship_merge`)

> Category: **Entity Resolution** | Language: **SQL (ANSI / SQLite3)**

## Overview

Applies source-priority tie-breaking and non-null field coalescence via ROW_NUMBER and FIRST_VALUE windows to synthesize clean master entity records.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) partitioned window coalescence` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Exactly one golden record is emitted per entity_id using highest priority trusted non-null fields.

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
