# Recursive Topological Wave & Critical-Path Task Scheduler (`topological_dag_schedule`)

> Category: **Workflow Scheduling** | Language: **SQL (ANSI / SQLite3)**

## Overview

Evaluates earliest execution start wave and critical completion time across task dependency graphs using recursive parent-finish aggregation.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(V + E) level-by-level topological wave expansion` |
| **Space Complexity** | `O(V)` |

## Mathematical & Safety Invariants

- Downstream task earliest start equals maximum upstream finish wave cleanly.

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
