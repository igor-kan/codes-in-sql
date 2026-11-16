# Relational COO Sparse Matrix-Matrix Product (SpGEMM) & Trace Audit (`sparse_matrix_sql_spgemm`)

> Category: **Relational Linear Algebra** | Language: **SQL (ANSI / SQLite3)**

## Overview

Multiplies sparse coordinate-list (COO) matrices A and B inside SQLite via indexed equijoin A.col_idx = B.row_idx, SUM aggregation, near-zero epsilon pruning, and trace invariance trace(A*B) == trace(B*A).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(Sum(nnz_row(A) * nnz_col(B)))` |
| **Space Complexity** | `O(nnz(A*B))` |

## Mathematical & Safety Invariants

- Near-zero entries |val| <= 1e-12 are pruned cleanly from sparse product.
- Frobenius inner product identity trace(A * B) == trace(B * A) holds to < 1e-10.

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
