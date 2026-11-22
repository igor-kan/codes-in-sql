# Stratified NTILE Quartiles & Percent-Rank SQL Scorer (`percentile_ntile_rank_d57`)

> Category: **Ranking Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Assigns deterministic NTILE(4) score quartiles and continuous PERCENT_RANK() ranks over entity latency metrics.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) window ranking` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Lowest latency falls into quartile 1 with PERCENT_RANK = 0.0.

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
