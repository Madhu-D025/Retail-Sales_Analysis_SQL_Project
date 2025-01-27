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



