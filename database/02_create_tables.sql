-- ==========================================
-- CUSTOMERS TABLE
-- ==========================================

CREATE TABLE customers (
    customer_id VARCHAR(30) PRIMARY KEY,
    customer_name VARCHAR(150)
);

-- ==========================================
-- PRODUCTS TABLE
-- ==========================================

CREATE TABLE products (
    product_id VARCHAR(50) PRIMARY KEY,
    product_name VARCHAR(255),
    category VARCHAR(100),
    sub_category VARCHAR(100)
);

-- ==========================================
-- REGIONS TABLE
-- ==========================================

CREATE TABLE regions (
    region_id INT AUTO_INCREMENT PRIMARY KEY,
    region_name VARCHAR(100)
);

-- ==========================================
-- ORDERS TABLE
-- ==========================================

CREATE TABLE orders (
    order_id VARCHAR(50) PRIMARY KEY,
    order_date DATE,
    ship_date DATE,
    customer_id VARCHAR(30),
    product_id VARCHAR(50),
    region_id INT,
    sales DECIMAL(12,2),
    profit DECIMAL(12,2),
    quantity INT,
    discount DECIMAL(5,2),
    shipping_cost DECIMAL(12,2),

    FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
    FOREIGN KEY (product_id) REFERENCES products(product_id),
    FOREIGN KEY (region_id) REFERENCES regions(region_id)
);