INSERT INTO d60_mkt_rev VALUES ('MONO','F1',500),('QUAD','A',25),('QUAD','B',25),('QUAD','C',25),('QUAD','D',25);
CREATE TEMP TABLE _hhi_concentration_d60_chk(flag INTEGER);
CREATE TEMP TRIGGER _hhi_concentration_d60_chk_trg BEFORE INSERT ON _hhi_concentration_d60_chk
BEGIN SELECT CASE WHEN NOT ((SELECT hhi FROM v_d60_hhi WHERE sector='MONO') = 10000.0 AND (SELECT hhi FROM v_d60_hhi WHERE sector='QUAD') = 2500.0) THEN RAISE(ABORT, 'unit assertion failed for hhi_concentration_d60') END; END;
INSERT INTO _hhi_concentration_d60_chk VALUES (1);
