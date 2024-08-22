# ---------------------------------------------------------ADVANCE SQL---------------------------------------------------------
--                                                       05 August 2024
-- 1)RELATIONSHIP(DATA modelling)
-- 2)FROREIGN KEY 
-- 3)NORMALIZATION

-- 1)RELATIONSHIP(data modelling)

-- RELATIONSHIP
-- Why we need multiple tables in sql

-- In SQL (Structured Query Language), databases are used to store and 
-- manage structured data in a way that facilitates efficient retrieval, 
-- manipulation, and organization of information. Multiple tables are 
-- essential in SQL databases for several reasons:

-- Normalization: One of the fundamental principles in database design 
-- is normalization, which aims to minimize data redundancy and improve 
-- data integrity. By breaking down data into multiple related tables 
-- and storing information in a way that each piece of data is stored 
-- only once, you reduce the risk of inconsistencies and save storage
--  space.

-- Data Organization: Different types of data are often best stored 
-- in separate tables to maintain a logical and organized structure. 
-- For instance, in a customer database, you might have separate tables 
-- for customers, orders, products, and employees. This separation 
-- makes it easier to manage and query data.

-- Complex Data Models: Many real-world scenarios involve complex 
-- data relationships that cannot be effectively modeled with 
-- a single table. Using multiple tables allows you to represent 
-- complex data hierarchies, many-to-many relationships, 
-- and other intricate structures.
-- Scalability: As the amount of data grows, managing a 
-- single massive table can become difficult and inefficient. 
-- Multiple tables enable you to distribute the data across 
-- different tables and possibly even across different database 
-- servers, improving performance and scalability.
-- Performance: In large databases, querying a single table for 
-- specific data can become slow and resource-intensive. By using 
-- multiple tables, you can create appropriate indexes and optimize 
-- queries for specific tasks, leading to faster and more efficient 
-- data retrieval.

-- Security and Access Control: Different users or user groups 
-- might require different levels of access to the data. With 
-- multiple tables, you can control access more granularly by 
-- granting permissions on specific tables rather than exposing 
-- all data to every user.

-- Ease of Maintenance: When you need to update or modify data, 
-- having multiple tables can make the process more manageable. 
-- You can focus changes on specific tables without affecting 
-- unrelated data.

-- Flexibility: Databases evolve over time, and requirements 
-- change. Using multiple tables makes it easier to adapt the 
-- database structure to accommodate new features, changes 
-- in business rules, or evolving data needs.
-- Concurrency and Locking: In multi-user environments, 
-- managing concurrent data access and updates can be complex. 
-- Multiple tables can help reduce contention by allowing 
-- different users to work on different parts of the database simultaneously.

-- In summary, multiple tables in SQL databases provide a way 
-- to organize, store, and manage data efficiently, while also 
-- facilitating data integrity, performance optimization, and 
-- ease of maintenance. They enable database designers to represent 
-- complex data models and handle diverse requirements effectively.
--                    RELATIONSHIP IN SQL---
-- A relationship in the context of SQL (Structured Query Language) 
-- refers to the way data is linked between tables in a relational 
-- database. It defines how data from one table is related 
-- to data in another table, allowing for efficient data organization, 
-- retrieval, and manipulation. 

-- There are several types of relationships in SQL databases, including:

--                    One-to-One (1:1) Relationship:
-- In a one-to-one relationship, each record in one table is 
-- related to exactly one record in another table, 
-- and vice versa. This relationship is not very common 
-- in relational databases, but it can be useful 
-- in certain scenarios. For example, you might have 
-- a "Person" table and a "Passport" table, where each 
-- person has one passport, and each passport belongs to one person.

--                  One-to-Many (1:N) Relationship:
-- In a one-to-many relationship, a record in one table can be 
-- related to multiple records in another table, but each record 
-- in the second table is related to only one record in the first table. 
-- This is the most common type of relationship in relational databases. 
-- For example, a "Customer" table might have a one-to-many relationship 
-- with an "Order" table, where each customer can have multiple orders, 
-- but each order is associated with only one customer.

