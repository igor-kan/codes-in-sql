# Relational Market-Basket Association Support, Confidence & Lift Matrix (`market_basket_cooccurrence`)

> Category: **Association Mining & Co-Occurrence** | Language: **SQL (ANSI / SQLite3)**

## Overview

Generates canonical ordered SKU pairs (sku_a < sku_b) per order basket via indexed self-join and computes exact Support, Confidence(A->B), and Lift = P(A,B) / (P(A) * P(B)).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(Sum(BasketSize^2))` |
| **Space Complexity** | `O(Pairs)` |

## Mathematical & Safety Invariants

- Co-occurring pairs obey canonical asymmetry item_a < item_b preventing double counting.
- Support P(A, B) never exceeds min(P(A), P(B)).

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
