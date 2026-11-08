-- Core schema and type specifications for Row-Level Optimistic Concurrency Control with Versions
-- Module: mvcc_concurrency_lock

CREATE SCHEMA IF NOT EXISTS mvcc_concurrency_lock_schema;

CREATE TABLE IF NOT EXISTS mvcc_concurrency_lock_schema.module_registry (
    id SERIAL PRIMARY KEY,
    module_slug VARCHAR(64) UNIQUE NOT NULL,
    module_name VARCHAR(255) NOT NULL,
    capacity INT DEFAULT 1024,
    tolerance DOUBLE PRECISION DEFAULT 1e-12,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO mvcc_concurrency_lock_schema.module_registry (module_slug, module_name, capacity, tolerance)
VALUES ('mvcc_concurrency_lock', 'Row-Level Optimistic Concurrency Control with Versions', 1024, 1e-12)
ON CONFLICT (module_slug) DO UPDATE
SET tolerance = EXCLUDED.tolerance;
