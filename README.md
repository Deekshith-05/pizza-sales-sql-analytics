# Pizza Sales SQL Analytics Project

## Overview

This project analyzes pizza restaurant sales data using SQL, DuckDB, Python, and data visualization. The goal is to identify revenue trends, product performance, peak business hours, slow sales periods, and business opportunities for staffing, inventory, and promotions.

## Dataset

The dataset used in this project was sourced from Kaggle.

**Dataset:** Pizza Restaurant Sales  
**Source:** Kaggle  
**Dataset Link:** https://www.kaggle.com/datasets/shilongzhuang/pizza-sales

The dataset contains transaction-level pizza sales records, including:

- Order date
- Order time
- Pizza name
- Pizza category
- Pizza size
- Quantity
- Unit price
- Total price
- Ingredients

This dataset is used only for educational and portfolio purposes. Full credit goes to the original Kaggle dataset contributor.

## Tools Used

- SQL
- DuckDB
- Python
- Pandas
- Matplotlib
- Seaborn
- Jupyter Notebook

## Key Business Questions

1. What are the overall sales performance metrics?
2. How does revenue change by month?
3. Which pizzas sell the most?
4. Which pizzas generate the highest revenue?
5. Which pizza categories and sizes perform best?
6. What are the busiest and slowest hours by weekday?
7. How can the business improve staffing, inventory, and promotion planning?

## Key Metrics

- Total orders: 21,350
- Total pizzas sold: 49,574
- Total revenue: approximately $817,860

## Analysis Performed

- KPI summary analysis
- Monthly revenue trend
- Month-over-month revenue growth
- Daily revenue trend
- Top-selling pizzas by quantity
- Top pizzas by revenue
- Pizza category performance
- Pizza size revenue analysis
- Weekday revenue analysis
- Hourly revenue analysis
- Peak hour analysis by weekday
- Slow hour analysis by weekday
- Weekday-hour revenue heatmap

## Key Insights

- Weekday lunch hours show strong revenue performance, especially between 11 AM and 2 PM.
- Weekend evenings show higher demand, especially around 6 PM to 8 PM.
- Morning and late-night periods generate lower revenue across most days.
- Top-selling pizzas by quantity are useful for inventory planning.
- Top pizzas by revenue are useful for promotion and pricing decisions.
- The business can improve staffing and preparation by aligning resources with peak demand periods.

## Business Recommendations

- Increase staffing during weekday lunch and weekend dinner periods.
- Prepare more ingredients before high-demand periods.
- Use quieter hours for preparation, cleaning, and stock checking.
- Promote larger orders and bundles during weekend evenings.
- Use revenue-based product insights to design better promotions.

## Project Structure

```text
pizza-sales-sql-analytics/
│
├── data/
│   └── pizza_sales.csv
│
├── notebooks/
│   └── pizza_sales_analysis.ipynb
│
├── sql/
│   ├── hourly_revenue.sql
│   ├── peak_hours.sql
│   ├── slow_hours.sql
│   └── heatmap_pivot.sql
│
├── images/
│   ├── hourly_revenue_trend.png
│   └── weekday_hour_heatmap.png
│
├── README.md
├── requirements.txt
└── .gitignore