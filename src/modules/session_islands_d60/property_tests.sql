CREATE TEMP TABLE _session_islands_d60_prop(flag INTEGER);
CREATE TEMP TRIGGER _session_islands_d60_prop_trg BEFORE INSERT ON _session_islands_d60_prop
BEGIN SELECT CASE WHEN NOT ((SELECT MIN(n_sessions >= 1) FROM v_d60_sessions) = 1) THEN RAISE(ABORT, 'property assertion failed for session_islands_d60') END; END;
INSERT INTO _session_islands_d60_prop VALUES (1);
