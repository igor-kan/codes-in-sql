CREATE INDEX idx_funnel_user_stage_ts
ON funnel_events (user_id, stage, ts);

CREATE VIEW v_funnel_rates AS
SELECT
    c_view,
    c_cart,
    c_checkout,
    c_purchase,
    CASE WHEN c_view > 0 THEN 1.0 * c_purchase / c_view ELSE 0.0 END AS overall_cvr
FROM v_ordered_funnel;
