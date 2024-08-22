CREATE DATABASE  Axis_db;

USE Axis_db;




CREATE TABLE orders(
id INT PRIMARY KEY,
company VARCHAR(100),
product VARCHAR(100),
date DATE
);



INSERT INTO orders(id, company, product, date) 
VALUES
(11,'Google', 'A', '2020-01-15'),
(12,'Tesla', 'B', '2021-03-22'),
(13,'Amazon', 'C', '2022-05-10'),
(14,'Flipkart', 'D', '2023-07-30'),
(15,'Google', 'B', '2020-08-14'),
(16,'Tesla', 'A', '2021-11-19'),
(17,'Amazon', 'D', '2022-09-05'),
(18,'Flipkart', 'C', '2023-02-02');

-- Write a query to select all records from the orders table.
SELECT * FROM orders;

-- Write a query to select only the company and product columns from the orders table.
SELECT company,product FROM orders;

-- Insert one record in two columns (id, company) means product and date is not provided
INSERT INTO orders(id, company) VALUE(19,'Minda');

-- insert one record (data) without specifying column names
INSERT INTO orders VALUE(20,'Nokia','nokia 1200', '2024-07-13');
SELECT * FROM orders;


CREATE DATABASE atliq_sales;
USE atliq_sales;

CREATE TABLE customers(
customer_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(50),
email VARCHAR(50)
);



INSERT INTO customers(name, email) 
VALUE('Alice', 'alice@example.com'),
('Bob', 'bob@example.com'),
('Carol', 'carol@example.com'),
('Dave', 'dave@example.com');

SELECT * FROM customers;


CREATE TABLE products(
product_id INT auto_increment PRIMARY KEY,
product_code VARCHAR(70),
product_name  VARCHAR(50),
price FLOAT
);

INSERT INTO products(product_code, product_name, price) VALUE('A', 'Product A', 10.00),
('B', 'Product B', 15.50),
('C', 'Product C', 20.75),
('D', 'Product D', 25.00);

SELECT * FROM products;

CREATE TABLE orders(
order_id INT auto_increment PRIMARY KEY,
customer_id INT,
customer_name VARCHAR(10),
product_id INT,
product_name VARCHAR(20),
order_date DATE
);

INSERT INTO orders(customer_name, product_name, order_date)
VALUE('Alice', 'Product A', '2022-01-15'),
('Bob', 'Product B', '2022-02-20'),
('Carol', 'Product C', '2022-03-25'),
('Dave', 'Product D', '2022-04-30'),
('Alice', 'Product B', '2022-05-05'),
('Bob', 'Product A', '2022-06-10'),
('Carol', 'Product D', '2022-07-15'),
('Dave', 'Product C', '2022-08-20');

SELECT * FROM orders;

DESC customers;
DESC products;
DESC orders;

SHOW TABLES;

SELECT * FROM orders;








