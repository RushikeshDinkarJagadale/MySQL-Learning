CREATE DATABASE rushikesh;

-- -----------------------------------------SQL--------------------------------------------

-- SQL it is a structured query language

-- DATA 
-- information, content, fact that can be measured

-- Data is everywhere 

-- types of data(computer engineering)
-- 1)Structured data 2)Unstructured data 3)Semistructured data

-- 1)structured data 
-- data is stored in rows and column format (tabular data)
-- ex. csv, excel, sql

-- 2)Unstructured data
-- may be in any format (excluding  tabular)
-- may be in bytes
-- ex. image, audio, video, text

-- 3)Semistructured data
-- combination of structured and unstructured data
-- ex. documents, dictionary (key-value pair), graphs

-- If data is in tabular format (structured) the column contains which types of data
-- types of data(tabular/stats)

-- 1)Quantitative data...Numeric
-- 2)Qualitative data...categorical

-- 1)Quantitative data...Numeric
-- data in number/numeric format
-- ex. Height, weight, pressure, ph, hb, distance,
-- price,amount,sales,profit,temp,stockmarket
-- BMI,gst,marks,alcohol,mileage

-- types of Quantitative data...Numeric
-- a)Discrete b)Continuous

-- a) Discrete
-- finite number
-- always integer
-- ex. no of cars, no of bank account

-- b)Continuous
-- values may be anything in a given range 
-- int/float 
-- ex.Height,weight,pressure,ph,hb,distance,
-- price,amount,sales,profit,temp,stockmarket
-- BMI,gst,marks,alcohol, mileage
-- aggregate function
-- sum,min,max,avg,count
-- Continuous data follows normal distribution/Gaussian distribution 
-- most of the data lies near the mean value(bell-shaped curve)


-- Qualitative...categorical
-- mostly text but sometimes may be numeric
-- fixed not categories 
-- gender,blood group,party name,rating,grade, quality,
-- programming lang, colors,month,year,quarter,days
-- result 

-- types of qualitative ...categorical
-- a) nominal b)Ordinal

-- a)Nominal
-- categories have high values 
-- ex,gender,blood group,party name,year,quarter,days

-- b)Ordinal
-- meaningfully ordered
-- rating,grade,quality



-- DATA 
-- DATABASE>>collection of data>>it's like a folder 
-- if database is software(server-client)>>DBMS(database management system)
-- DBMS is a software that is used to store,handle,manipulate,fetch data

-- types of DBMS 
-- 1) RDBMS >> Relational DBMS
-- 2)Non RDBMS>> NON relational DBMS>> NO SQL DATABASE

-- 1) RDBMS >> Relational DBMS
-- RDBMS is a software used to store structured (tabular) data which has a pre-defined relationship
-- ex. MYSQL, POSTGRESQL, Oracle, MS-SQL, server, SQLITE

-- 2)Non RDBMS>> NON relational DBMS>> NO SQL DATABASE
-- used to store semistructured data 
-- ex. MongoDB, Redis

-- SQL (Structured query lang)
-- programming language
-- language used to handle relational database

-- SQL concepts 
-- SQL is a case-insensitive programming language

-- Identifier 
-- naming system
-- used to identify database name,column,table,view,function,stored procedure
-- trigger $ variable
-- Rules
-- An identifier can contain 
-- A-Z
-- a-z
-- 0-9
-- _(underscore)
-- can use space >> ``
-- can use keywords if >> ``
-- we cannot use special symbols

-- Keywords
-- special reserved words
-- it has a special meaning
-- 1000+ keywords

-- Data types
-- 1)Numeric >> integer,float
-- Integer >> WHOLE NUMBER Ex ,0, -2 >> roll no
-- Float >> which contain decimal point ex 56.89, 34.00 >> salary,distance
-- NUMERIC DATA TYPES IN SQL
-- INT,TINYINT,FLOAT,DECIMAL(M,D),DOUBLE(M,D)

-- 2)String >> collection of characters
-- character means everything >> alphabets,digits,special symbols,space
-- string should be written in single quotes
-- 'avi' , '123'
-- Gender,Color

