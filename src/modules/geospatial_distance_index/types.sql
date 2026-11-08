-- Core schema and type specifications for Haversine Spatial Bounding Distance Indexing Queries
-- Module: geospatial_distance_index

CREATE SCHEMA IF NOT EXISTS geospatial_distance_index_schema;

CREATE TABLE IF NOT EXISTS geospatial_distance_index_schema.module_registry (
    id SERIAL PRIMARY KEY,
    module_slug VARCHAR(64) UNIQUE NOT NULL,
    module_name VARCHAR(255) NOT NULL,
    capacity INT DEFAULT 1024,
    tolerance DOUBLE PRECISION DEFAULT 1e-12,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO geospatial_distance_index_schema.module_registry (module_slug, module_name, capacity, tolerance)
VALUES ('geospatial_distance_index', 'Haversine Spatial Bounding Distance Indexing Queries', 1024, 1e-12)
ON CONFLICT (module_slug) DO UPDATE
SET tolerance = EXCLUDED.tolerance;
