CREATE VIEW v_golden AS SELECT DISTINCT entity_id, FIRST_VALUE(email) OVER (PARTITION BY entity_id ORDER BY (email IS NULL), src_rank, updated_at DESC) AS email, FIRST_VALUE(phone) OVER (PARTITION BY entity_id ORDER BY (phone IS NULL), src_rank, updated_at DESC) AS phone
FROM raw_profiles;
INSERT OR IGNORE INTO dedup_survivorship_merge_meta VALUES ('module', 'dedup_survivorship_merge');
