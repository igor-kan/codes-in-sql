INSERT INTO _sql_assertions (assertion_name, passed)
SELECT 'scd_contiguous_no_gaps',
       CASE WHEN (SELECT COUNT(*) FROM v_scd2_chain_gaps) = 0 THEN 1 ELSE 0 END;
