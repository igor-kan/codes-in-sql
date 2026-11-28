# Progressive Marginal Tax Bracket Slicing and Liability Rollup (`progressive_tax_brackets_d61`)

> Category: **Fiscal Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Slices each taxpayer income across contiguous marginal brackets, taxing only the portion inside each interval at its basis-point rate and summing the liability.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(B log B) bracket join with scalar clamp slicing per taxpayer` |
| **Space Complexity** | `O(B)` |

## Mathematical & Safety Invariants

- Higher income never yields lower total tax and every liability is non-negative.

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
