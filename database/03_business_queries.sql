-- ==========================================
-- QUERY 1 : Total Orders
-- ==========================================

SELECT COUNT(*) AS total_orders
FROM sales_data;


-- ==========================================
-- QUERY 2 : Total Sales
-- ==========================================

SELECT ROUND(SUM(sales),2) AS total_sales
FROM sales_data;


-- ==========================================
-- QUERY 3 : Total Profit
-- ==========================================

SELECT ROUND(SUM(profit),2) AS total_profit
FROM sales_data;


-- ==========================================
-- QUERY 4 : Average Sales
-- ==========================================

SELECT ROUND(AVG(sales),2) AS average_sales
FROM sales_data;


-- ==========================================
-- QUERY 5 : Total Customers
-- ==========================================

SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM sales_data;


-- ==========================================
-- QUERY 6 : Total Products
-- ==========================================

SELECT COUNT(DISTINCT product_id) AS total_products
FROM sales_data;


-- ==========================================
-- QUERY 7 : Total Countries
-- ==========================================

SELECT COUNT(DISTINCT country) AS total_countries
FROM sales_data;


-- ==========================================
-- QUERY 8 : Total Markets
-- ==========================================

SELECT COUNT(DISTINCT market) AS total_markets
FROM sales_data;


-- ==========================================
-- QUERY 9 : Total Quantity Sold
-- ==========================================

SELECT SUM(quantity) AS total_quantity
FROM sales_data;


-- ==========================================
-- QUERY 10 : Average Profit
-- ==========================================

SELECT ROUND(AVG(profit),2) AS average_profit
FROM sales_data;

-- ==========================================
-- QUERY 11 : Sales by Category
-- ==========================================

SELECT
    category,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY category
ORDER BY total_sales DESC;

-- ==========================================
-- QUERY 12 : Profit by Category
-- ==========================================

SELECT
    category,
    ROUND(SUM(profit),2) AS total_profit
FROM sales_data
GROUP BY category
ORDER BY total_profit DESC;

-- ==========================================
-- QUERY 13 : Sales by Sub Category
-- ==========================================

SELECT
    sub_category,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY sub_category
ORDER BY total_sales DESC;

-- ==========================================
-- QUERY 14 : Top 10 Customers
-- ==========================================

SELECT
    customer_name,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;

-- ==========================================
-- QUERY 15 : Top 10 Products
-- ==========================================

SELECT
    product_name,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;

-- ==========================================
-- QUERY 16 : Sales by Region
-- ==========================================

SELECT
    region,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY region
ORDER BY total_sales DESC;

-- ==========================================
-- QUERY 17 : Sales by Market
-- ==========================================

SELECT
    market,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY market
ORDER BY total_sales DESC;

-- ==========================================
-- QUERY 18 : Sales by Country
-- ==========================================

SELECT
    country,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY country
ORDER BY total_sales DESC;

-- ==========================================
-- QUERY 19 : Top 10 Cities by Sales
-- ==========================================

SELECT
    city,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY city
ORDER BY total_sales DESC
LIMIT 10;

-- ==========================================
-- QUERY 20 : Sales by Segment
-- ==========================================

SELECT
    segment,
    ROUND(SUM(sales),2) AS total_sales
FROM sales_data
GROUP BY segment
ORDER BY total_sales DESC;

-- =====================================================
-- QUERY 21 : Top 10 Customers by Sales
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY customer_name
ORDER BY total_sales DESC
LIMIT 10;


-- =====================================================
-- QUERY 22 : Top 10 Customers by Profit
-- =====================================================

SELECT
    customer_name,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY customer_name
ORDER BY total_profit DESC
LIMIT 10;


-- =====================================================
-- QUERY 23 : Top 10 Products by Sales
-- =====================================================

SELECT
    product_name,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 10;


-- =====================================================
-- QUERY 24 : Top 10 Products by Profit
-- =====================================================

SELECT
    product_name,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY product_name
ORDER BY total_profit DESC
LIMIT 10;


-- =====================================================
-- QUERY 25 : Average Sales by Category
-- =====================================================

SELECT
    category,
    ROUND(AVG(sales),2) AS average_sales
FROM sales_data
GROUP BY category
ORDER BY average_sales DESC;


-- =====================================================
-- QUERY 26 : Average Profit by Category
-- =====================================================

SELECT
    category,
    ROUND(AVG(profit),2) AS average_profit
FROM sales_data
GROUP BY category
ORDER BY average_profit DESC;


