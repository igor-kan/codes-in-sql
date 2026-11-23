CREATE TEMP TABLE _orphan_fk_audit_d58_prop(flag INTEGER);
CREATE TEMP TRIGGER _orphan_fk_audit_d58_prop_trg BEFORE INSERT ON _orphan_fk_audit_d58_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM d58_child) >= (SELECT COUNT(*) FROM v_d58_orphans)) THEN RAISE(ABORT, 'property assertion failed for orphan_fk_audit_d58') END; END;
INSERT INTO _orphan_fk_audit_d58_prop VALUES (1);
