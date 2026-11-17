CREATE TEMP TABLE _bitemporal_valid_system_join_prop(flag INTEGER);
CREATE TEMP TRIGGER _bitemporal_valid_system_join_prop_trg BEFORE INSERT ON _bitemporal_valid_system_join_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_audit_t15 WHERE sku='A1') = 1) THEN RAISE(ABORT, 'property assertion failed for bitemporal_valid_system_join') END; END;
INSERT INTO _bitemporal_valid_system_join_prop VALUES (1);
