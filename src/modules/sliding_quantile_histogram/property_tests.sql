CREATE TEMP TABLE _sliding_quantile_histogram_prop(flag INTEGER);
CREATE TEMP TRIGGER _sliding_quantile_histogram_prop_trg BEFORE INSERT ON _sliding_quantile_histogram_prop
BEGIN SELECT CASE WHEN NOT ((SELECT SUM(cnt) FROM v_hist_cdf WHERE grp='mem') = 2) THEN RAISE(ABORT, 'property assertion failed for sliding_quantile_histogram') END; END;
INSERT INTO _sliding_quantile_histogram_prop VALUES (1);
