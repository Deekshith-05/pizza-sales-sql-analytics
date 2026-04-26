SELECT
    EXTRACT(DOW FROM order_date) AS weekday_num,
    strftime(order_date, '%A') AS weekday_name,
    EXTRACT(HOUR FROM order_time) AS hour,
    SUM(total_price) AS revenue
FROM pizza_sales
GROUP BY weekday_num, weekday_name, hour
ORDER BY weekday_num, hour;
