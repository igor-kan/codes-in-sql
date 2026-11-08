# Fuzzing and invariant test target for Vectorized Columnstore Indexing and Materialized Aggregates
# Module: columnstore_aggregate_view
# Invariant: Output must remain finite for all finite inputs bounded in [-1e6, 1e6]
# Invariant: f(0) == 0 strictly preserved
