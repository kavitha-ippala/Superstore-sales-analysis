# Superstore Sales Analysis – EDA & SQL Project

## 📌 Project Overview
This project focuses on analyzing retail sales data from the **Sample Superstore dataset**
using **Exploratory Data Analysis (EDA) in Python** and **analytical queries in SQL**.

The objective is to understand **sales performance, profitability, discount impact,
and regional trends** and extract meaningful **business insights**.

---

## 📂 Dataset Details
- **Dataset:** Sample Superstore
- **Source:** Kaggle
- **Type:** Retail transactional data

### Key Columns Analyzed:
- Sales
- Profit
- Quantity
- Discount
- Category
- Sub-Category
- Region

---

## 🔍 Exploratory Data Analysis (Python)

EDA was performed using **Pandas, NumPy, Matplotlib, and Seaborn** in Jupyter Notebook.

### Analysis Performed:
- Dataset overview and data understanding
- Data cleaning (null & duplicate checks)
- Descriptive statistics
- Univariate analysis of Sales and Profit
- Category-wise sales and profit analysis
- Sub-category profit analysis
- Region-wise sales and profit analysis
- Discount vs Profit relationship
- Sales vs Profit relationship

### Key EDA Insights:
- Technology category generates the highest sales and profit
- Furniture category has lower profit margins
- Tables sub-category consistently incurs losses
- West region outperforms other regions in sales and profit
- Higher discounts often lead to reduced or negative profit

---

## 🧮 SQL Analysis

SQL queries were written using **MySQL** to validate and reinforce insights derived from EDA.

### SQL Analysis Includes:
- Total sales and total profit calculation
- Category-wise sales and profit analysis
- Region-wise performance comparison
- Identification of loss-making sub-categories
- Discount impact on profitability

All queries are written in a clean and readable format and can be executed in
**MySQL Workbench**.

---

## 🛠 Tools & Technologies
- **Python:** Pandas, NumPy, Matplotlib, Seaborn
- **SQL:** MySQL
- **Jupyter Notebook**
- **Git & GitHub**
- **Power BI** (Dashboard created separately)

---

# Superstore Sales & Profit Analysis (Power BI)

## Project Overview
This Power BI dashboard analyzes sales and profitability using the Sample Superstore dataset.

## Key KPIs
- Total Sales
- Total Profit
- Profit Margin %
- Total Quantity Sold

## Visuals Included
- Sales by Category
- Profit by Region
- Profit by Sub-Category
- Discount vs Profit (Scatter)
- Interactive Slicers (Region, Category)

## Tools Used
- Power BI Desktop
- DAX
- Data Modeling

## DAX Measures
- Total Sales = SUM(Sales)
- Total Profit = SUM(Profit)
- Profit Margin % = DIVIDE(Total Profit, Total Sales)

## Insights
- Technology category generates the highest profit
- Tables & Bookcases result in losses
- Higher discounts negatively impact profit
