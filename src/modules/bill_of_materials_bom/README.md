# Recursive Bill-of-Materials Cost Explosion (`bill_of_materials_bom`)

> Category: **Hierarchical Enterprise SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Recursive CTE manufacturing Bill-of-Materials explosion multiplying component quantities down arbitrary DAG depth to aggregate rolled-up leaf unit cost.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(nodes * paths)` |
| **Space Complexity** | `O(paths)` |

## Mathematical & Safety Invariants

- zero parent = component self-references allowed
- top-level assembly cost equals exact weighted sum of leaf raw part prices
- all exploded path quantities remain strictly positive

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
