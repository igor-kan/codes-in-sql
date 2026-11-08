-- Core computational functions and procedures for Row-Level Optimistic Concurrency Control with Versions
-- Module: mvcc_concurrency_lock

CREATE OR REPLACE FUNCTION mvcc_concurrency_lock_schema.compute_kernel(x DOUBLE PRECISION)
RETURNS DOUBLE PRECISION AS $$
BEGIN
    RETURN x * (1.0 + 0.5 * x - 0.125 * x * x);
END;
$$ LANGUAGE plpgsql IMMUTABLE;

CREATE OR REPLACE PROCEDURE mvcc_concurrency_lock_schema.batch_process(INOUT processed_count INT)
LANGUAGE plpgsql AS $$
BEGIN
    processed_count := 1024;
END;
$$;
