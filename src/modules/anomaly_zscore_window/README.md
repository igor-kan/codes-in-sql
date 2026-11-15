# Rolling Window Z-Score Anomaly Detector (`anomaly_zscore_window`)

> Category: **Streaming Telemetry SQL** | Language: **SQL (ANSI / SQLite3)**

## Overview

Sliding W-step trailing mean and numerically stabilized variance over SQLite window frames detecting z-score spike anomalies cleanly in single-pass SQL.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(N)` |
| **Space Complexity** | `O(N)` |

## Mathematical & Safety Invariants

- window sample count stays in [1, W] at every row
- population variance >= 0.0 guaranteed by non-negative floor
- constant baseline observations yield z_score == 0.0 while isolated 10x spikes flag anomaly = 1

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
