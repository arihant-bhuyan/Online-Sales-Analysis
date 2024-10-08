-- Feature Engineering --
-- day_name
 SELECT 
    date,
    dayname(date) as day_name
FROM
    sales;
    
ALTER TABLE sales ADD COLUMN day_name VARCHAR(10);

UPDATE sales
set day_name = DAYNAME(date);

-- month name
SELECT 
    date, MONTHNAME(date) as month_name
FROM
    sales;
    
ALTER TABLE sales ADD COLUMN month_name VARCHAR(10);

UPDATE sales
set month_name = MONTHNAME(date);