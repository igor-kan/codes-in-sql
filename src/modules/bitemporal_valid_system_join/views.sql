CREATE VIEW v_audit_t15 AS SELECT sku, rate
FROM bitemp_rates
WHERE 15 >= v_from AND 15 < v_to AND 25 >= s_from AND 25 < s_to;
INSERT OR IGNORE INTO bitemporal_valid_system_join_meta VALUES ('module', 'bitemporal_valid_system_join');
