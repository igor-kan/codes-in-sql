CREATE TEMP TABLE _percentile_hist_bin_d59_prop(flag INTEGER);
CREATE TEMP TRIGGER _percentile_hist_bin_d59_prop_trg BEFORE INSERT ON _percentile_hist_bin_d59_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(cnt) FROM v_d59_hist) = (SELECT COUNT(*) FROM d59_obs)) THEN RAISE(ABORT, 'property assertion failed for percentile_hist_bin_d59') END; END;
INSERT INTO _percentile_hist_bin_d59_prop VALUES (1);
