CREATE TEMP TABLE _session_timeout_split_d56_prop(flag INTEGER);
CREATE TEMP TRIGGER _session_timeout_split_d56_prop_trg BEFORE INSERT ON _session_timeout_split_d56_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d56_sessions) = 4) THEN RAISE(ABORT, 'property assertion failed for session_timeout_split_d56') END; END;
INSERT INTO _session_timeout_split_d56_prop VALUES (1);
