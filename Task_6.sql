SELECT
    strftime('%Y', "Date") AS year,
    strftime('%m', "Date") AS month,
    ROUND(SUM("Total Revenue"), 2) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;