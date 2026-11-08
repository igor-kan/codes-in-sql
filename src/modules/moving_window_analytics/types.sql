-- Core schema and type specifications for Framed Analytical Window Functions for Timeseries Trends
-- Module: moving_window_analytics

CREATE SCHEMA IF NOT EXISTS moving_window_analytics_schema;

CREATE TABLE IF NOT EXISTS moving_window_analytics_schema.module_registry (
    id SERIAL PRIMARY KEY,
    module_slug VARCHAR(64) UNIQUE NOT NULL,
    module_name VARCHAR(255) NOT NULL,
    capacity INT DEFAULT 1024,
    tolerance DOUBLE PRECISION DEFAULT 1e-12,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO moving_window_analytics_schema.module_registry (module_slug, module_name, capacity, tolerance)
VALUES ('moving_window_analytics', 'Framed Analytical Window Functions for Timeseries Trends', 1024, 1e-12)
ON CONFLICT (module_slug) DO UPDATE
SET tolerance = EXCLUDED.tolerance;
