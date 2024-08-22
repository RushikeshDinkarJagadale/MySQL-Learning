-- -----------------------------30 july 2024-------------------------------

# Types of command
# DML,DDL,DQL,DCL,TCL

--           DQL - Data Query Language:
-- Meaning: DQL involves SQL commands that are used to query and 
-- retrieve data from databases. These commands allow you to 
-- specify conditions, filter data, sort results, and 
-- perform calculations on the data being retrieved.
-- Examples: SELECT




--             DML - Data Manipulation Language:
-- Meaning: DML refers to a set of SQL commands that are used 
-- to manipulate the data stored in a database. 
-- These commands allow you to insert, update, and delete records 
-- in tables, as well as retrieve data from tables.
-- Examples: INSERT, UPDATE, DELETE




--              DDL - Data Definition Language:
-- Meaning: DDL encompasses SQL commands that 
-- are used to define, 
-- manage, and manipulate the structure of database objects. 
-- These commands help in creating, altering, and deleting database 
-- objects such as tables, indexes, and views.
-- Examples: CREATE, ALTER, DROP, TRUNCATE


--             TCL - Transaction Control Language:
-- Meaning: TCL includes SQL commands that manage transactions, 
-- which are sequences of one or more SQL statements that are 
-- treated as a single unit of work. TCL commands control the 
-- initiation, termination, and integrity of transactions.
-- Examples: COMMIT, ROLLBACK, SAVEPOINT


--            DCL - Data Control Language:
-- Meaning: DCL consists of SQL commands that 
-- are used to control 
-- access to data within a database. 
-- These commands manage privileges and permissions granted to 
-- users and roles for performing various operations on database objects.
-- Examples: GRANT, REVOKE


-- These categories of SQL commands serve distinct purposes and 
-- allow users to perform a wide range of operations on databases, 
-- from defining their structure to manipulating and querying data, 
-- managing transactions, and controlling access.

-- Description

--           Data Query Language (DQL) Commands:
-- SELECT: A DQL command used to retrieve data from one or more tables 
-- based on specified conditions. It allows you to retrieve specific 
-- columns, apply filters, sort data, and perform various calculations 
-- on the data being retrieved.


--           Data Definition Language (DDL) Commands:
-- CREATE: A DDL command used to create new database objects such 
-- as tables, indexes, views, or schemas. It defines the structure 
-- and properties of the object to be created.
-- ALTER: A DDL command used to modify existing database objects. 
-- It can be used to add, modify, or delete columns from a table, 
-- among other changes.
-- DROP: A DDL command used to delete or remove database objects 
-- like tables, indexes, or views from the database.
-- TRUNCATE: A DDL command used to quickly remove all rows from a 
-- table while maintaining the table's structure.


--            Data Manipulation Language (DML) Commands:
-- INSERT: A DML command used to add new records or rows of data 
-- into a table. It allows you to specify the values to be inserted 
-- into specific columns.
-- UPDATE: A DML command used to modify existing records in a table. 
-- It allows you to change the values of specific columns based on
-- certain conditions.
-- DELETE: A DML command used to remove records or rows from a table
--  based on specified conditions.


--          Data Control Language (DCL) Commands:
-- GRANT: A DCL command used to provide specific privileges and 
-- permissions to users or roles. It allows you to define what 
-- actions users are allowed to perform on certain database objects.
-- REVOKE: A DCL command used to remove or revoke previously 
-- granted privileges from users or roles.



--            Transaction Control Commands(TCL):
-- COMMIT: A command used to save all the changes made within 
-- the current transaction to the database, making them permanent.
-- ROLLBACK: A command used to undo changes made within the 
-- current transaction and revert the database to the state 
-- it was in before the transaction started.
-- SAVEPOINT: A command used to set a specific point within 
-- a transaction to which you can later roll back if needed.


--              Session Control Commands:
-- SET: A command used to modify session-specific settings, 
-- such as date format or language preferences, for the current 
-- database session.



--                Other Commands:
-- SHOW (or DESC or DESCRIBE): A command used to display the 
-- structure of a table, including its columns and data types.
-- USE: A command used to select a specific database to work 
-- with if multiple databases are available.
-- EXECUTE: A command used to execute a stored procedure 
-- or user-defined function, which is a pre-written set of SQL statements.


-- --------------------------------------------31 july 2024-----------------------------------------------

--                                            1) DQL

-- DQL (data query language)
-- Meaning: DQL involves SQL commands that are used to query and 
-- retrieve data from databases. These commands allow you to 
-- specify conditions, filter data, sort results, and 
-- perform calculations on the data being retrieved.
-- Examples: SELECT

--                                            2)  DML

