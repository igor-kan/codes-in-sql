CREATE VIEW v_pair_lift AS WITH tot AS (SELECT COUNT(DISTINCT tx_id) AS n_tx
FROM basket_items), item_cnt AS (SELECT item, COUNT(*) AS c
FROM basket_items GROUP BY item), pairs AS (SELECT a.item AS ia, b.item AS ib, COUNT(*) AS cab
FROM basket_items a JOIN basket_items b ON a.tx_id=b.tx_id AND a.item < b.item GROUP BY a.item, b.item) SELECT p.ia, p.ib, CAST(p.cab AS REAL)/ca.c AS conf_a_to_b, (CAST(p.cab AS REAL) * t.n_tx) / (ca.c * cb.c) AS lift
FROM pairs p JOIN item_cnt ca ON p.ia=ca.item JOIN item_cnt cb ON p.ib=cb.item CROSS JOIN tot t;
INSERT OR IGNORE INTO apriori_pair_lift_confidence_meta VALUES ('module', 'apriori_pair_lift_confidence');