-- =====================================================
-- QUERY 27 : Highest Discount by Category
-- =====================================================

SELECT
    category,
    MAX(discount) AS highest_discount
FROM sales_data
GROUP BY category
ORDER BY highest_discount DESC;


-- =====================================================
-- QUERY 28 : Lowest Discount by Category
-- =====================================================

SELECT
    category,
    MIN(discount) AS lowest_discount
FROM sales_data
GROUP BY category
ORDER BY lowest_discount;


-- =====================================================
-- QUERY 29 : Total Shipping Cost by Region
-- =====================================================

SELECT
    region,
    ROUND(SUM(shipping_cost),2) AS total_shipping_cost
FROM sales_data
GROUP BY region
ORDER BY total_shipping_cost DESC;


-- =====================================================
-- QUERY 30 : Average Shipping Cost by Ship Mode
-- =====================================================

SELECT
    ship_mode,
    ROUND(AVG(shipping_cost),2) AS average_shipping_cost
FROM sales_data
GROUP BY ship_mode
ORDER BY average_shipping_cost DESC;

-- =====================================================
-- QUERY 31 : Top 10 Most Profitable Countries
-- =====================================================

SELECT
    country,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY country
ORDER BY total_profit DESC
LIMIT 10;


-- =====================================================
-- QUERY 32 : Bottom 10 Least Profitable Countries
-- =====================================================

SELECT
    country,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY country
ORDER BY total_profit ASC
LIMIT 10;


-- =====================================================
-- QUERY 33 : Categories with Sales Greater Than 1,000,000
-- =====================================================

SELECT
    category,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY category
HAVING SUM(sales) > 1000000;


-- =====================================================
-- QUERY 34 : Regions with Profit Greater Than 100,000
-- =====================================================

SELECT
    region,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY region
HAVING SUM(profit) > 100000;


-- =====================================================
-- QUERY 35 : Number of Orders by Ship Mode
-- =====================================================

SELECT
    ship_mode,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY ship_mode
ORDER BY total_orders DESC;


-- =====================================================
-- QUERY 36 : Number of Orders by Segment
-- =====================================================

SELECT
    segment,
    COUNT(*) AS total_orders
FROM sales_data
GROUP BY segment
ORDER BY total_orders DESC;


-- =====================================================
-- QUERY 37 : Average Discount by Category
-- =====================================================

SELECT
    category,
    ROUND(AVG(discount),2) AS average_discount
FROM sales_data
GROUP BY category
ORDER BY average_discount DESC;


-- =====================================================
-- QUERY 38 : Average Quantity Sold by Category
-- =====================================================

SELECT
    category,
    ROUND(AVG(quantity),2) AS average_quantity
FROM sales_data
GROUP BY category
ORDER BY average_quantity DESC;


-- =====================================================
-- QUERY 39 : Top 10 Cities by Profit
-- =====================================================

SELECT
    city,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY city
ORDER BY total_profit DESC
LIMIT 10;


-- =====================================================
-- QUERY 40 : Top 10 States by Profit
-- =====================================================

SELECT
    state,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY state
ORDER BY total_profit DESC
LIMIT 10;

-- =====================================================
-- QUERY 41 : Top 10 Highest Sales Orders
-- =====================================================

SELECT
    order_id,
    customer_name,
    sales
FROM sales_data
ORDER BY sales DESC
LIMIT 10;


-- =====================================================
-- QUERY 42 : Top 10 Highest Profit Orders
-- =====================================================

SELECT
    order_id,
    customer_name,
    profit
FROM sales_data
ORDER BY profit DESC
LIMIT 10;


-- =====================================================
-- QUERY 43 : Rank Customers by Total Sales
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    RANK() OVER(ORDER BY SUM(sales) DESC) AS sales_rank
FROM sales_data
GROUP BY customer_name;


-- =====================================================
-- QUERY 44 : Rank Products by Profit
-- =====================================================

SELECT
    product_name,
    SUM(profit) AS total_profit,
    RANK() OVER(ORDER BY SUM(profit) DESC) AS profit_rank
FROM sales_data
GROUP BY product_name;


-- =====================================================
-- QUERY 45 : Dense Rank Countries by Sales
-- =====================================================

SELECT
    country,
    SUM(sales) AS total_sales,
    DENSE_RANK() OVER(ORDER BY SUM(sales) DESC) AS sales_rank
FROM sales_data
GROUP BY country;


