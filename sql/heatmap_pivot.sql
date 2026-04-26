SELECT
    weekday_name,
    SUM(CASE WHEN hour = 0 THEN revenue END) AS h0,
    SUM(CASE WHEN hour = 1 THEN revenue END) AS h1,
    SUM(CASE WHEN hour = 2 THEN revenue END) AS h2,
    SUM(CASE WHEN hour = 3 THEN revenue END) AS h3,
    SUM(CASE WHEN hour = 4 THEN revenue END) AS h4,
    SUM(CASE WHEN hour = 5 THEN revenue END) AS h5,
    SUM(CASE WHEN hour = 6 THEN revenue END) AS h6,
    SUM(CASE WHEN hour = 7 THEN revenue END) AS h7,
    SUM(CASE WHEN hour = 8 THEN revenue END) AS h8,
    SUM(CASE WHEN hour = 9 THEN revenue END) AS h9,
    SUM(CASE WHEN hour = 10 THEN revenue END) AS h10,
    SUM(CASE WHEN hour = 11 THEN revenue END) AS h11,
    SUM(CASE WHEN hour = 12 THEN revenue END) AS h12,
    SUM(CASE WHEN hour = 13 THEN revenue END) AS h13,
    SUM(CASE WHEN hour = 14 THEN revenue END) AS h14,
    SUM(CASE WHEN hour = 15 THEN revenue END) AS h15,
    SUM(CASE WHEN hour = 16 THEN revenue END) AS h16,
    SUM(CASE WHEN hour = 17 THEN revenue END) AS h17,
    SUM(CASE WHEN hour = 18 THEN revenue END) AS h18,
    SUM(CASE WHEN hour = 19 THEN revenue END) AS h19,
    SUM(CASE WHEN hour = 20 THEN revenue END) AS h20,
    SUM(CASE WHEN hour = 21 THEN revenue END) AS h21,
    SUM(CASE WHEN hour = 22 THEN revenue END) AS h22,
    SUM(CASE WHEN hour = 23 THEN revenue END) AS h23
FROM (
    SELECT
        strftime(order_date, '%A') AS weekday_name,
        EXTRACT(HOUR FROM order_time) AS hour,
        SUM(total_price) AS revenue
    FROM pizza_sales
    GROUP BY weekday_name, hour
)
GROUP BY weekday_name
ORDER BY
    CASE weekday_name
        WHEN 'Sunday' THEN 0
        WHEN 'Monday' THEN 1
        WHEN 'Tuesday' THEN 2
        WHEN 'Wednesday' THEN 3
        WHEN 'Thursday' THEN 4
        WHEN 'Friday' THEN 5
        WHEN 'Saturday' THEN 6
    END;