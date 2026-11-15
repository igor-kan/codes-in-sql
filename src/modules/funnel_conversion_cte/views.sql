CREATE VIEW v_user_stage_firsts AS
SELECT
    user_id,
    MIN(CASE WHEN stage = 'view' THEN ts END) AS t_view,
    MIN(CASE WHEN stage = 'cart' THEN ts END) AS t_cart
FROM funnel_events
GROUP BY user_id;
