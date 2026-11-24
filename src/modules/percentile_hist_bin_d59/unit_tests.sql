INSERT INTO d59_obs VALUES (1,4),(2,9),(3,12),(4,25),(5,29);
CREATE TEMP TABLE _percentile_hist_bin_d59_chk(flag INTEGER);
CREATE TEMP TRIGGER _percentile_hist_bin_d59_chk_trg BEFORE INSERT ON _percentile_hist_bin_d59_chk
BEGIN SELECT CASE WHEN NOT ((SELECT cnt FROM v_d59_hist WHERE bin_lo=0) = 2 AND (SELECT cnt FROM v_d59_hist WHERE bin_lo=20) = 2) THEN RAISE(ABORT, 'unit assertion failed for percentile_hist_bin_d59') END; END;
INSERT INTO _percentile_hist_bin_d59_chk VALUES (1);
