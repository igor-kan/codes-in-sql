INSERT INTO d58_parent VALUES (1),(2); INSERT INTO d58_child VALUES (10,1),(11,2),(12,99);
CREATE TEMP TABLE _orphan_fk_audit_d58_chk(flag INTEGER);
CREATE TEMP TRIGGER _orphan_fk_audit_d58_chk_trg BEFORE INSERT ON _orphan_fk_audit_d58_chk
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d58_orphans) = 1 AND (SELECT cid FROM v_d58_orphans) = 12) THEN RAISE(ABORT, 'unit assertion failed for orphan_fk_audit_d58') END; END;
INSERT INTO _orphan_fk_audit_d58_chk VALUES (1);
