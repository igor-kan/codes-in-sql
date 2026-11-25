INSERT INTO d60_click_ev VALUES (1,100),(1,250),(1,700),(1,750),(2,10),(2,400);
CREATE TEMP TABLE _session_islands_d60_chk(flag INTEGER);
CREATE TEMP TRIGGER _session_islands_d60_chk_trg BEFORE INSERT ON _session_islands_d60_chk
BEGIN SELECT CASE WHEN NOT ((SELECT n_sessions FROM v_d60_sessions WHERE uid=1) = 2 AND (SELECT n_sessions FROM v_d60_sessions WHERE uid=2) = 2) THEN RAISE(ABORT, 'unit assertion failed for session_islands_d60') END; END;
INSERT INTO _session_islands_d60_chk VALUES (1);
