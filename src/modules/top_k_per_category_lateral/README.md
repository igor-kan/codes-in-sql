# Stratified Top-K per Category Ranking via Indexed Window Partitions (`top_k_per_category_lateral`)

> Category: **Ranking & Query Optimization** | Language: **SQL (ANSI / SQLite3)**

## Overview

Extracts top-K highest-scoring entities per category via composite index-assisted ROW_NUMBER() window ranking, cross-checking equivalence against correlated rank subqueries.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) ordered composite-index scan` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- At most K rows are emitted per category_id.
- Every excluded row within a category scores <= the K-th retained item in that category.

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
