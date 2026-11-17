INSERT INTO raw_profiles VALUES (101, 1, NULL, '555-0100', 10), (101, 2, 'alice@x.io', '555-9999', 5), (102, 1, 'bob@x.io', NULL, 20);
CREATE TEMP TABLE _dedup_survivorship_merge_chk(flag INTEGER);
CREATE TEMP TRIGGER _dedup_survivorship_merge_chk_trg BEFORE INSERT ON _dedup_survivorship_merge_chk
BEGIN SELECT CASE WHEN NOT ((SELECT email FROM v_golden WHERE entity_id=101) = 'alice@x.io' AND (SELECT phone FROM v_golden WHERE entity_id=101) = '555-0100') THEN RAISE(ABORT, 'unit assertion failed for dedup_survivorship_merge') END; END;
INSERT INTO _dedup_survivorship_merge_chk VALUES (1);
