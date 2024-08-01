
-- ---------------------------------- ASSIGNMENT 3 ------------------------------------------------
-- 3. How do you define a primary key constraint in MySQL?
USE constraints_db;


CREATE TABLE table_name (
    id INT NOT NULL,
    name VARCHAR(100),
    PRIMARY KEY (id)
);


-- 5.	How can you add a check constraint to a MySQL table?

CREATE TABLE employees (
    id INT PRIMARY KEY,
    name VARCHAR(100),
    salary DECIMAL(10, 2),
    CHECK (salary > 0)
);

ALTER TABLE employees
ADD CONSTRAINT chk_salary CHECK (salary > 0);

DESC employees;


-- 9.	How do you create a composite primary key in MySQL?

-- when creating a new table
CREATE TABLE order_items (
    order_id INT,
    product_id INT,
    quantity INT,
    PRIMARY KEY (order_id, product_id)
);

-- adding composite primary key in existing table

CREATE TABLE order_itms (
    order_id INT,
    product_id INT,
    quantity INT
);

ALTER TABLE order_itms
ADD PRIMARY KEY (order_id,product_id);

-- 16/17.	How do you define a column as NOT NULL in MySQL?
CREATE TABLE employees_new (
    id INT NOT NULL,
    name VARCHAR(100) NOT NULL,
    age INT,
    salary DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id)
);

SELECT * FROM employees_new;
DESC employees_new; 

-- 18.	How do you create an auto-increment column in MySQL?

CREATE TABLE product (
    id INT AUTO_INCREMENT PRIMARY KEY,
    product_name VARCHAR(255),
    product_type VARCHAR(255),
    price DECIMAL(10, 2)
);


-- 19.	What happens if you try to insert a NULL value into a column with NOT NULL constraint in MySQL?

CREATE TABLE student(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

INSERT INTO student(name,age)
VALUES (NULL, 22);

-- OUTPUT ERROR
/*15:42:44	INSERT INTO student(name, age) VALUES (NULL, 22)	
Error Code: 1048. Column 'name' cannot be null	0.016 sec
*/


#21.Create table student then roll_num should be primary key , stu_name should ne not null,
# marks should be in between 1 to 100,dept 

CREATE TABLE student(
roll_num INT PRIMARY KEY,
stu_name VARCHAR(25) NOT NULL,
marks INT NOT NULL CHECK(marks BETWEEN 1 AND 100),
dept VARCHAR(100) NOT NULL
);


#23.Write an SQL statement to create a table with a check constraint. 
#Explain the purpose of the check constraint.

CREATE TABLE studentold(
roll_num INT PRIMARY KEY,
stu_name VARCHAR(25) NOT NULL,
marks INT NOT NULL CHECK(marks BETWEEN 1 AND 100),
age INT NOT NULL CHECK (age>=18 AND age<=60),
dept VARCHAR(100) NOT NULL
);


-- 28.	Create a MySQL table named Orders with the following columns and constraints:

-- •	OrderID (Integer, Auto Increment, Primary Key)
-- •	CustomerID (Integer, Not Null)
-- •	OrderDate (Date, Not Null)
-- •	Status (Enum with values: 'Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled', Not Null)
-- •	TotalAmount (Decimal, 10 digits in total, 2 digits after the decimal point, Check that the value is greater than 0)
-- •	DiscountCode (Variable Character, Maximum Length 10, Can be Null, Unique)

--      Then insert the following values into the Orders table:
-- 1.	Customer ID: 101, Order Date: '2024-07-10', Status: 'Pending', Total Amount: 150.75, Discount Code: 'SUMMER10'
-- 2.	Customer ID: 102, Order Date: '2024-07-12', Status: 'Shipped', Total Amount: 250.50, Discount Code: null

SHOW TABLES;

CREATE TABLE orders(
OrderID INT auto_increment PRIMARY KEY,
CustomerID INT NOT NULL,
OrderDate DATE NOT NULL,
Status ENUM('Pending', 'Processing', 'Shipped', 'Delivered', 'Cancelled') NOT NULL,
TotalAmount DECIMAL(10, 2) NOT NULL CHECK (TotalAmount > 0),
Discount_code VARCHAR(10) UNIQUE
);

INSERT INTO orders(CustomerID,OrderDate,Status,TotalAmount,Discount_code) 
VALUES(101,'2024-07-10','Pending',150.75,'SUMMER10');

INSERT INTO orders(CustomerID,OrderDate,Status,TotalAmount,Discount_code) 
VALUES(102,'2024-07-12','Shipped',250.50,NULL);
SELECT * FROM orders;


/*29.	Create a MySQL table named Furniture with the following columns and constraints:
•	FurnitureID (Integer, Auto Increment, Primary Key)
•	Name (Variable Character, Maximum Length 100, Not Null)
•	Category (Enum with values: 'Chair', 'Table', 'Sofa', 'Bed', 'Cabinet', Not Null)
•	Material (Variable Character, Maximum Length 50, Not Null)
•	Price (Decimal, 10 digits in total, 2 digits after the decimal point, Check that the value is greater than 0)
•	StockQuantity (Integer, Check that the value is greater than or equal to 0)
•	DateAdded (DateTime, Default Current Timestamp)
•	IsAvailable (Boolean, Default True)

Then insert the following values into the Furniture table:
1.	Name: "Modern Sofa", Category: "Sofa", Material: "Leather", Price: 999.99, Stock Quantity: 10
2.	Name: "Dining Table", Category: "Table", Material: "Wood", Price: 499.50, Stock Quantity: 20
*/

CREATE TABLE Furniture(
FurnitureID INT auto_increment PRIMARY KEY,
Name VARCHAR(100) NOT NULL,
Category enum('Chair', 'Table', 'Sofa', 'Bed', 'Cabinet') NOT NULL,
Material VARCHAR(50) NOT NULL,
Price DECIMAL(10,2) NOT NULL CHECK(price>0),
StockQuantity INT check(StockQuantity>=0),
DateAdded DATETIME DEFAULT current_timestamp,
IsAvailable BOOLEAN DEFAULT TRUE
);

INSERT INTO Furniture(Name, Category, Material, Price, StockQuantity)
VALUES('Modern Sofa','Sofa','Leather',999.99,10);

INSERT INTO Furniture(Name, Category, Material, Price, StockQuantity)
VALUES('Dining Table','Table','Wood',499.50,20);

SELECT * FROM furniture;