--                 Many-to-Many (N:N) Relationship:
-- In a many-to-many relationship, records in both tables 
-- can be related to multiple records in the other table. 
-- This relationship is typically implemented using an intermediate table, 
-- often referred to as a junction or linking table. 
-- This table contains foreign keys referencing the primary keys of 
-- the two related tables. For example, a "Student" table might have 
-- a many-to-many relationship with a "Course" table, where students 
-- can enroll in multiple courses and each course can have multiple 
-- students.
-- To establish relationships between tables, you use foreign keys. 
-- A foreign key in one table refers to the primary key of another table, 
-- creating a link between them. 
-- This helps maintain data integrity and enforces referential integrity 
-- rules to ensure that data remains consistent.
--                            FOREIGN KEY 
-- Rules 
-- foreign key in one table points to primary key in another table
-- foreign key can have different name than primary key that come  from
-- primary key used by foreign key also known as parent key
-- the table where primary key is from is known as parent table
-- foreign key is used to make sure that row in one table have 
-- corresponding row in another table
-- foreign key value can be null even though primary key value can't
-- foreign key don't have to be unique in fact ,often they are not
-- In SQL, a foreign key is a field or a set of fields in a table 
-- that is used to establish a link between the data in two tables. 
-- It creates a relationship between the data in the referencing 
-- table (also known as the child table) and the referenced table 
-- (also known as the parent table). The foreign key constraint 
-- ensures that the data in the referencing table corresponds to 
-- existing data in the referenced table.

-- Here are the key points to understand about foreign keys:

-- Relationships: Foreign keys define relationships between tables. 
-- These relationships can be one-to-one, one-to-many, or many-to-one.

-- Referencing Table: The table that contains the foreign key is 
-- called the referencing table or child table. This table holds 
-- the values that are used to link to the referenced table.

-- Referenced Table: The table that is being referenced by the 
-- foreign key is called the referenced table or parent table. 
-- This table holds the primary key values that the foreign key 
-- in the referencing table refers to.

-- Referential Integrity: Foreign key constraints ensure 
-- referential integrity, meaning that data in the referencing 
-- table must correspond to existing data in the referenced table. 
-- This prevents orphaned or inconsistent data.

-- Primary Key and Unique Key: The foreign key in the referencing 
-- table usually corresponds to the primary key or a unique key 
-- in the referenced table. This establishes a direct link between 
-- the two tables.
-- Cascade Actions: Some databases support cascade actions, which 
-- allow certain actions on the referenced table (like deletion or updates) 
-- to automatically propagate to the referencing table. 
-- For example, you can specify that when a row in the referenced
--  table is deleted, the corresponding rows in the referencing table 
--  are also deleted.

-- Syntax: When creating a foreign key, you define the constraint in 
-- the table creation statement using the FOREIGN KEY keyword, 
-- specifying the referencing column(s) and the referenced 
-- table and column(s).
-- SYNTAX
-- CREATE TABLE referencing_table (
-- column_name data_type constraints,
-- col_name data type 
-- constraint foreign_key_name
-- FOREIGN KEY (column_name) REFERENCES referenced_table(referenced_column)
-- );

-- constaraint is optional
-- REFERENCES specifies parent table and its column to which 
-- column i child table refer
-- number of column in child table and parent table
-- specified in foreign key and references must be same

-- referenced table or parent table

-- ER Entity Relationship

-- Databse>> reverse engineer

-- ---------------------------------------06 august 2024----------------------------------------

CREATE DATABASE relation_db;
USE relation_db;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    mob_num BIGINT,
    address VARCHAR(100)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
product VARCHAR(40),
quantity INT,
sales DECIMAL(10,2),
FOREIGN KEY(customer_id) references Customer(customer_id)
);

desc orders;

#customer>>primary key>>parent table>>referenced table>>Dimension table
#orders>>foreign key>>child table>>referencing table>>master/data/fact table

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
WHERE TABLE_NAME ='orders';

INSERT INTO Customer (customer_id, customer_name,mob_num,address) VALUES
(1, 'John Doe',3456,'pune'),
(2, 'Jane Smith',7823,'mexico'),
(3, 'Alice Johnson',5623,'new delhi'),
(4, 'Michael Brown',9034,'pune'),
(5, 'Emily White',8871,'rajgadh');

