# Discrete Kaplan-Meier Cohort Survival & Hazard Curve (`cohort_churn_survival`)

> Category: **Cohort Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes discrete period retention rates, hazard probabilities, and cumulative Kaplan-Meier cohort survival probabilities via SUM(ln(...)) product identities.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(K log K) cumulative product log-sum` |
| **Space Complexity** | `O(K)` |

## Mathematical & Safety Invariants

- Survival probability monotonically non-increases across periods and matches product of 1 - hazard.

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
