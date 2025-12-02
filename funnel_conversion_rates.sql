SELECT * FROM  funnel_data;

SELECT *, ROW_NUMBER() OVER ( PARTITION BY session_id  ORDER BY event_time ) as event_rank
FROM funnel_data
WHERE funnel_step != 'Other';

WITH FunnelCounts AS (
   SELECT
        funnel_step,
        COUNT(DISTINCT session_id) AS sessions
    FROM funnel_data
    WHERE funnel_step IN ('Product View', 'Add to Cart', 'Checkout', 'Conversion')
    GROUP BY funnel_step)
SELECT funnel_step,sessions,sessions * 1.0 / LAG(sessions, 1, sessions) 
OVER (ORDER BY CASE funnel_step
                WHEN 'Product View' THEN 1
                WHEN 'Add to Cart' THEN 2
                WHEN 'Checkout' THEN 3
                WHEN 'Conversion' THEN 4
            END) AS step_conversion_rate
FROM FunnelCounts
ORDER BY CASE funnel_step
        WHEN 'Product View' THEN 1
        WHEN 'Add to Cart' THEN 2
        WHEN 'Checkout' THEN 3
        WHEN 'Conversion' THEN 4
END;

