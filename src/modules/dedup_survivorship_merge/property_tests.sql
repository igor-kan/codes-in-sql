CREATE TEMP TABLE _dedup_survivorship_merge_prop(flag INTEGER);
CREATE TEMP TRIGGER _dedup_survivorship_merge_prop_trg BEFORE INSERT ON _dedup_survivorship_merge_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_golden) = 2) THEN RAISE(ABORT, 'property assertion failed for dedup_survivorship_merge') END; END;
INSERT INTO _dedup_survivorship_merge_prop VALUES (1);
