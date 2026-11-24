CREATE TEMP TABLE _top_per_category_rn_d59_prop(flag INTEGER);
CREATE TEMP TRIGGER _top_per_category_rn_d59_prop_trg BEFORE INSERT ON _top_per_category_rn_d59_prop
BEGIN SELECT CASE WHEN NOT ((SELECT COUNT(*) FROM v_d59_winner) = (SELECT COUNT(DISTINCT store) FROM d59_store_sku)) THEN RAISE(ABORT, 'property assertion failed for top_per_category_rn_d59') END; END;
INSERT INTO _top_per_category_rn_d59_prop VALUES (1);
