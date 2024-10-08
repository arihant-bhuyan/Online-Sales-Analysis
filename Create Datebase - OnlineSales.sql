CREATE DATABASE IF NOT EXISTS OnlineSales;

CREATE TABLE IF NOT EXISTS sales(
	transaction_id VARCHAR(30) NOT NULL PRIMARY KEY,
    product_category VARCHAR(30) NOT NULL,
	product_name VARCHAR(30) NOT NULL,
    region VARCHAR(30) NOT NULL,
    unit_price DECIMAL(10,2) NOT NUll,
    unit_sold INT NOT NULL,
    total_revenue DECIMAL(12, 4) NOT NULL,
    date DATETIME NOT NULL,
    payment_method VARCHAR(15) NOT NULL);