-- =====================================================
-- QUERY 46 : Row Number for Customers
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    ROW_NUMBER() OVER(ORDER BY SUM(sales) DESC) AS row_num
FROM sales_data
GROUP BY customer_name;


-- =====================================================
-- QUERY 47 : Top 5 Customers from Each Region
-- =====================================================

SELECT *
FROM (
    SELECT
        region,
        customer_name,
        SUM(sales) AS total_sales,
        ROW_NUMBER() OVER(
            PARTITION BY region
            ORDER BY SUM(sales) DESC
        ) AS rn
    FROM sales_data
    GROUP BY region, customer_name
) t
WHERE rn <= 5;


-- =====================================================
-- QUERY 48 : Average Sales by Market
-- =====================================================

SELECT
    market,
    ROUND(AVG(sales),2) AS avg_sales
FROM sales_data
GROUP BY market
ORDER BY avg_sales DESC;


-- =====================================================
-- QUERY 49 : Average Profit by Market
-- =====================================================

SELECT
    market,
    ROUND(AVG(profit),2) AS avg_profit
FROM sales_data
GROUP BY market
ORDER BY avg_profit DESC;


-- =====================================================
-- QUERY 50 : Profit Margin by Category
-- =====================================================

SELECT
    category,
    ROUND((SUM(profit)/SUM(sales))*100,2) AS profit_margin_percent
FROM sales_data
GROUP BY category
ORDER BY profit_margin_percent DESC;

-- =====================================================
-- QUERY 51 : Total Sales by Category using CTE
-- =====================================================

WITH category_sales AS (
    SELECT category, SUM(sales) AS total_sales
    FROM sales_data
    GROUP BY category
)
SELECT * FROM category_sales
ORDER BY total_sales DESC;


-- =====================================================
-- QUERY 52 : Total Profit by Region using CTE
-- =====================================================

WITH region_profit AS (
    SELECT region, SUM(profit) AS total_profit
    FROM sales_data
    GROUP BY region
)
SELECT * FROM region_profit
ORDER BY total_profit DESC;


-- =====================================================
-- QUERY 53 : Top 5 Customers using CTE
-- =====================================================

WITH customer_sales AS (
    SELECT customer_name, SUM(sales) AS total_sales
    FROM sales_data
    GROUP BY customer_name
)
SELECT *
FROM customer_sales
ORDER BY total_sales DESC
LIMIT 5;


-- =====================================================
-- QUERY 54 : Top 5 Products using CTE
-- =====================================================

WITH product_sales AS (
    SELECT product_name, SUM(sales) AS total_sales
    FROM sales_data
    GROUP BY product_name
)
SELECT *
FROM product_sales
ORDER BY total_sales DESC
LIMIT 5;


-- =====================================================
-- QUERY 55 : Average Sales by Country using CTE
-- =====================================================

WITH country_sales AS (
    SELECT country, AVG(sales) AS avg_sales
    FROM sales_data
    GROUP BY country
)
SELECT *
FROM country_sales
ORDER BY avg_sales DESC;


-- =====================================================
-- QUERY 56 : Average Profit by Country using CTE
-- =====================================================

WITH country_profit AS (
    SELECT country, AVG(profit) AS avg_profit
    FROM sales_data
    GROUP BY country
)
SELECT *
FROM country_profit
ORDER BY avg_profit DESC;


-- =====================================================
-- QUERY 57 : Sales Greater Than Overall Average
-- =====================================================

WITH avg_sales AS (
    SELECT AVG(sales) AS overall_avg
    FROM sales_data
)
SELECT *
FROM sales_data
WHERE sales > (SELECT overall_avg FROM avg_sales);


-- =====================================================
-- QUERY 58 : Profit Greater Than Overall Average
-- =====================================================

WITH avg_profit AS (
    SELECT AVG(profit) AS overall_avg
    FROM sales_data
)
SELECT *
FROM sales_data
WHERE profit > (SELECT overall_avg FROM avg_profit);


-- =====================================================
-- QUERY 59 : Total Orders by Market using CTE
-- =====================================================

WITH market_orders AS (
    SELECT market, COUNT(*) AS total_orders
    FROM sales_data
    GROUP BY market
)
SELECT *
FROM market_orders
ORDER BY total_orders DESC;


-- =====================================================
-- QUERY 60 : Total Quantity by Category using CTE
-- =====================================================

WITH category_quantity AS (
    SELECT category, SUM(quantity) AS total_quantity
    FROM sales_data
    GROUP BY category
)
SELECT *
FROM category_quantity
ORDER BY total_quantity DESC;

