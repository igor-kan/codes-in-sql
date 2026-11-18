# Two-Step Damped PageRank Authority Propagation in SQL (`pagerank_damped_two_step`)

> Category: **Graph Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes damped PageRank authority scores across directed edges using out-degree normalized mass transfer (1-d)/N + d * sum(PR(u)/deg(u)).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K * E) iterative out-degree weighted mass redistribution` |
| **Space Complexity** | `O(V + E)` |

## Mathematical & Safety Invariants

- Hub sink receiving all incoming links attains strictly highest PageRank score.

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