INSERT INTO Orders (order_id, customer_id, order_date,product,quantity,sales) 
VALUES
(101, 1, '2023-08-23','A',11,2345),
(102, 2, '2023-08-24','B',24,7800),
(103, 1, '2023-08-25','C',7,2900),
(104, 3, '2023-08-25','B',14,5600),
(105, 4, '2023-08-26','D',9,7522);

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

-- Rules(by default) 
-- rules -1 UNABLE TO DELETE PARENT TABLE
-- rules 2 UNABLE TO DELETE PARENT TABLE RECORD
-- rules 3 UNABLE TO UPDATE PARENT TABLE RECORD

DROP TABLE customer;

DELETE FROM customer WHERE customer_id=2;

UPDATE customer SET customer_id=9 WHERE customer_id=1;

DELETE FROM customer WHERE customer_id=5;

-- ------------------------------   ---------07 august 2024--------    --------------------------------

--  ----------------ON DELETE CLAUSE --------------------------
-- ON DELETE CASCADE
-- ON DELETE SET NULL
-- ON DELETE NO ACTION or ON DELETE RESTRICT


-- -----------------ON UPDATE CLAUSE------------------
-- ON UPDATE CASCADE
-- ON UPDATE SET NULL
-- ON UPDATE NO ACTION or ON UPDATE RESTRICT


--  ----------------ON DELETE CLAUSE --------------------------
-- 1)ON DELETE CASCADE
--   Using the "ON DELETE CASCADE" option in a foreign key 
--   relationship means that when a referenced row (in the parent table) 
--   is deleted, the corresponding rows in the referencing table
--  (child table)
--  will also be automatically deleted. This can help maintain 
--  data consistency and integrity by ensuring that orphaned 
--  records are removed.

DROP TABLE orders;
DROP TABLE customer;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    mob_num BIGINT,
    address VARCHAR(100)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
product VARCHAR(40),
quantity INT,
sales DECIMAL(10,2),
FOREIGN KEY(customer_id) references Customer(customer_id)
ON DELETE CASCADE
);

INSERT INTO Customer (customer_id, customer_name,mob_num,address) VALUES
(1, 'John Doe',3456,'pune'),
(2, 'Jane Smith',7823,'mexico'),
(3, 'Alice Johnson',5623,'new delhi'),
(4, 'Michael Brown',9034,'pune'),
(5, 'Emily White',8871,'rajgadh');

INSERT INTO Orders (order_id, customer_id, order_date,product,quantity,sales) 
VALUES
(101, 1, '2023-08-23','A',11,2345),
(102, 2, '2023-08-24','B',24,7800),
(103, 1, '2023-08-25','C',7,2900),
(104, 3, '2023-08-25','B',14,5600),
(105, 4, '2023-08-26','D',9,7522);

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

DELETE FROM customer WHERE customer_id=1;

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

--  2)             "ON DELETE SET NULL"
-- Using "ON DELETE SET NULL" in a foreign key relationship 
-- means that when a referenced row (in the parent table) 
-- is deleted, the corresponding values in the referencing table 
-- (child table) will be set to NULL.

DROP TABLE orders;
DROP TABLE customer;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    mob_num BIGINT,
    address VARCHAR(100)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
product VARCHAR(40),
quantity INT,
sales DECIMAL(10,2),
FOREIGN KEY(customer_id) references Customer(customer_id)
ON DELETE SET NULL
);

INSERT INTO Customer (customer_id, customer_name,mob_num,address) VALUES
(1, 'John Doe',3456,'pune'),
(2, 'Jane Smith',7823,'mexico'),
(3, 'Alice Johnson',5623,'new delhi'),
(4, 'Michael Brown',9034,'pune'),
(5, 'Emily White',8871,'rajgadh');

INSERT INTO Orders (order_id, customer_id, order_date,product,quantity,sales) 
VALUES
(101, 1, '2023-08-23','A',11,2345),
(102, 2, '2023-08-24','B',24,7800),
(103, 1, '2023-08-25','C',7,2900),
(104, 3, '2023-08-25','B',14,5600),
(105, 4, '2023-08-26','D',9,7522);

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

