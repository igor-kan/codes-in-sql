-- Core schema and type specifications for Automated Temporal Partition Rotator and Data Pruner
-- Module: partition_range_rotator

CREATE SCHEMA IF NOT EXISTS partition_range_rotator_schema;

CREATE TABLE IF NOT EXISTS partition_range_rotator_schema.module_registry (
    id SERIAL PRIMARY KEY,
    module_slug VARCHAR(64) UNIQUE NOT NULL,
    module_name VARCHAR(255) NOT NULL,
    capacity INT DEFAULT 1024,
    tolerance DOUBLE PRECISION DEFAULT 1e-12,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO partition_range_rotator_schema.module_registry (module_slug, module_name, capacity, tolerance)
VALUES ('partition_range_rotator', 'Automated Temporal Partition Rotator and Data Pruner', 1024, 1e-12)
ON CONFLICT (module_slug) DO UPDATE
SET tolerance = EXCLUDED.tolerance;
