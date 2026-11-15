# Recursive CTE Cycle & Reachability Detector (`cycle_detect_graph_cte`)

> Category: **Graph Databases / CTEs** | Language: **SQL (ANSI / SQLite3)**

## Overview

Directed dependency graph cycle detection via path-encoded WITH RECURSIVE traversal preventing infinite recursion in SQLite.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(V + E paths)` |
| **Space Complexity** | `O(paths)` |

## Mathematical & Safety Invariants

- acyclic DAG paths never report is_cycle = 1
- cycle edges strictly witness a closed path returning to an already visited node
- self-loops (u -> u) are immediately flagged at hop depth 1

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
