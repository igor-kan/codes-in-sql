-- Core schema and type specifications for Recursive Common Table Expression for DAG Traversal
-- Module: hierarchical_cte_traversal

CREATE SCHEMA IF NOT EXISTS hierarchical_cte_traversal_schema;

CREATE TABLE IF NOT EXISTS hierarchical_cte_traversal_schema.module_registry (
    id SERIAL PRIMARY KEY,
    module_slug VARCHAR(64) UNIQUE NOT NULL,
    module_name VARCHAR(255) NOT NULL,
    capacity INT DEFAULT 1024,
    tolerance DOUBLE PRECISION DEFAULT 1e-12,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO hierarchical_cte_traversal_schema.module_registry (module_slug, module_name, capacity, tolerance)
VALUES ('hierarchical_cte_traversal', 'Recursive Common Table Expression for DAG Traversal', 1024, 1e-12)
ON CONFLICT (module_slug) DO UPDATE
SET tolerance = EXCLUDED.tolerance;