DELETE FROM customer WHERE customer_id=1;

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

-- ---------------------------------ON UPDATE CLAUSE------------------
-- 1) ON UPDATE CASCADE
-- Using "ON UPDATE CASCADE" in a foreign key relationship means 
-- that when the referenced value (in the parent table) is updated, 
-- the corresponding values in the referencing table (child table) 
-- will be automatically updated to reflect the change. 
-- This is useful when you want to maintain consistency between 
-- related data.
DROP TABLE orders;
DROP TABLE customer;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    mob_num BIGINT,
    address VARCHAR(100)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
product VARCHAR(40),
quantity INT,
sales DECIMAL(10,2),
FOREIGN KEY(customer_id) references Customer(customer_id)
ON UPDATE CASCADE
);

INSERT INTO Customer (customer_id, customer_name,mob_num,address) VALUES
(1, 'John Doe',3456,'pune'),
(2, 'Jane Smith',7823,'mexico'),
(3, 'Alice Johnson',5623,'new delhi'),
(4, 'Michael Brown',9034,'pune'),
(5, 'Emily White',8871,'rajgadh');

INSERT INTO Orders (order_id, customer_id, order_date,product,quantity,sales) 
VALUES
(101, 1, '2023-08-23','A',11,2345),
(102, 2, '2023-08-24','B',24,7800),
(103, 1, '2023-08-25','C',7,2900),
(104, 3, '2023-08-25','B',14,5600),
(105, 4, '2023-08-26','D',9,7522);

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

UPDATE customer SET customer_id=9 WHERE customer_id=1;

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

-- 2)ON UPDATE SET NULL
DROP TABLE orders;
DROP TABLE customer;

CREATE TABLE Customer (
    customer_id INT PRIMARY KEY,
    customer_name VARCHAR(50),
    mob_num BIGINT,
    address VARCHAR(100)
);

CREATE TABLE orders(
order_id INT PRIMARY KEY,
customer_id INT,
order_date DATE,
product VARCHAR(40),
quantity INT,
sales DECIMAL(10,2),
FOREIGN KEY(customer_id) references Customer(customer_id)
ON UPDATE SET NULL
);

INSERT INTO Customer (customer_id, customer_name,mob_num,address) VALUES
(1, 'John Doe',3456,'pune'),
(2, 'Jane Smith',7823,'mexico'),
(3, 'Alice Johnson',5623,'new delhi'),
(4, 'Michael Brown',9034,'pune'),
(5, 'Emily White',8871,'rajgadh');

INSERT INTO Orders (order_id, customer_id, order_date,product,quantity,sales) 
VALUES
(101, 1, '2023-08-23','A',11,2345),
(102, 2, '2023-08-24','B',24,7800),
(103, 1, '2023-08-25','C',7,2900),
(104, 3, '2023-08-25','B',14,5600),
(105, 4, '2023-08-26','D',9,7522);

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

UPDATE customer SET customer_id=9 WHERE customer_id=1;

SELECT * FROM CUSTOMER;
SELECT * FROM ORDERS;

-- 3)ON UPDATE NO ACTION or ON UPDATE RESTRICT
-- by default no need 



-- -----------------------------------------------------------------------------------------------
-- Normalization
--                                 NORMALIZATION
-- Normalization in SQL refers to the process of organizing and 
-- structuring a relational database in a way that reduces redundancy 
-- and dependency, while ensuring data integrity and efficient querying. 

-- This process involves breaking down a large table into smaller, 
-- related tables and establishing relationships between them. 
-- The goal is to minimize data duplication, update anomalies, 
-- and inconsistencies.

-- Normalization is usually divided into several normal forms, 
-- each with its own criteria for organizing data. 
-- The most common normal forms are:

-- First Normal Form (1NF): Ensures that each column contains only 
-- atomic (indivisible) values, and there are no 
-- repeating groups or arrays within a row.

-- Second Normal Form (2NF): Builds upon 1NF and 
-- eliminates partial dependencies. 
-- A table is in 2NF if it is in 1NF and all non-key attributes 
-- are fully functionally dependent on the entire primary key.

