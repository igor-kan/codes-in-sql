# Fuzzing and invariant test target for Idempotent Bulk Upsert with On-Conflict Resolution
# Module: upsert_conflict_resolver
# Invariant: Output must remain finite for all finite inputs bounded in [-1e6, 1e6]
# Invariant: f(0) == 0 strictly preserved
