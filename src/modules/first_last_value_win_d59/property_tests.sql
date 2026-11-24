CREATE TEMP TABLE _first_last_value_win_d59_prop(flag INTEGER);
CREATE TEMP TRIGGER _first_last_value_win_d59_prop_trg BEFORE INSERT ON _first_last_value_win_d59_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d59_ends WHERE start_st IS NULL OR end_st IS NULL) = 0) THEN RAISE(ABORT, 'property assertion failed for first_last_value_win_d59') END; END;
INSERT INTO _first_last_value_win_d59_prop VALUES (1);
