INSERT INTO d59_ticket VALUES (1,1,'open'),(1,5,'triaged'),(1,9,'closed'),(2,2,'open');
CREATE TEMP TABLE _first_last_value_win_d59_chk(flag INTEGER);
CREATE TEMP TRIGGER _first_last_value_win_d59_chk_trg BEFORE INSERT ON _first_last_value_win_d59_chk
BEGIN SELECT CASE WHEN NOT ((SELECT start_st FROM v_d59_ends WHERE tid=1) = 'open' AND (SELECT end_st FROM v_d59_ends WHERE tid=1) = 'closed') THEN RAISE(ABORT, 'unit assertion failed for first_last_value_win_d59') END; END;
INSERT INTO _first_last_value_win_d59_chk VALUES (1);
