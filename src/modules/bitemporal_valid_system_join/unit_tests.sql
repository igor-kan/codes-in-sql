INSERT INTO bitemp_rates VALUES ('A1', 10.0, 10, 20, 1, 20), ('A1', 12.5, 10, 20, 20, 999), ('A1', 14.0, 20, 99, 20, 999);
CREATE TEMP TABLE _bitemporal_valid_system_join_chk(flag INTEGER);
CREATE TEMP TRIGGER _bitemporal_valid_system_join_chk_trg BEFORE INSERT ON _bitemporal_valid_system_join_chk
BEGIN SELECT CASE WHEN NOT ((SELECT rate FROM v_audit_t15 WHERE sku='A1') = 12.5) THEN RAISE(ABORT, 'unit assertion failed for bitemporal_valid_system_join') END; END;
INSERT INTO _bitemporal_valid_system_join_chk VALUES (1);
