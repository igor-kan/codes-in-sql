# Kadane Maximum Contiguous Subarray Gain via Prefix-Minimum Window (`kadane_max_subarray_d61`)

> Category: **Streaming Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Computes the maximum contiguous subarray gain as the largest drop-free rise of a cumulative prefix-sum series, clamping the empty selection to zero.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N log N) cumulative prefix sum and running minimum window` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Maximum subarray gain is never negative and never exceeds the total positive prefix span.

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
