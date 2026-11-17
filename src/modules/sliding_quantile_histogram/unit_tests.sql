INSERT INTO metrics VALUES ('cpu',5),('cpu',12),('cpu',18),('cpu',25),('cpu',35),('mem',8),('mem',22);
CREATE TEMP TABLE _sliding_quantile_histogram_chk(flag INTEGER);
CREATE TEMP TRIGGER _sliding_quantile_histogram_chk_trg BEFORE INSERT ON _sliding_quantile_histogram_chk
BEGIN SELECT CASE WHEN NOT ((SELECT ROUND(MAX(cum_share), 4) FROM v_hist_cdf WHERE grp='cpu') = 1.0) THEN RAISE(ABORT, 'unit assertion failed for sliding_quantile_histogram') END; END;
INSERT INTO _sliding_quantile_histogram_chk VALUES (1);
