-- Core schema and type specifications for Vectorized Columnstore Indexing and Materialized Aggregates
-- Module: columnstore_aggregate_view

CREATE SCHEMA IF NOT EXISTS columnstore_aggregate_view_schema;

CREATE TABLE IF NOT EXISTS columnstore_aggregate_view_schema.module_registry (
    id SERIAL PRIMARY KEY,
    module_slug VARCHAR(64) UNIQUE NOT NULL,
    module_name VARCHAR(255) NOT NULL,
    capacity INT DEFAULT 1024,
    tolerance DOUBLE PRECISION DEFAULT 1e-12,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO columnstore_aggregate_view_schema.module_registry (module_slug, module_name, capacity, tolerance)
VALUES ('columnstore_aggregate_view', 'Vectorized Columnstore Indexing and Materialized Aggregates', 1024, 1e-12)
ON CONFLICT (module_slug) DO UPDATE
SET tolerance = EXCLUDED.tolerance;
