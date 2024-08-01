CREATE DATABASE datatype_db;
USE datatype_db;

/*21.	Create a MySQL table named Employees with the following columns and data types:
•	EmployeeID (Integer, Auto Increment, Primary Key)
•	FirstName (Variable Character, Maximum Length 50)
•	LastName (Variable Character, Maximum Length 50)
•	DateOfBirth (Date)
•	Email (Variable Character, Maximum Length 100, Unique)
•	Salary (Decimal, 10 digits in total, 2 digits after the decimal point)
•	IsActive (Boolean)

Then insert the following values into the Employees table:
1.	First Name: John, Last Name: Doe, Date of Birth: 1985-06-15, Email: john.doe@example.com, Salary: 75000.50, Is Active: True
2.	First Name: Jane, Last Name: Smith, Date of Birth: 1990-11-30, Email: jane.smith@example.com, Salary: 85000.75, Is Active: False

*/

CREATE TABLE Employees(
EmployeeID INT auto_increment PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
DateOfBirth DATE,
Email VARCHAR(100) UNIQUE,
Salary DECIMAL(10,2),
IsActive BOOLEAN
);

INSERT INTO Employees(FirstName,LastName,DateOfBirth,Email,Salary,IsActive)
VALUES('John','Doe','1985-06-15','john.doe@example.com',75000.50,TRUE);

INSERT INTO Employees(FirstName,LastName,DateOfBirth,Email,Salary,IsActive)
VALUES('Jane','Smith','1990-11-30','jane.smith@example.com',85000.75,False);

SELECT * FROM Employees;


/*.  Create a MySQL table named Products with the following columns and data types:
•	ProductID (Integer, Auto Increment, Primary Key)
•	ProductName (Variable Character, Maximum Length 100)
•	Category (Enum with values: 'Electronics', 'Books', 'Clothing', 'Furniture')
•	Price (Decimal, 10 digits in total, 2 digits after the decimal point)
•	StockQuantity (Integer)
•	DateAdded (DateTime)
•	IsAvailable (Boolean)
      Then insert the following values into the Products table:
1.	Product Name: "Laptop", Category: "Electronics", Price: 999.99, Stock Quantity: 50, Date Added: '2024-07-01 10:00:00', Is Available: True
2.	Product Name: "T-Shirt", Category: "Clothing", Price: 19.99, Stock Quantity: 200, Date Added: '2024-07-05 15:30:00', Is Available: True
*/

CREATE TABLE Products(
ProductID INT auto_increment PRIMARY KEY,
ProductName VARCHAR(100),
Category ENUM('Electronics', 'Books', 'Clothing', 'Furniture'),
Price DECIMAL(10,2),
StockQuantity INT,
DateAdded DATETIME,
IsAvailable BOOLEAN
);

INSERT INTO Products(ProductName,Category,Price,StockQuantity,DateAdded,IsAvailable)
VALUES('Laptop','Electronics',999.99,50,'2024-07-01 10:00:00',True);

INSERT INTO Products(ProductName,Category,Price,StockQuantity,DateAdded,IsAvailable)
VALUES('T-shirt','Clothing',19.99,200,'2024-07-05 15:30:00',True);

SELECT * FROM Products;