-- =====================================================
-- QUERY 61 : Create Sales by Category View
-- =====================================================

CREATE OR REPLACE VIEW vw_sales_by_category AS
SELECT
    category,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY category;

SELECT * FROM vw_sales_by_category;


-- =====================================================
-- QUERY 62 : Create Profit by Region View
-- =====================================================

CREATE OR REPLACE VIEW vw_profit_by_region AS
SELECT
    region,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY region;

SELECT * FROM vw_profit_by_region;


-- =====================================================
-- QUERY 63 : Create Sales by Country View
-- =====================================================

CREATE OR REPLACE VIEW vw_sales_by_country AS
SELECT
    country,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY country;

SELECT * FROM vw_sales_by_country;


-- =====================================================
-- QUERY 64 : Create Sales by Segment View
-- =====================================================

CREATE OR REPLACE VIEW vw_sales_by_segment AS
SELECT
    segment,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY segment;

SELECT * FROM vw_sales_by_segment;


-- =====================================================
-- QUERY 65 : Create Top Customers View
-- =====================================================

CREATE OR REPLACE VIEW vw_top_customers AS
SELECT
    customer_name,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY customer_name
ORDER BY total_sales DESC;

SELECT * FROM vw_top_customers LIMIT 10;


-- =====================================================
-- QUERY 66 : Create Top Products View
-- =====================================================

CREATE OR REPLACE VIEW vw_top_products AS
SELECT
    product_name,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY product_name
ORDER BY total_sales DESC;

SELECT * FROM vw_top_products LIMIT 10;


-- =====================================================
-- QUERY 67 : Create Shipping Cost View
-- =====================================================

CREATE OR REPLACE VIEW vw_shipping_cost AS
SELECT
    ship_mode,
    AVG(shipping_cost) AS avg_shipping_cost
FROM sales_data
GROUP BY ship_mode;

SELECT * FROM vw_shipping_cost;


-- =====================================================
-- QUERY 68 : Create Market Sales View
-- =====================================================

CREATE OR REPLACE VIEW vw_market_sales AS
SELECT
    market,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY market;

SELECT * FROM vw_market_sales;


-- =====================================================
-- QUERY 69 : Create Category Profit View
-- =====================================================

CREATE OR REPLACE VIEW vw_category_profit AS
SELECT
    category,
    SUM(profit) AS total_profit
FROM sales_data
GROUP BY category;

SELECT * FROM vw_category_profit;


-- =====================================================
-- QUERY 70 : Show All Views Created
-- =====================================================

SHOW FULL TABLES
WHERE TABLE_TYPE = 'VIEW';

-- =====================================================
-- QUERY 71 : Rank Customers by Sales
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    RANK() OVER(ORDER BY SUM(sales) DESC) AS sales_rank
FROM sales_data
GROUP BY customer_name;


-- =====================================================
-- QUERY 72 : Dense Rank Customers
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    DENSE_RANK() OVER (ORDER BY SUM(sales) DESC) AS customer_rank
FROM sales_data
GROUP BY customer_name;


-- =====================================================
-- QUERY 73 : Row Number for Customers
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    ROW_NUMBER() OVER(
        ORDER BY SUM(sales) DESC
    ) AS customer_row_num
FROM sales_data
GROUP BY customer_name;


-- =====================================================
-- QUERY 74 : Rank Products by Profit
-- =====================================================

SELECT
    product_name,
    SUM(profit) AS total_profit,
    RANK() OVER(
        ORDER BY SUM(profit) DESC
    ) AS profit_rank
FROM sales_data
GROUP BY product_name;


-- =====================================================
-- QUERY 75 : Running Sales Total
-- =====================================================

SELECT
    order_id,
    sales,
    SUM(sales) OVER(
        ORDER BY order_id
    ) AS running_total_sales
FROM sales_data;


-- =====================================================
-- QUERY 76 : Previous Sale using LAG
-- =====================================================

SELECT
    order_id,
    sales,
    LAG(sales) OVER(
        ORDER BY order_id
    ) AS previous_sale
FROM sales_data;


-- =====================================================
-- QUERY 77 : Next Sale using LEAD
-- =====================================================

SELECT
    order_id,
    sales,
    LEAD(sales) OVER(
        ORDER BY order_id
    ) AS next_sale
FROM sales_data;


-- =====================================================
-- QUERY 78 : Highest Sale in Each Category
-- =====================================================

