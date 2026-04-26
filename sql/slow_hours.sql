SELECT
    weekday_num,
    weekday_name,
    hour,
    CASE
        WHEN hour = 0 THEN '12AM'
        WHEN hour BETWEEN 1 AND 11 THEN hour || 'AM'
        WHEN hour = 12 THEN '12PM'
        ELSE (hour-12) || 'PM'
        END AS hour_label,
    revenue
FROM (
    SELECT 
        EXTRACT(DOW FROM order_date) AS weekday_num,
        strftime(order_date,'%A') AS weekday_name,
        EXTRACT(HOUR FROM order_time) AS hour,
        SUM(total_price) AS revenue,
        ROW_NUMBER()OVER(
            PARTITION BY EXTRACT(DOW FROM order_date)
            ORDER BY SUM(total_price)
        ) AS rn
    FROM pizza_sales
    GROUP BY weekday_num,weekday_name,hour
)
WHERE rn=1
ORDER BY weekday_num;
""").fetchdf()