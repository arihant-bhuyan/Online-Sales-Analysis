-- Exploratory Data Analysis --

-- Business Questions Addressed --
-- 1. What are the top-selling products category across different regions?
SELECT 
	region,
    product_category,
    SUM(unit_sold) AS total_units_sold
FROM
    sales
GROUP BY region, product_category
Order By total_units_sold desc;

-- 2. Which product categories generate the most revenue?
SELECT 
    product_category, SUM(total_revenue) AS total_revenue
FROM
    sales
GROUP BY product_category
ORDER BY total_revenue DESC;

-- 3. How do sales trends change over time? Are there any seasonal trends?
SELECT 
    YEAR(date) AS Year,
    month_name AS Month,
    SUM(total_revenue) AS total_revenue,
    SUM(unit_sold) AS total_units_sold
FROM 
    sales
GROUP BY 
    YEAR(Date), month_name
ORDER BY 
    year, month_name;
    
-- 4. Which regions generate the highest sales revenue?
SELECT 
	region,
    SUM(total_revenue) AS total_revenue
FROM
    sales
GROUP BY region
Order By total_revenue desc;

-- 5. What are the payment methods preferred by customers, and do they influence sales?
SELECT 
	payment_method,
    COUNT(payment_method) AS Count_Payment_Method,
    SUM(unit_sold) as unit_sales,
    SUM(total_revenue) as total_revenue,
    AVG(total_revenue) as avg_total_revenue
FROM
    sales
GROUP BY payment_method
Order By total_revenue desc;

-- 6. Are there any significant fluctuations in sales across regions and time periods?
SELECT 
	region,
    month_name,
    SUM(unit_sold) as unit_sales,
    SUM(total_revenue) AS total_revenue
FROM
    sales
GROUP BY month_name, Region
Order By Region desc;
    
-- 7. What is the relationship between product pricing and units sold?
SELECT 
    CASE 
        WHEN Unit_Price BETWEEN 0 AND 50 THEN 'Below 50'
        WHEN Unit_Price BETWEEN 51 AND 100 THEN '50 to 100'
        WHEN Unit_Price BETWEEN 101 AND 200 THEN '101 to 200'
        WHEN Unit_Price BETWEEN 201 AND 500 THEN '201 to 500'
        WHEN Unit_Price BETWEEN 501 AND 700 THEN '501 to 700'
        WHEN Unit_Price > 700 THEN '701 and above'
    END AS price_range,
    SUM(Unit_Sold) AS total_units_sold,
    SUM(Total_Revenue) AS total_revenue
FROM 
    sales
GROUP BY 
    price_range
ORDER BY 
    total_units_sold desc;
    
-- 8. How does the performance of different regions compare in terms of product categories?
SELECT 
    Region, 
    Product_Category, 
    SUM(Total_Revenue) AS total_revenue,
    SUM(Unit_Sold) AS total_units_sold
FROM 
    sales
GROUP BY 
    Region, Product_Category
ORDER BY 
    total_revenue DESC;

-- 9. What patterns can be identified in customer buying behavior across regions and product categories?
SELECT 
    Region, 
    Product_Category, 
    COUNT(Transaction_ID) AS total_purchases,
    SUM(Unit_Sold) AS total_units_sold,
    SUM(Total_Revenue) AS total_revenue,
    AVG(Total_Revenue) AS avg_revenue_per_purchase,
    AVG(Unit_Sold) AS avg_units_sold_per_purchase
FROM 
    sales
GROUP BY 
    Region, Product_Category
ORDER BY 
    Region, total_revenue DESC;

