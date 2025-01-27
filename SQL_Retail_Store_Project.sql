create database Retail_Sales;
use Retail_Sales;
create table R_Store(
transactions_id int primary key,
sale_date Date,
sale_time Time,
customer_id int,
gender varchar(15),
age int,
category varchar(15),
quantiy int,
price_per_unit int,
cogs int,
total_sale int
);
select count(*) from R_Store;
-- For Checking the Null Values
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
-- If there is any NUll values then delect it;
-- 1) SQL queiry  retrieve all the records from the table
select * from R_Store;
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



