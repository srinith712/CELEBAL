# E-Commerce Order Analytics System

## Project Overview

This project is an end-to-end E-Commerce Order Analytics System developed using **Python** and **SQLite**. The project demonstrates data generation, data cleaning, SQL analysis, reporting, and edge-case testing.

---

## Technologies Used

- Python
- Pandas
- Faker
- SQLite
- SQL
- Databricks

---

## Project Structure

```
Assignment-8/

│── 01_data_generation.py
│── 02_data_cleaning.py
│── 03_sql_analysis.py
│── 04_report_tool.py
│── 05_edge_case_tests.py
│── customers.csv
│── products.csv
│── orders.csv
│── order_items.csv
│── customers_clean.csv
│── products_clean.csv
│── orders_clean.csv
│── order_items_clean.csv
│── ecommerce.db
│── README.md
```

---

## Project Workflow

### Step 1 – Data Generation
- Generated realistic fake data using Faker.
- Created four CSV files:
  - customers.csv
  - products.csv
  - orders.csv
  - order_items.csv
- Added intentional data issues such as:
  - Missing customer IDs
  - Invalid email addresses
  - Incorrect date formats
  - Negative quantities
  - Discount greater than 100%
  - Orphan order IDs

---

### Step 2 – Data Cleaning
- Cleaned missing values.
- Standardized date formats.
- Normalized product names.
- Validated email addresses.
- Checked referential integrity.
- Exported cleaned CSV files.

---

### Step 3 – SQL Analysis
Loaded cleaned data into SQLite and performed SQL analysis including:

- Total revenue by category
- Top 10 customers
- Monthly order count
- Return rate analysis
- Running totals
- Product ranking using DENSE_RANK()
- LAG() analysis
- Customer segmentation using NTILE()
- Cohort analysis
- Frequently bought together products

---

### Step 4 – Report Tool

A simple Python reporting tool generates:

- Total Orders
- Total Revenue
- Unique Customers
- Top 3 Products
- Previous period comparison

---

### Step 5 – Edge Case Testing

Tested the following scenarios:

- Invalid order references
- Discount greater than 100%
- Zero quantity orders
- Future-dated orders

---

## How to Run

Run the files in the following order:

```
01_data_generation.py

↓

02_data_cleaning.py

↓

03_sql_analysis.py

↓

04_report_tool.py

↓

05_edge_case_tests.py
```

---

## Sample Reports

The project generates reports showing:

- Revenue Summary
- Customer Analysis
- Product Analysis
- Monthly Sales
- Return Analysis
- Cohort Analysis

---

## Learning Outcomes

Through this project I learned:

- Data Generation using Faker
- Data Cleaning using Pandas
- SQLite Database Management
- SQL Joins
- Aggregate Functions
- Window Functions
- Common Table Expressions (CTEs)
- Customer Analytics
- Report Generation
- Edge Case Testing

---
