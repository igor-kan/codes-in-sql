# Bounded Cycle-Safe Transitive Reachability Matrix (`adjacency_transitive_reach`)

> Category: **Graph Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes cycle-safe directed transitive closure and minimum hop distances via path-encoded recursive CTE.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(V * E)` |
| **Space Complexity** | `O(V^2)` |

## Mathematical & Safety Invariants

- Exact min_hops from A->D in cycle A->B->C->A, C->D equals 3.

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
