INSERT INTO d59_store_sku VALUES ('NYC','B',500),('NYC','A',500),('LA','C',900);
CREATE TEMP TABLE _top_per_category_rn_d59_chk(flag INTEGER);
CREATE TEMP TRIGGER _top_per_category_rn_d59_chk_trg BEFORE INSERT ON _top_per_category_rn_d59_chk
BEGIN SELECT CASE WHEN NOT ((SELECT sku FROM v_d59_winner WHERE store='NYC') = 'A' AND (SELECT sku FROM v_d59_winner WHERE store='LA') = 'C') THEN RAISE(ABORT, 'unit assertion failed for top_per_category_rn_d59') END; END;
INSERT INTO _top_per_category_rn_d59_chk VALUES (1);
