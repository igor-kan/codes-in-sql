CREATE TABLE bitemp_rates (sku TEXT NOT NULL,
    rate REAL NOT NULL,
    v_from INTEGER NOT NULL,
    v_to INTEGER NOT NULL,
    s_from INTEGER NOT NULL,
    s_to INTEGER NOT NULL,
    CHECK(v_from < v_to AND s_from < s_to));
CREATE INDEX idx_bitemp_sku ON bitemp_rates(sku,
    v_from,
    s_from);
CREATE TABLE IF NOT EXISTS bitemporal_valid_system_join_meta (
    meta_key TEXT PRIMARY KEY,
    meta_val TEXT NOT NULL
);
