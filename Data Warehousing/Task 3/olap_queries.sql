-- Roll-up: Total sales by country and quarter
SELECT 
    c.country,
    t.quarter,
    SUM(sf.total_sales) AS total_sales
FROM SalesFact sf
JOIN Customer c ON sf.customer_id = c.customer_id
JOIN Time t ON sf.time_id = t.time_id
GROUP BY c.country, t.quarter
ORDER BY c.country, t.quarter;


-- Drill-down: Sales for UK by month
SELECT 
    t.year,
    t.month,
    SUM(sf.total_sales) AS total_sales
FROM SalesFact sf
JOIN Customer c ON sf.customer_id = c.customer_id
JOIN Time t ON sf.time_id = t.time_id
WHERE c.country = 'United Kingdom'
GROUP BY t.year, t.month
ORDER BY t.year, t.month;


-- Slice: Total sales for electronics category
SELECT 
    p.category,
    SUM(sf.total_sales) AS total_sales
FROM SalesFact sf
JOIN Product p ON sf.product_id = p.product_id
WHERE p.category = 'Electronics'
GROUP BY p.category;

