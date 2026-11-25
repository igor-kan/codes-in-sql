# Recursive CTE Bill-of-Materials Multi-Level Cost Rollup (`bom_closure_cte_d60`)

> Category: **Hierarchical SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Expands multi-level parent-child component assemblies via WITH RECURSIVE multiplying nested sub-assembly quantities into total leaf cost.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(D * E) recursive common table expression traversal` |
| **Space Complexity** | `O(V)` |

## Mathematical & Safety Invariants

- Total root assembly cost equals sum of leaf unit cost * cumulative path multiplicity.

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