-- STRING DATA TYPES IN SQL
-- CHAR(size),VARCHAR(size),TEXT,LONGTEXT

-- 3)date and time
-- date and time-related
-- date and time should be written in single quotes 
-- Ex. '2024-07-04', '12:15:25'
-- order date
-- DATE AND TIME DATA TYPES IN SQL
-- DATE,TIME,DATETIME,TIMESTAMP,YEAR


-- -------------------------------SQL QUERIES-------------------------------------------

-- 1) how to create a database
-- syntax
-- CREATE DATABASE database_name;

CREATE DATABASE atlic_db;


-- 2)Show databases
-- syntax
-- SHOW DATABASES;

SHOW DATABASES;

-- 3)how to use a specific database
-- syntax
-- USE database_name

USE atlic_db;

-- 4)how to create a table in database
-- syntax
/*
CREATE TABLE table_name(
col_name1 DATATYPE(size)CONSTRAINTS,
col_name2 DATATYPE(size)CONSTRAINTS,
col_name3 DATATYPE(size)CONSTRAINTS
);

*/

CREATE TABLE student(
roll_no INT PRIMARY KEY,
stu_name VARCHAR(40),
marks FLOAT,
reg_date DATE
);

CREATE TABLE emp(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(40),
salary FLOAT,
joining_date DATE
);

CREATE TABLE doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialization VARCHAR(100),
    phone_number VARCHAR(15),
    email VARCHAR(100),
    date_of_birth DATE,
    gender VARCHAR(10),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    country VARCHAR(50),
    license_number VARCHAR(50),
    hire_date DATE,
    department VARCHAR(100)
);

CREATE TABLE farmers (
    farmer_id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    phone_number VARCHAR(15),
    email VARCHAR(100),
    date_of_birth DATE,
    gender VARCHAR(10),
    address VARCHAR(255),
    city VARCHAR(50),
    state VARCHAR(50),
    postal_code VARCHAR(10),
    country VARCHAR(50),
    farm_size DECIMAL(10, 2),  -- Size of the farm in acres or hectares
    farm_type VARCHAR(100),  -- Type of farm (e.g., Dairy, Crop, Poultry)
    registration_date DATE
);

DESC student;
DESC emp;
DESC doctors;
DESC farmers;

SELECT * FROM farmers;

-- 6) Show all tables
-- syntax 
-- SHOW TABLES;
 
USE atlic_db;
 
SHOW TABLES;

-- 7)Show data from table (how to fetch data from table)
-- syntax
-- SELECT * FROM table_name;
 
SELECT * FROM student;

-- 8)how to insert data into table
-- syntax
-- INSERT INTO table_name(col1,col2,col3,...) VALUES(value1,value2,value3,...);

-- concept-1 INSERT SINGLE RECORD
 
INSERT INTO student(roll_no,stu_name,marks,reg_date) VALUES(11,'avi',67.89,'2024-07-08');
 
INSERT INTO student(roll_no,stu_name,marks,reg_date) VALUES(12,'rushi',64.65,'2022-02-18');


SELECT *FROM student;

-- concept-2 INSERT MULTIPLE RECORDS AT A TOME

INSERT INTO student(roll_no, stu_name, marks, reg_date) 
VALUES (13, 'sana', 89.45, '2024-08-08'),(14, 'suraj', 88.56, '2024-08-05');

SELECT * FROM student;

-- Concept-3 INSERT VALUES INTO SPECIFIC COLUMN

INSERT INTO student(roll_no,stu_name) VALUES(15,'RAM');

SELECT * FROM student;

-- Concept-4 INSERT VALUES WITHOUT SPECIFYING COLUMN NAME

INSERT INTO student VALUES(16, 'abc', 76.00, '2024-08-05');

SELECT * FROM student;

INSERT INTO student VALUES(17, 'bkl', null, '2024-08-08');

SELECT * FROM student;

-- concept-5 SINGLEQUOTE PROBLEM
-- k'kwagh

INSERT INTO student VALUES(18, 'k''kwagh', null, '2024-08-08');
INSERT INTO student VALUES(19, 'R\RJ', null, '2024-08-08');

SELECT * FROM student;

--

