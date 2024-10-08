# Online-Sales-Analysis
## Project Overview

This project analyzes online sales data to provide insights into sales performance across various product categories, regions, and time periods. The analysis seeks to uncover trends in customer behavior, identify top-selling products, and evaluate the effectiveness of payment methods. The findings help optimize sales strategies and improve business decision-making.

The project explores several key aspects of sales data, including:

- Trends in total revenue and units sold over time.
- Top-selling products and regions.
- The influence of pricing on customer purchasing behavior.
- Preferred payment methods and their impact on sales.
- Seasonal trends and fluctuations in sales performance.

## About the Dataset

The dataset `Online Sales Data.csv` contains the following columns:

- **Transaction ID**: Unique identifier for each transaction.
- **Date**: Transaction date.
- **Product Category**: Category of the product sold.
- **Product Name**: Name of the product sold.
- **Units Sold**: Quantity of product sold.
- **Unit Price**: Price per unit of the product.
- **Total Revenue**: Total revenue generated from the transaction.

## Business Questions

This analysis aims to answer the following business questions:

1. **What are the top-selling product categories across different regions?**
2. **Which product categories generate the most revenue?**
3. **How do sales trends change over time? Are there any seasonal trends?**
4. **Which regions generate the highest sales revenue?**
5. **What payment methods are preferred by customers, and do they influence sales?**
6. **Are there significant fluctuations in sales across regions and time periods?**
7. **What is the relationship between product pricing and units sold?**
8. **How does the performance of different regions compare in terms of product categories?**
9. **What patterns can be identified in customer buying behavior across regions and product categories?**

## Project Structure

The project is divided into the following sections:

### 1. Data Cleaning
- The initial step involves cleaning the dataset to remove any inconsistencies, handle missing values, and ensure data types are correct.
- Constraint such as `NOT NULL` was enforced during database creation to maintain data quality.

### 2. Feature Engineering
- Additional features were created to enrich the dataset. This included creating columns for day and month to identifying seasonality trends. 

### 3. Exploratory Data Analysis (EDA)
- We conducted an in-depth exploration of the dataset to uncover trends and insights across dimensions such as product categories, regions, and time periods.
- Key findings from the EDA helped in shaping further analysis.

### 4. Sales Trend Analysis
- A detailed analysis of sales trends was performed to determine fluctuations in sales over time, identify peak sales periods, and highlight seasonal trends.

### 5. Region-Based Performance Analysis
- Sales performance was compared across regions to identify which geographical areas generated the most revenue, had the highest units sold, and showed the strongest demand for specific product categories.

### 6. Payment Method Analysis
- We investigated the impact of different payment methods on sales performance, helping to understand customer preferences and how payment methods might influence total revenue.

### 7. Key Findings
- Insights from the analysis, such as the most popular product categories, regions with the highest revenue, and customer buying behavior, were summarized and recommendations for optimizing sales strategies were provided.

## SQL Scripts
1. **Database Creation**  
   Script: `Create Database - OnlineSales.sql`  
   This script creates the necessary tables for storing the online sales data and applies appropriate constraints to ensure data integrity.

2. **Feature Engineering**  
   Script: `Feature Engineering.sql`
   This script adds new features to the dataset, such as day and month, to enhance the analysis.

3. **Exploratory Data Analysis (EDA)**  
   Script: `Exploratory Data Analysis.sql`  
   This script performs initial data exploration, including calculating summary statistics and visualizing trends.

## Conclusion

The **Online Sales Data Analysis** provides a comprehensive view of the performance of various product categories and regions. The findings help inform business decisions around product pricing, inventory management, and sales strategies. By understanding customer preferences and seasonal trends, businesses can optimize their offerings and drive better sales outcomes.

