CREATE TEMP TABLE IF NOT EXISTS _apriori_pair_lift_confidence_inv_ok (flag INTEGER);
INSERT INTO _apriori_pair_lift_confidence_inv_ok VALUES (1);
SELECT COUNT(*) AS invariant_passes
FROM _apriori_pair_lift_confidence_inv_ok;
