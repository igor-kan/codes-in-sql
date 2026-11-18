# Market-Basket Association Rule Support, Confidence & Lift Engine (`apriori_pair_lift_confidence`)

> Category: **Data Mining (SQL)** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes item-pair co-occurrence support, directional confidence P(B|A), and independence lift P(A,B)/(P(A)*P(B)) across transaction baskets.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(B * K^2) self-join itemset co-occurrence & lift ratio` |
| **Space Complexity** | `O(I^2)` |

## Mathematical & Safety Invariants

- Strongly co-occurring item pairs exhibit lift > 1.0.

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
