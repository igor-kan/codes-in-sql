# Collatz Total Stopping Time Recursive Sequence Length (`collatz_length_d61`)

> Category: **Sequence Analytics** | Language: **SQL (ANSI / SQLite3)**

## Overview

Iterates the Collatz map (halve evens, tripled-plus-one odds) from each seed until unity and reports the number of transitions as the total stopping time.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(S) recursive common table expression over the trajectory` |
| **Space Complexity** | `O(S)` |

## Mathematical & Safety Invariants

- The unit seed has zero stopping time and every seed above one reports a strictly positive count.

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
