# Cumulative Interval FIFO Inventory Costing (`fifo_inventory_costing`)

> Category: **Financial Ledger SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Pure set-based First-In First-Out inventory valuation computing exact Cost of Goods Sold (COGS) and remaining ending asset cost via running quantity overlaps.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(L log L)` |
| **Space Complexity** | `O(L)` |

## Mathematical & Safety Invariants

- total sold units <= total purchased lot units per SKU
- total COGS + ending inventory valuation == total historical purchase cost
- consumed quantities from each lot are strictly in [0, lot_qty]

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
