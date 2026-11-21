INSERT INTO d56_clicks VALUES (1,10),(1,25),(1,80),(1,95);
CREATE TEMP TABLE _session_timeout_split_d56_chk(flag INTEGER);
CREATE TEMP TRIGGER _session_timeout_split_d56_chk_trg BEFORE INSERT ON _session_timeout_split_d56_chk
BEGIN SELECT CASE WHEN NOT ((SELECT MAX(sess_id) FROM v_d56_sessions WHERE uid=1) = 2 AND (SELECT MIN(sess_id) FROM v_d56_sessions WHERE uid=1) = 1) THEN RAISE(ABORT, 'unit assertion failed for session_timeout_split_d56') END; END;
INSERT INTO _session_timeout_split_d56_chk VALUES (1);
