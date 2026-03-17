-- =========================
-- Dimension: Date
-- =========================

CREATE TABLE dim_date (
date_id INT PRIMARY KEY,
full_date DATE NOT NULL,
month INT NOT NULL,
year INT NOT NULL
);

INSERT INTO dim_date VALUES
(1, '2024-01-01', 1, 2024),
(2, '2024-01-05', 1, 2024),
(3, '2024-02-10', 2, 2024),
(4, '2024-02-15', 2, 2024),
(5, '2024-03-01', 3, 2024);

-- =========================
-- Dimension: Store
-- =========================

CREATE TABLE dim_store (
store_id INT PRIMARY KEY,
store_name VARCHAR(100) NOT NULL,
city VARCHAR(50) NOT NULL
);

INSERT INTO dim_store VALUES
(101, 'Mumbai Store', 'Mumbai'),
(102, 'Delhi Store', 'Delhi'),
(103, 'Bangalore Store', 'Bangalore');

-- =========================
-- Dimension: Product
-- =========================

CREATE TABLE dim_product (
product_id INT PRIMARY KEY,
product_name VARCHAR(100) NOT NULL,
category VARCHAR(50) NOT NULL
);

INSERT INTO dim_product VALUES
(201, 'Laptop', 'Electronics'),
(202, 'T-Shirt', 'Clothing'),
(203, 'Milk', 'Groceries'),
(204, 'Headphones', 'Electronics'),
(205, 'Jeans', 'Clothing');

-- =========================
-- Fact Table: Sales
-- =========================

CREATE TABLE fact_sales (
sale_id INT PRIMARY KEY,
date_id INT,
store_id INT,
product_id INT,
quantity INT NOT NULL,
revenue DECIMAL(10,2) NOT NULL,
FOREIGN KEY (date_id) REFERENCES dim_date(date_id),
FOREIGN KEY (store_id) REFERENCES dim_store(store_id),
FOREIGN KEY (product_id) REFERENCES dim_product(product_id)
);

INSERT INTO fact_sales VALUES
(1,1,101,201,1,65000),
(2,2,101,202,2,2000),
(3,3,102,203,5,300),
(4,3,103,204,1,2500),
(5,4,101,205,1,3000),
(6,5,102,201,1,65000),
(7,5,103,202,3,3000),
(8,2,102,203,10,600),
(9,4,103,204,2,5000),
(10,1,101,205,2,6000);

