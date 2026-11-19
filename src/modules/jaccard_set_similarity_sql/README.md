# Inverted-Index Pairwise Jaccard Set Similarity Engine (`jaccard_set_similarity_sql`)

> Category: **Similarity Search** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes exact pairwise Jaccard index |A intersect B| / |A union B| over sparse set memberships without scanning disjoint pairs.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(sum(df^2)) inverted-index intersection & union size join` |
| **Space Complexity** | `O(P^2)` |

## Mathematical & Safety Invariants

- Identical token sets yield similarity = 1.0 and disjoint sets do not emit spurious pairs.

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
