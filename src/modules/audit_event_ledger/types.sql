-- Core schema and type specifications for Tamper-Evident Hash-Chained Audit Ledger with Triggers
-- Module: audit_event_ledger

CREATE SCHEMA IF NOT EXISTS audit_event_ledger_schema;

CREATE TABLE IF NOT EXISTS audit_event_ledger_schema.module_registry (
    id SERIAL PRIMARY KEY,
    module_slug VARCHAR(64) UNIQUE NOT NULL,
    module_name VARCHAR(255) NOT NULL,
    capacity INT DEFAULT 1024,
    tolerance DOUBLE PRECISION DEFAULT 1e-12,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO audit_event_ledger_schema.module_registry (module_slug, module_name, capacity, tolerance)
VALUES ('audit_event_ledger', 'Tamper-Evident Hash-Chained Audit Ledger with Triggers', 1024, 1e-12)
ON CONFLICT (module_slug) DO UPDATE
SET tolerance = EXCLUDED.tolerance;