-- DML - Data Manipulation Language:
-- Meaning: DML refers to a set of SQL commands that are used 
-- to manipulate the data stored in a database. 
-- These commands allow you to insert, update, and delete records 
-- in tables, as well as retrieve data from tables.
-- Examples: INSERT, UPDATE, DELETE

-- 1)INSERT
-- 2)UPDATE

-- how to update records

CREATE DATABASE dml_db;
USE dml_db;

CREATE TABLE student(
roll_no INT PRIMARY KEY,
stu_name VARCHAR(40) NOT NULL,
dept VARCHAR(40),
marks FLOAT
);

INSERT INTO student (roll_no, stu_name, dept, marks)
VALUES
    (1001, 'Amit Sharma', 'CS', 85),
    (1002, 'Priya Patel', 'EC', 92),
    (1003, 'Rahul Verma', 'ME', 39),
    (1004, 'Sneha Gupta', 'CE', 67),
    (1005, 'Neha Singh', 'CS', 91),
    (1006, 'Rajiv Kumar', 'ME', 73),
    (1007, 'Pooja Choudhary', 'EC', 44),
    (1008, 'Aarti Mehta', 'CS', 95),
    (1009, 'Vikram Yadav', 'CE', 82),
    (1010, 'Deepika Reddy', 'ME', 54);
    
SELECT * FROM student;

#SYNTAX
-- UPDATE table_name
-- SET column1 =value1, column2=value2,.....
-- WHERE condition;

-- Q1 Update marks of roll no 1002 to 99

UPDATE student SET marks=99 WHERE roll_no =1002;
SELECT * FROM student;

-- Q2 Update marks to 77 and dept to ME of 1004 roll no

UPDATE student SET marks=77, dept ='ME' WHERE roll_no =1004;
SELECT * FROM student;

-- Q3 update dept of aarti mehta to EC
UPDATE student SET dept='EC' WHERE stu_name='Aarti Mehta';
SELECT * FROM student;

-- for update and delete use primary key otherwise you get the error
-- if you want do then disable safe update mode

SET SQL_SAFE_UPDATES=0;

UPDATE student SET dept='EC' WHERE stu_name='Aarti Mehta';
SELECT * FROM student;

SET SQL_SAFE_UPDATES=1;

-- update full column
-- SET SQL_SAFE_UPDATES=0;
-- UPDATE student SET marks=00;

SELECT * FROM student;
SET SQL_SAFE_UPDATES=1;


-- 3)DELETE
-- SYNTAX 
-- DELETE FROM table_name
-- WHERE condition;

-- Q1 DELETE record of 1005 roll no
DELETE FROM student WHERE roll_no =1005;
SELECT * FROM student;

-- -----------------------------------------------------
UPDATE student SET dept=null WHERE roll_no=1001;
SELECT * FROM student;

UPDATE student SET dept='EC' WHERE roll_no=1001;
SELECT * FROM student;
-- ----------------------------------------------------

-- delete 2 records columns at a time
DELETE  FROM student WHERE roll_no=1006 OR roll_no=1007;
SELECT * FROM student;

SELECT * FROM student WHERE dept='EC';

-- delete multiple records
DELETE  FROM student WHERE roll_no IN (1008,1009,1010);
SELECT * FROM student;

-- DELETE without where condition
SET SQL_SAFE_UPDATES=0;
DELETE FROM student;

SELECT * FROM student;

SET SQL_SAFE_UPDATES=1;

INSERT INTO student (roll_no, stu_name, dept, marks)
VALUES
    (1001, 'Amit Sharma', 'CS', 85),
    (1002, 'Priya Patel', 'EC', 92),
    (1003, 'Rahul Verma', 'ME', 39),
    (1004, 'Sneha Gupta', 'CE', 67),
    (1005, 'Neha Singh', 'CS', 91),
    (1006, 'Rajiv Kumar', 'ME', 73),
    (1007, 'Pooja Choudhary', 'EC', 44),
    (1008, 'Aarti Mehta', 'CS', 95),
    (1009, 'Vikram Yadav', 'CE', 82),
    (1010, 'Deepika Reddy', 'ME', 54);


SELECT * FROM student;

-- update marks>> 5 grace>> ME
SET SQL_SAFE_UPDATES=0;
UPDATE student SET marks= marks+5 WHERE dept='ME';
SELECT * FROM student;


UPDATE student SET stu_name = CONCAT('Mr.', stu_name);
SELECT * FROM student;

#UPDATE student SET marks=marks*roll_no WHERE roll_no IS NOT NULL

-- UPDATE CASE WHEN

-- marks 80%>>A>>1
-- marks 75%>>B>>2
-- >marks 60%>>C>>3
-- <marks 60%>>D>>4
-- ELSE D

ALTER TABLE student
ADD COLUMN result VARCHAR(40);

