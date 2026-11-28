# Next Greater Element Rightward Successor Lookup via Correlated Scan (`next_greater_element_d61`)

> Category: **Sequence Algorithms** | Language: **SQL (ANSI / SQLite3)**

## Overview

For every position reports the earliest later position whose value strictly exceeds the current value, emulating a monotonic-stack successor table in pure SQL.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N^2) correlated successor scan over ordered positions` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- Any reported successor is strictly greater in value and strictly later in sequence.

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
