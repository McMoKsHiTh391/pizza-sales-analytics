# pizza-sales-analytics
📊 Pizza Sales Analysis — SQL & Power BI

An end-to-end business intelligence project analyzing pizza sales data using SQL for data processing and Power BI for interactive dashboard creation.

🚀 Project Overview

This project focuses on understanding the sales performance of a pizza store using data-driven insights.
SQL is used for data cleaning, data transformation, and generating key metrics, while Power BI is used to create interactive dashboards and visual summaries.

🛠️ Tech Stack Used

SQL (MySQL/PostgreSQL) – Data cleaning, transformation & analysis

Power BI – Interactive dashboards & DAX calculations

DAX – Custom measures for KPIs

📂 Project Workflow (End-to-End)

Data Collection

Raw pizza sales dataset (orders, order details, pizzas, categories).

Data Cleaning & Preparation (SQL)

Removed null/duplicate entries

Standardized date formats

Joined datasets to create analysis-ready tables

Exploratory Data Analysis (SQL)

Total revenue

Total orders

Best/worst selling pizzas

Sales by category & size

Daily/Monthly trends

Average order value

Power BI Dashboard Development

Data import

Data modeling

DAX measures for KPIs

Visualizations for insights

Insight Generation

Identified top-performing products

Seasonal/monthly trends

Customer purchase patterns

🧮 Key SQL Queries Used

Total sales (revenue):

SELECT SUM(total_price) AS total_revenue FROM pizza_sales;


Monthly trend analysis:

SELECT DATE_TRUNC('month', order_date) AS month, 
       SUM(total_price) AS monthly_sales
FROM pizza_sales
GROUP BY 1
ORDER BY 1;


Best selling pizza:

SELECT pizza_name, SUM(quantity) AS total_quantity
FROM pizza_sales
GROUP BY pizza_name
ORDER BY total_quantity DESC
LIMIT 1;

📊 Power BI Dashboard KPIs

Total Revenue

Total Orders

Average Order Value (AOV)

Total Pizzas Sold

Category-wise Sales

Size-wise Sales

Daily Sales Trend

Monthly Sales Trend

Best & Worst Selling Pizzas

📸 Dashboard Preview

(Add your dashboard screenshots here)

🔍 Insights & Findings

✔ Classic category contributes the highest revenue
✔ Large-size pizzas are the most frequently ordered
✔ Sales peak during weekends
✔ Monthly trend shows strong seasonality
✔ A few top pizzas contribute a large share of total revenue

📁 Repository Structure
📦 pizza-sales-analysis
 ┣ 📂 SQL
 ┃ ┗ queries.sql
 ┣ 📂 PowerBI
 ┃ ┗ pizza_sales_dashboard.pbix
 ┣ 📂 Images
 ┃ ┗ dashboard_screenshots.png
 ┣ README.md
 ┗ dataset.csv

🎯 Conclusion

This project demonstrates how to build a complete end-to-end data analytics pipeline using SQL and Power BI. It highlights data cleaning, transformation, visualization, and business-driven insights for decision-making.

🤝 Feel Free to Connect

If you like this project, ⭐ the repo and connect with me on GitHub/LinkedIn!
