# Double-Entry General Ledger with Zero-Sum Transaction Trigger Enforcement (`double_entry_ledger_balance`)

> Category: **Financial Systems & Integrity** | Language: **SQL (ANSI / SQLite3)**

## Overview

Models immutable double-entry accounting journals separating journal headers and signed debit/credit line postings, enforcing exact zero-sum balance conservation and immutable reversal rules.

## Complexity Guarantees

| Metric | Asymptotic Bound |
| :--- | :--- |
| **Time Complexity** | `O(Entries log Entries)` |
| **Space Complexity** | `O(Entries)` |

## Mathematical & Safety Invariants

- Sum of signed amounts across posted journal lines equals strictly 0 globally and per sealed entry.
- Zero-amount postings are strictly rejected via CHECK constraints.

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