SELECT
    category,
    customer_name,
    sales,
    RANK() OVER(
        PARTITION BY category
        ORDER BY sales DESC
    ) AS category_sales_rank
FROM sales_data;


-- =====================================================
-- QUERY 79 : Highest Profit in Each Region
-- =====================================================

SELECT
    region,
    customer_name,
    profit,
    RANK() OVER(
        PARTITION BY region
        ORDER BY profit DESC
    ) AS region_profit_rank
FROM sales_data;


-- =====================================================
-- QUERY 80 : Average Sales by Category using Window Function
-- =====================================================

SELECT
    category,
    sales,
    AVG(sales) OVER(
        PARTITION BY category
    ) AS category_average_sales
FROM sales_data;

-- =====================================================
-- QUERY 81 : Sales Percentage Contribution by Customer
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    ROUND(
        SUM(sales) * 100 / SUM(SUM(sales)) OVER(),
        2
    ) AS sales_percentage
FROM sales_data
GROUP BY customer_name;


-- =====================================================
-- QUERY 82 : Profit Percentage Contribution by Product
-- =====================================================

SELECT
    product_name,
    SUM(profit) AS total_profit,
    ROUND(
        SUM(profit) * 100 / SUM(SUM(profit)) OVER(),
        2
    ) AS profit_percentage
FROM sales_data
GROUP BY product_name;


-- =====================================================
-- QUERY 83 : Customer Sales Ranking using DENSE_RANK
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    DENSE_RANK() OVER(
        ORDER BY SUM(sales) DESC
    ) AS customer_sales_rank
FROM sales_data
GROUP BY customer_name;


-- =====================================================
-- QUERY 84 : Top 5 Customers by Sales
-- =====================================================

SELECT *
FROM
(
    SELECT
        customer_name,
        SUM(sales) AS total_sales,
        DENSE_RANK() OVER(
            ORDER BY SUM(sales) DESC
        ) AS sales_rank
    FROM sales_data
    GROUP BY customer_name
) ranked_customers
WHERE sales_rank <= 5;


-- =====================================================
-- QUERY 85 : Top 5 Products by Profit
-- =====================================================

SELECT *
FROM
(
    SELECT
        product_name,
        SUM(profit) AS total_profit,
        DENSE_RANK() OVER(
            ORDER BY SUM(profit) DESC
        ) AS profit_rank
    FROM sales_data
    GROUP BY product_name
) ranked_products
WHERE profit_rank <= 5;


-- =====================================================
-- QUERY 86 : Category Sales Comparison
-- =====================================================

SELECT
    category,
    SUM(sales) AS total_sales,
    LAG(SUM(sales)) OVER(
        ORDER BY SUM(sales) DESC
    ) AS previous_category_sales
FROM sales_data
GROUP BY category;


-- =====================================================
-- QUERY 87 : Regional Sales Performance
-- =====================================================

SELECT
    region,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    ROUND(
        SUM(profit) / SUM(sales) * 100,
        2
    ) AS profit_margin_percentage
FROM sales_data
GROUP BY region;


-- =====================================================
-- QUERY 88 : Customer Purchase Frequency
-- =====================================================

SELECT
    customer_name,
    COUNT(order_id) AS total_orders,
    SUM(sales) AS total_sales
FROM sales_data
GROUP BY customer_name
ORDER BY total_orders DESC;


-- =====================================================
-- QUERY 89 : Customer Value Segmentation
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS total_sales,
    CASE
        WHEN SUM(sales) >= 10000 THEN 'High Value Customer'
        WHEN SUM(sales) >= 5000 THEN 'Medium Value Customer'
        ELSE 'Low Value Customer'
    END AS customer_segment
FROM sales_data
GROUP BY customer_name;


-- =====================================================
-- QUERY 90 : Monthly Sales Trend Analysis
-- =====================================================

SELECT
    YEAR(order_date) AS sales_year,
    MONTH(order_date) AS sales_month,
    SUM(sales) AS monthly_sales
FROM sales_data
GROUP BY
    YEAR(order_date),
    MONTH(order_date)
ORDER BY
    sales_year,
    sales_month;


-- =====================================================
-- QUERY 91 : Yearly Sales Growth Analysis
-- =====================================================

SELECT
    sales_year,
    total_sales,
    LAG(total_sales) OVER(
        ORDER BY sales_year
    ) AS previous_year_sales,
    ROUND(
        (total_sales - LAG(total_sales) OVER(ORDER BY sales_year))
        /
        LAG(total_sales) OVER(ORDER BY sales_year) * 100,
        2
    ) AS growth_percentage