SELECT* FROM student;

UPDATE student SET result=
CASE
WHEN marks>=80 THEN'A'
WHEN marks>=75 THEN'B'
when marks>=60 THEN'C'
ELSE 'D'
END WHERE roll_no IS NOT NULL;

SELECT * FROM student;

-- delete records >> condition >> stu_name>=11 character

DELETE FROM student WHERE length(stu_name)>=12;

SELECT * FROM student;
-- -------------------------------              ----------------------------------------
-- -------------------------------01 august 2024----------------------------------------
-- -------------------------------              ----------------------------------------

--                                DDL
-- DDL - Data Definition Language:
-- Meaning: DDL encompasses SQL commands that 
-- are used to define, 
-- manage, and manipulate the structure of database objects. 
-- These commands help in creating, altering, and deleting database 
-- objects such as tables, indexes, and views.
-- Examples: CREATE, ALTER, DROP, TRUNCATE

-- CREATE 
-- database,table,view,index,trigger,function,procedure

#VIEW
-- virtual table
-- VIEW is virtual table or it is a instance of a table

-- country asia continent
-- sales 21 22 23 24

USE world;
CREATE VIEW asiacon AS (SELECT name,population,SurfaceArea,LifeExpectancy FROM country
WHERE continent='asia');

SELECT * FROM asiacon;

-- DROP VIEW asiacon;

# ALTER 
-- THIS COMMAND IS TO ADD CHANGE MODIFY DROP EXISTING STRUCTURE OF TABLE

-- ADD COLUMN
-- ENABLE/DISABLE CONSTRAINTS
-- CHANGE COLUMN NAME
-- MODIFY COLUMN DATA TYPE OR CONSTRAINT
-- DROP COLUMN
-- DROP TABLE
-- DROP DATABASE

CREATE DATABASE ddl_db;
USE ddl_db;

CREATE TABLE product(
product_id INT,
product_name VARCHAR(255) NOT NULL,
prize_per_quantity DECIMAL(10,2),
quantity INT
);

INSERT INTO Product (product_id, product_name, 
prize_per_quantity, quantity)
VALUES
    (1, 'A', 4500.00, 50),
    (2, 'B', 2350.75, 100),
    (3, 'C', 7200.25, 75),
    (4, 'D', 8560.50, 30),
    (5, 'E', 5500.00, 20),
    (6, 'F', 6800.00, 45),
    (7, 'G', 3100.25, 60),
    (8, 'H', 9200.75, 25),
    (9, 'I', 4100.50, 90),
    (10, 'J', 7600.00, 15);
    
SELECT * FROM product;

-- HOW TO ADD A COLUMN

-- 1)ADD COLUMN WITHOUT CONSTRAINT
-- 2)ADD COLUMN WITH CONSTRAINT
-- 3)ADD COLUMN WITH POSITION
-- 4)HOW TO ADD MULTIPLE COLUMN AT A TIME
-- 5)ADD COLUMN WITH ADD CONSTRAINT

-- 1)ADD COLUMN WITHOUT CONSTRAINT
-- SYNTAX
-- ALTER TABLE table_name
-- ADD COLUMN col_name DATA_TYPE;

ALTER TABLE product
ADD COLUMN sales DECIMAL(10,2);

SELECT * FROM product;

SET SQL_SAFE_UPDATES=0;

UPDATE product SET sales=prize_per_quantity*quantity;
SELECT * FROM product;
SET SQL_SAFE_UPDATES=1;

-- 2)ADD COLUMN WITH CONSTRAINT
ALTER TABLE product
ADD COLUMN product_size INT NOT NULL;
-- ----------------------------------------------
ALTER TABLE product
ADD COLUMN col1 INT UNIQUE KEY;
DESC product;
-- -----------------------------------------------

-- 3)ADD COLUMN WITH POSITION
-- LAST(BY_DEFAULT)
-- FIRST
-- AFTER

ALTER TABLE product
ADD COLUMN new1 INT AFTER product_name;

DESC product;
SELECT * FROM product;

ALTER TABLE product
ADD COLUMN new2 INT FIRST;
DESC product;

-- 4)HOW TO ADD MULTIPLE COLUMN AT A TIME

ALTER TABLE product
ADD COLUMN new3 INT,
ADD COLUMN new4 VARCHAR(40);

DESC PRODUCT;

-- ADD CONSTRAINT

ALTER TABLE PRODUCT
ADD COLUMN new5 INT auto_increment,
ADD PRIMARY KEY(new5);

DESC PRODUCT;
SELECT * FROM product;

-- 5)ADD COLUMN WITH ADD CONSTRAINT

ALTER TABLE PRODUCT
ADD COLUMN new5 INT auto_increment,
ADD PRIMARY KEY(new5);
DESC PRODUCT;

