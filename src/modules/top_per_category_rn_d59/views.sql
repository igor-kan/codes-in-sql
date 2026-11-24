CREATE VIEW v_d59_winner AS WITH r AS (SELECT store, sku, rev, ROW_NUMBER() OVER (PARTITION BY store ORDER BY rev DESC, sku ASC) AS rn
FROM d59_store_sku) SELECT store, sku, rev
FROM r
WHERE rn = 1;
INSERT OR IGNORE INTO top_per_category_rn_d59_meta VALUES ('module', 'top_per_category_rn_d59');
