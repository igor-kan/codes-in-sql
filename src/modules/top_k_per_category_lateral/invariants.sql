INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'window_matches_correlated_oracle',
       CASE WHEN (
           SELECT COUNT(*) FROM (
               SELECT item_id FROM v_top_k_items
               EXCEPT
               SELECT item_id FROM v_correlated_oracle_top_k
           )
       ) = 0 AND (
           SELECT COUNT(*) FROM (
               SELECT item_id FROM v_correlated_oracle_top_k
               EXCEPT
               SELECT item_id FROM v_top_k_items
           )
       ) = 0 THEN 1 ELSE 0 END;
