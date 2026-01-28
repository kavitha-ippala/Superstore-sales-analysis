create DATABASE  superstore_db;
USE superstore_db;

CREATE TABLE samplesuperstore (
    ship_mode VARCHAR(50),
    segment VARCHAR(50),
    country VARCHAR(50),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code INT,
    region VARCHAR(50),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    sales DECIMAL(10,2),
    quantity INT,
    discount DECIMAL(4,2),
    profit DECIMAL(10,2)
);

select * from samplesuperstore;
SELECT COUNT(*) AS total_rows FROM samplesuperstore;

SELECT sales, profit FROM samplesuperstore LIMIT 5;

-- TOTAL SALES AND PROFIT
SELECT 
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit
FROM samplesuperstore;


-- SALES BY CATEGORY
SELECT category,
    ROUND(SUM(sales),2) AS category_sales
FROM samplesuperstore
GROUP BY category;


-- PROFIT BY REGION
SELECT region,
    ROUND(SUM(profit),2) AS region_profit
FROM samplesuperstore
GROUP BY region;


-- LOSS MAKING SUB-CATEGORIES
SELECT sub_category,
    ROUND(SUM(profit),2) AS loss
FROM samplesuperstore
GROUP BY sub_category
HAVING loss < 0;


-- TOP 5 STATES BY SALES
SELECT state,
    ROUND(SUM(sales),2) AS state_sales
FROM samplesuperstore
GROUP BY state
ORDER BY state_sales DESC
LIMIT 5;


-- SALES AND PROFIT BY SEGMENT
SELECT segment,
    ROUND(SUM(sales),2) AS total_sales,
    ROUND(SUM(profit),2) AS total_profit
FROM samplesuperstore
GROUP BY segment;


-- DISCOUNT IMPACT ON PROFIT
SELECT discount,
    ROUND(SUM(profit),2) AS profit
FROM samplesuperstore
GROUP BY discount
ORDER BY discount;


-- TOP 5 PROFIT SUB-CATEGORIES
SELECT sub_category,
    ROUND(SUM(profit),2) AS profit
FROM samplesuperstore
GROUP BY sub_category
ORDER BY profit DESC
LIMIT 5;


-- BOTTOM 5 LOSS MAKING STATES
SELECT state,
    ROUND(SUM(profit),2) AS loss
FROM samplesuperstore
GROUP BY state
HAVING loss < 0
ORDER BY loss;


-- AVERAGE ORDER VALUE
SELECT 
    ROUND(AVG(sales),2) AS avg_order_value
FROM samplesuperstore;


-- ORDERS WITH HIGH DISCOUNT AND LOSS
SELECT discount,sales,profit
FROM samplesuperstore
WHERE discount >= 0.5 AND profit < 0
LIMIT 10;