-- Third Normal Form (3NF): Further reduces redundancy by removing 
-- transitive dependencies. 
-- A table is in 3NF if it is in 2NF and all non-key attributes 
-- are non-transitively dependent on the primary key.
-- Boyce-Codd Normal Form (BCNF): An extension of 3NF, BCNF 
-- deals with situations where certain functional dependencies 
-- between attributes might cause anomalies. 
-- A table is in BCNF if, for every non-trivial functional dependency 
-- X → Y, X is a superkey.

-- Fourth Normal Form (4NF) and beyond: These are higher levels 
-- of normalization that address more complex cases of redundancy 
-- and dependency. They are used in specific situations where higher 
-- degrees of data integrity are required.

-- Normalization involves breaking down tables into smaller ones, 
-- establishing relationships through primary and foreign keys, 
-- and ensuring data is organized in such a way that updates, 
-- inserts, and deletes can be performed without introducing anomalies 
-- or inconsistencies.

-- While normalization is crucial for maintaining data integrity 
-- and reducing redundancy, it's important to strike a balance 
-- between normalization and performance. Over-normalizing can 
-- lead to complex joins and slow queries, so a well-designed 
-- database should consider both normalization and denormalization 
-- strategies based on the specific use cases and performance requirements.
-- let's delve into the details of each normal form: 
-- First Normal Form (1NF), Second Normal Form (2NF), 
-- and Third Normal Form (3NF).
-- 1. First Normal Form (1NF):
-- The first normal form ensures that a table's structure eliminates 
-- any repeating groups and ensures that every column contains only 
-- atomic (indivisible) values. Here are the requirements for 1NF:
-- Each column must contain atomic (indivisible) values. This means 
-- that each value in a column should not be a list, array, or a 
-- group of values.
-- There should be a primary key that uniquely identifies each 
-- row in the table.
-- No repeating groups are allowed, meaning there should be no
--  columns that contain multiple values.
-- For example, consider a table storing information about students 
-- and their courses. A non-1NF representation could look like:

-- Student ID          Courses
-- 1                Math,Physics
-- 2                Chemistry,Biology
-- To bring this table to 1NF, you would split the courses into 
-- separate rows:

-- Student ID    Course
-- 1            Math
-- 1           Physics
-- 2           Chemistry
-- 2           Biology


-- 2. Second Normal Form (2NF):
-- Second normal form builds upon the first normal form and addresses 
-- partial dependencies. A table is in 2NF if it meets the 
-- following criteria:

-- It is in 1NF.
-- All non-key attributes are fully functionally dependent on the 
-- entire primary key.
-- Partial dependencies occur when attributes depend on only part 
-- of the primary key. To resolve this, you typically create separate 
-- tables for the partially dependent attributes and establish 
-- relationships using primary and foreign keys.

-- For example, consider a table tracking orders with attributes 
-- (Order ID, Product ID, Product Name, Quantity). The primary key is 
-- (Order ID, Product ID). However, Product Name depends only 
-- on Product ID, creating a partial dependency. To achieve 
-- 2NF, you'd split the table into two: one for orders and 
-- another for products.

-- 3. Third Normal Form (3NF):
-- Third normal form builds upon the second normal form and addresses 
-- transitive dependencies. A table is in 3NF if it meets the 
-- following criteria:
-- It is in 2NF.
-- All non-key attributes are non-transitively dependent on the 
-- primary key.
-- Transitive dependencies occur when an attribute depends on
-- another non-key attribute, which in turn depends on the 
-- primary key. To achieve 3NF, you may need to further 
-- break down tables and attributes to eliminate these dependencies.

-- For example, consider a table storing information about customers, 
-- their addresses, and the employees handling their orders. 
-- If employee information depends on customer addresses, which in
--  turn depend on customer IDs, this is a transitive dependency.
--  To achieve 3NF, you'd separate customer and employee information 
--  into distinct tables.

-- Remember that while normalization is crucial for data integrity, 
-- applying it too rigorously can lead to complex query structures.
--  Balancing normalization with performance requirements is important 
-- for designing an efficient database.








