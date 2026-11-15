CREATE VIEW v_cdf_bounds_violations AS
SELECT sample_id
FROM v_ranked_samples
WHERE emp_cdf <= 0.0
   OR emp_cdf > 1.0
   OR decile < 1
   OR decile > 10;
