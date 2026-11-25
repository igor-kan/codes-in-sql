# Herfindahl-Hirschman Index (HHI) Sector Concentration Evaluator (`hhi_concentration_d60`)

> Category: **Econometric SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes industry share squares sum (100 * s_i)^2 per market sector classifying highly concentrated oligopolies (HHI >= 2500).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) group share squaring across industry sectors` |
| **Space Complexity** | `O(S)` |

## Mathematical & Safety Invariants

- Monopoly sector attains HHI == 10000 and equal 4-firm sector attains HHI == 2500.

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
