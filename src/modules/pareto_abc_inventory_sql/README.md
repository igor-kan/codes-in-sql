# Pareto 80/20 Cumulative Revenue ABC Inventory Classifier (`pareto_abc_inventory_sql`)

> Category: **Supply Chain Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Ranks SKUs by descending revenue contribution and classifies items into Pareto Class A (<= 70% cumulative revenue), B (<= 90%), and C (> 90%).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) descending revenue window cumulative share` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Top revenue SKU is strictly classified as Class A.

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
