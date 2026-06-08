#Monthly Revenue and Order Volume Analysis
SELECT
    strftime('%Y', "Date") AS year,
    strftime('%m', "Date") AS month,
    ROUND(SUM("Total Revenue"), 2) AS monthly_revenue
FROM online_sales
GROUP BY year, month
ORDER BY monthly_revenue DESC
LIMIT 3;

#Top 3 Months by Revenue
SELECT
    Region,
    ROUND(SUM("Total Revenue"), 2) AS total_revenue
FROM online_sales
GROUP BY Region
ORDER BY total_revenue DESC;

#Revenue by Region
SELECT
    Region,
    ROUND(SUM("Total Revenue"), 2) AS total_revenue
FROM online_sales
GROUP BY Region
ORDER BY total_revenue DESC;

#Orders by Payment Method
SELECT
    "Payment Method",
    COUNT(*) AS total_orders
FROM online_sales
GROUP BY "Payment Method"
ORDER BY total_orders DESC;

#Product Category Performance
SELECT
    "Product Category",
    ROUND(SUM("Total Revenue"), 2) AS revenue
FROM online_sales
GROUP BY "Product Category"
ORDER BY revenue DESC;