FROM
(
    SELECT
        YEAR(order_date) AS sales_year,
        SUM(sales) AS total_sales
    FROM sales_data
    GROUP BY YEAR(order_date)
) yearly_sales;



-- =====================================================
-- QUERY 92 : Monthly Sales Growth Analysis
-- =====================================================

SELECT
    sales_year,
    sales_month,
    monthly_sales,
    LAG(monthly_sales) OVER(
        ORDER BY sales_year, sales_month
    ) AS previous_month_sales,
    ROUND(
        (monthly_sales -
        LAG(monthly_sales) OVER(ORDER BY sales_year, sales_month))
        /
        LAG(monthly_sales) OVER(ORDER BY sales_year, sales_month)
        * 100,
        2
    ) AS monthly_growth_percentage
FROM
(
    SELECT
        YEAR(order_date) AS sales_year,
        MONTH(order_date) AS sales_month,
        SUM(sales) AS monthly_sales
    FROM sales_data
    GROUP BY
        YEAR(order_date),
        MONTH(order_date)
) monthly_sales;



-- =====================================================
-- QUERY 93 : Repeat Customers Analysis
-- =====================================================

SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders
FROM sales_data
GROUP BY customer_name
HAVING COUNT(DISTINCT order_id) > 1
ORDER BY total_orders DESC;



-- =====================================================
-- QUERY 94 : Customer Order Frequency Classification
-- =====================================================

SELECT
    customer_name,
    COUNT(DISTINCT order_id) AS total_orders,
    CASE
        WHEN COUNT(DISTINCT order_id) = 1 
            THEN 'One-Time Customer'
        WHEN COUNT(DISTINCT order_id) > 1 
            THEN 'Repeat Customer'
    END AS customer_type
FROM sales_data
GROUP BY customer_name;



-- =====================================================
-- QUERY 95 : Customer Lifetime Value (CLV)
-- =====================================================

SELECT
    customer_name,
    SUM(sales) AS lifetime_value,
    SUM(profit) AS lifetime_profit
FROM sales_data
GROUP BY customer_name
ORDER BY lifetime_value DESC;



-- =====================================================
-- QUERY 96 : Moving Average Sales (3 Transactions)
-- =====================================================

SELECT
    order_id,
    order_date,
    sales,
    ROUND(
        AVG(sales) OVER(
            ORDER BY order_date
            ROWS BETWEEN 2 PRECEDING AND CURRENT ROW
        ),
        2
    ) AS moving_average_sales
FROM sales_data;



-- =====================================================
-- QUERY 97 : Pareto Analysis (Top Customers Contribution)
-- =====================================================

SELECT
    customer_name,
    total_sales,
    ROUND(
        SUM(total_sales) OVER(
            ORDER BY total_sales DESC
        )
        /
        SUM(total_sales) OVER() * 100,
        2
    ) AS cumulative_sales_percentage
FROM
(
    SELECT
        customer_name,
        SUM(sales) AS total_sales
    FROM sales_data
    GROUP BY customer_name
) customer_sales;



-- =====================================================
-- QUERY 98 : Product Performance Classification
-- =====================================================

SELECT
    product_name,
    SUM(sales) AS total_sales,
    SUM(profit) AS total_profit,
    CASE
        WHEN SUM(profit) > 5000 THEN 'High Profit Product'
        WHEN SUM(profit) > 1000 THEN 'Medium Profit Product'
        ELSE 'Low Profit Product'
    END AS product_category
FROM sales_data
GROUP BY product_name;



-- =====================================================
-- QUERY 99 : Customer Recency Analysis
-- =====================================================

SELECT
    customer_name,
    MAX(order_date) AS last_purchase_date,
    DATEDIFF(
        CURRENT_DATE,
        MAX(order_date)
    ) AS days_since_last_purchase
FROM sales_data
GROUP BY customer_name
ORDER BY days_since_last_purchase;



-- =====================================================
-- QUERY 100 : Basic RFM Customer Analysis
-- =====================================================

SELECT
    customer_name,

    DATEDIFF(
        CURRENT_DATE,
        MAX(order_date)
    ) AS recency,

    COUNT(DISTINCT order_id) AS frequency,

    SUM(sales) AS monetary_value

FROM sales_data

GROUP BY customer_name

ORDER BY monetary_value DESC;