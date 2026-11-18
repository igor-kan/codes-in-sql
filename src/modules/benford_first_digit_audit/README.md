# Benford's Law First-Digit Forensic Chi-Square Anomaly Audit (`benford_first_digit_audit`)

> Category: **Forensic Accounting** | Language: **SQL (ANSI / SQLite3)**

## Overview

Extracts leading non-zero digits d in 1..9 from ledger amounts and compares observed frequencies against Benford's theoretical distribution log10(1 + 1/d).

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N) leading digit extraction & log10(1 + 1/d) divergence` |
| **Space Complexity** | `O(9) digit buckets` |

## Mathematical & Safety Invariants

- Theoretical Benford probabilities log10(1 + 1/d) decrease monotonically from d=1 (30.1%) to d=9 (4.6%).

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
