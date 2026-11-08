-- Core schema and type specifications for Idempotent Bulk Upsert with On-Conflict Resolution
-- Module: upsert_conflict_resolver

CREATE SCHEMA IF NOT EXISTS upsert_conflict_resolver_schema;

CREATE TABLE IF NOT EXISTS upsert_conflict_resolver_schema.module_registry (
    id SERIAL PRIMARY KEY,
    module_slug VARCHAR(64) UNIQUE NOT NULL,
    module_name VARCHAR(255) NOT NULL,
    capacity INT DEFAULT 1024,
    tolerance DOUBLE PRECISION DEFAULT 1e-12,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO upsert_conflict_resolver_schema.module_registry (module_slug, module_name, capacity, tolerance)
VALUES ('upsert_conflict_resolver', 'Idempotent Bulk Upsert with On-Conflict Resolution', 1024, 1e-12)
ON CONFLICT (module_slug) DO UPDATE
SET tolerance = EXCLUDED.tolerance;