-- ADD CONSTRAINT INTO EXISTING TABLE

ALTER TABLE product
ADD UNIQUE KEY(new3);
DESC product;

-- CHANGE COLUMN

ALTER TABLE product
CHANGE COLUMN product_name product_type VARCHAR(255); 
DESC product;

ALTER TABLE product
RENAME COLUMN new2 TO Rushi;
DESC product; 

-- 8) RENAME TABLE NAME
ALTER TABLE product
RENAME TO mysales;

RENAME TABLE mysales TO product;


-- -------------------------------              ----------------------------------------
-- -------------------------------05 august 2024----------------------------------------
-- -------------------------------              ----------------------------------------
-- 9) MODIFY COLUMN
-- THIS IS USED TO MODIFY THE SIZE OF DATA TYPE ITSELF OF EXISTING COLUMN WITHOUT CHANGING COLUMN NAME
-- Syntax 
-- ALTER TABLE table_name
-- MODIFY COULMN col_name data_type(size);

DESC product;

ALTER TABLE product
MODIFY COLUMN new3 VARCHAR(40);

DESC product;

-- modify column with constraint
DESC product;

ALTER TABLE product
MODIFY COLUMN new1 DECIMAL(10,2) UNIQUE KEY;
DESC product;
SELECT * FROM PRODUCT;

ALTER TABLE product
MODIFY COLUMN product_size BIGINT NOT NULL;
DESC product;



-- 11) DROP COLUMN,TABLE,DATABASE
ALTER TABLE product
DROP COLUMN Rushi;

DESC Product;
-- DROP TABLE 
-- DROP TABLE product;

-- DROP DATABASE
-- DROP DATABASE ddl_db;

-- TRUNCATE TABLE
-- DELETE DATA FROM INSIDE TABLE....not a structure of table

-- TRUNCATE TABLE product;              --All data will be deleted

-- ---------------------------------------------------------------------
-- DROP CONSTRAINT
-- later
-- ---------------------------------------------------------------------

--                                             TCL
-- TCL (Transaction Control Language)
-- to manage transactions within a databse

-- COMMIT ROLLBACK SAVEPOINT

-- Transactions are units of work that can 
-- be either committed (made permanent) or rolled back (undone). 

-- The main TCL commands are:
-- COMMIT: Saves all changes made within a transaction.
-- ROLLBACK: Undoes all changes made within a transaction.
-- SAVEPOINT: Sets a savepoint within a transaction to allow 
-- partial rollback.

CREATE DATABASE tcl_db;
USE tcl_db;

CREATE TABLE acc(
acc_no INT,
name VARCHAR(40),
bal DECIMAL(10,2),
PRIMARY KEY(acc_no)
);

insert into acc values
(1101,'raj',11000),
(1102,'avi',17000),
(1103,'sana',18000),
(1104,'sam',27000),
(1105,'tanu',35000),
(1106,'raghu',24000);

SELECT * FROM acc;

#1) TCL Steps
-- 1)Start transaction
-- 2)Set savepoint
-- 3)commit/rollback (transaction); 

-- 1) Start transaction
START transaction;

-- 2) Set Savepoint
SAVEPOINT sp1;

-- 3)transaction >>commit/rollback

UPDATE acc SET bal=8000 WHERE acc_no=1101;
SELECT * FROM acc;

-- ERROR
-- rollback

ROLLBACK TO sp1;
SELECT * FROM acc;

COMMIT;


--                                     DCL
#DCL
-- DATA CONTROL LANG

# DCL 
--            DCL - Data Control Language:
-- Meaning: DCL consists of SQL commands that 
-- are used to control 
-- access to data within a database. 
-- These commands manage privileges and permissions granted to 
-- users and roles for performing various operations on database objects.
-- Examples: GRANT, REVOKE

-- In SQL, GRANT and REVOKE are commands used to manage 
-- permissions and privileges on database objects. 
-- These commands are typically used to control access to 
-- various operations and data within a database. 
--                       ~~GRANT~~
-- The GRANT command is used to give specific privileges 
-- to a user or a role in the database. 
-- Privileges can include actions like SELECT, INSERT, UPDATE, 
-- DELETE, CREATE, 
-- DROP, etc. 
-- The basic syntax for the GRANT command is as follows:

-- GRANT privilege_type ON object_name TO user_or_role;

-- server 
-- client

 USE world;
 SHOW GRANTS FOR 'root'@'localhost';
 
 GRANT SELECT,UPDATE ON country TO root@localhost;
 
 REVOKE SELECT ON country FROM root@localhost;
 
 
 # ---------------------------------ADVANCE SQL----------------------------------
 
 
 
 
 

