CREATE TABLE Customers (
    customer_id VARCHAR(20) PRIMARY KEY,
    customer_name VARCHAR(100) NOT NULL,
    customer_email VARCHAR(100) NOT NULL,
    customer_city VARCHAR(50) NOT NULL
);

INSERT INTO Customers VALUES
('C101','Rahul Mehta','rahul.mehta@email.com','Mumbai'),
('C102','Priya Sharma','priya.sharma@email.com','Delhi'),
('C103','Amit Patel','amit.patel@email.com','Mumbai'),
('C104','Sneha Kapoor','sneha.kapoor@email.com','Bangalore'),
('C105','Rohit Verma','rohit.verma@email.com','Pune');


CREATE TABLE Products (
    product_id VARCHAR(20) PRIMARY KEY,
    product_name VARCHAR(100) NOT NULL,
    category VARCHAR(50) NOT NULL,
    unit_price DECIMAL(10,2) NOT NULL
);

INSERT INTO Products VALUES
('P201','Laptop','Electronics',65000),
('P202','Wireless Mouse','Electronics',1200),
('P203','Keyboard','Electronics',1500),
('P204','Monitor','Electronics',15000),
('P205','USB Cable','Accessories',300);


CREATE TABLE Sales_Reps (
    sales_rep_id VARCHAR(20) PRIMARY KEY,
    sales_rep_name VARCHAR(100) NOT NULL,
    sales_rep_email VARCHAR(100) NOT NULL,
    office_address VARCHAR(200) NOT NULL
);

INSERT INTO Sales_Reps VALUES
('S301','Anita Desai','anita.desai@company.com','Mumbai Office'),
('S302','Rohan Kapoor','rohan.kapoor@company.com','Delhi Office'),
('S303','Neha Sharma','neha.sharma@company.com','Bangalore Office'),
('S304','Vikram Singh','vikram.singh@company.com','Pune Office'),
('S305','Karan Malhotra','karan.malhotra@company.com','Hyderabad Office');


CREATE TABLE Orders (
    order_id VARCHAR(20) PRIMARY KEY,
    order_date DATE NOT NULL,
    customer_id VARCHAR(20) NOT NULL,
    sales_rep_id VARCHAR(20) NOT NULL,
    FOREIGN KEY (customer_id) REFERENCES Customers(customer_id),
    FOREIGN KEY (sales_rep_id) REFERENCES Sales_Reps(sales_rep_id)
);

INSERT INTO Orders VALUES
('O401','2024-01-10','C101','S301'),
('O402','2024-01-12','C102','S302'),
('O403','2024-01-15','C103','S303'),
('O404','2024-01-18','C104','S304'),
('O405','2024-01-20','C105','S305');


CREATE TABLE Order_Items (
    order_item_id INT PRIMARY KEY,
    order_id VARCHAR(20) NOT NULL,
    product_id VARCHAR(20) NOT NULL,
    quantity INT NOT NULL,
    FOREIGN KEY (order_id) REFERENCES Orders(order_id),
    FOREIGN KEY (product_id) REFERENCES Products(product_id)
);

INSERT INTO Order_Items VALUES
(1,'O401','P201',1),
(2,'O401','P202',2),
(3,'O402','P203',1),
(4,'O403','P204',1),
(5,'O404','P205',3);
