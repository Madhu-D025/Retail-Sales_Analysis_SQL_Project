# Retail-Sales_Analysis_SQL_Project
## Project Overview
### Project Title: Retail Sales Analysis
### Database: Retail_Sales
The main objective of this project is to analyze retail sales data to uncover key trends and provide actionable insights that can drive informed business decisions and improve sales performance. This includes understanding sales performance by identifying top-performing products, categories, and regions while measuring total revenue and growth over time. The project aims to analyze seasonal sales trends, determine customer preferences, and evaluate the profitability of different products and regions. By addressing critical business questions such as identifying underperforming regions or stores, understanding the contribution of various categories to overall revenue, and detecting anomalies in sales patterns, the project seeks to enhance decision-making. Additionally, advanced objectives such as forecasting future sales trends, optimizing pricing and promotional strategies, and segmenting customers for targeted marketing may also be explored to provide a comprehensive analysis of the retail sales data.

## Project Objective
- Analyze Sales Performance: Identify top-performing products, categories, and regions while evaluating total revenue and growth over time
- Uncover Trends: Detect seasonal sales trends and understand patterns in customer purchasing behavior.
- Profitability Evaluation: Assess the profitability of different products, categories, and regions to optimize inventory and resource allocation.
- Customer Insights: Provide insights into customer preferences and behavior for better-targeted marketing strategies.
- Forecasting and Decision Support: Predict future sales trends using historical data and provide actionable insights to support strategic decision-making.

## Project Structure
### 1. Database Setup
- Database Creation: The project starts by creating a database named Retail_Sales.
- Table Creation: A table named retail_sales is created to store the sales data. The table structure includes columns for transaction ID, sale date, sale time, customer ID, gender, age, product category, quantity sold, price per unit, cost of goods sold (COGS), and total sale amount.

'''sql

CREATE DATABASE p1_retail_db;

CREATE TABLE retail_sales
(
    transactions_id INT PRIMARY KEY,
    sale date DATE,
    sale time TIME,
    customer_id INT
    gender VARCHAR(10),
    age INT,
    category VARCHAR(35),
    quantity INT,
    price_per_unit FLOAT,
    cogs FLOAT,
    total sale FLOAT
);

'''
-- SQL query for Checking the Null Values
'''sql
select count(*) from R_Store 
where 
	transactions_id is null
    or
    sale_date is null
    or
    sale_time is null
    or
    customer_id is null
    or
    gender is null
    or
    age is null
    or
    category is null
    or
    quantiy is null
    or
    price_per_unit is null
    or
    cogs is null
    or
    total_sale is null;
'''

-- 1) SQL queiry  retrieve all the records from the table
select * from R_Store;
<br>
-- 2) sql query filter rows where sales_amount is greater than 1000
select * from R_Store where total_sale > 1000;
-- 3) sql query sort the data by sales_amount in descending order
select * from R_Store order by total_sale desc;
-- 4) sql query to filter data with multiple conditions, such as region = 'North' and sales_amount > 1000
select * from R_Store where category = 'Clothing' and total_sale > 1000;
-- 5) sql query to group sales by product_category and calculate the total sales for each category
select category, sum(total_sale) as Total_Sales from R_Store group by category;
-- 6) sql query retrieve the top 10 records with the highest sales_amount
select * from R_Store order by total_sale desc limit 10;
-- 7) Write a SQL query to retrieve all columns for sales made on '2022-11-05:
select * from R_Store where sale_date = '2022-11-05';
-- 8) Write a SQL query to retrieve all transactions where the category is 'Clothing' and the quantity sold is more than 4 in the month of Nov-2022:
select * from R_Store where category = 'Clothing' and date_format(sale_date, '%Y-%m') = '2022-11' and quantiy >= 4;
-- 9) Write a SQL query to calculate the total sales (total_sale) for each category.:
select category, sum(total_sale) from R_Store group by category;
-- 10) Write a SQL query to find the average age of customers who purchased items from the 'Beauty' category.
select avg(age) from R_Store where category = 'Beauty';
-- 11) Write a SQL query to find the total number of transactions (transaction_id) made by each gender in each category.
select gender, count(transactions_id) from R_Store group by gender;
-- 12) Write a SQL query to find the number of unique customers who purchased items from each category.: 
select category, count(distinct customer_id) from R_Store group by category;



