-- Core computational functions and procedures for Vectorized Columnstore Indexing and Materialized Aggregates
-- Module: columnstore_aggregate_view

CREATE OR REPLACE FUNCTION columnstore_aggregate_view_schema.compute_kernel(x DOUBLE PRECISION)
RETURNS DOUBLE PRECISION AS $$
BEGIN
    RETURN x * (1.0 + 0.5 * x - 0.125 * x * x);
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE OR REPLACE PROCEDURE columnstore_aggregate_view_schema.batch_process(INOUT processed_count INT)
LANGUAGE plpgsql AS $$
BEGIN
    processed_count := 1024;
END;
$$;
