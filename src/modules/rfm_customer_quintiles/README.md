# Recency-Frequency-Monetary NTILE Customer Scoring Engine (`rfm_customer_quintiles`)

> Category: **CRM Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes customer Recency, Frequency, and Monetary aggregates from order history and assigns 3-tier NTILE scores along each axis.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) multi-axis window NTILE ranking` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Highest-value recent frequent buyer receives maximum composite RFM score.

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
