# COO Sparse Matrix Multiplication C = A * B via Relational Join (`dense_sparse_matmul_sql`)

> Category: **Relational Linear Algebra** | Language: **SQL (ANSI / SQLite3)**

## Overview

Multiplies sparse coordinate-format matrices A(i, k, val) and B(k, j, val) in pure SQL via inner join on contraction index k and SUM aggregation.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(sum(nnz_row * nnz_col)) sparse index contraction join + SUM` |
| **Space Complexity** | `O(NNZ)` |

## Mathematical & Safety Invariants

- Matches exact matrix product across non-zero coordinates while omitting zero entries.

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
