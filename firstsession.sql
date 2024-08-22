CREATE database rushikesh;

#comment
-- comment

/* multiple line 
comment
*/

-- -----------------------------------------SQL--------------------------------------------

-- SQL it is a structured query language

-- DATA 
-- information, content, fact that can be measured

-- Data is everywhere 

-- types of data(computer engineering)
-- 1)Structured data 2)Unstructured data 3)Semistructure data

-- 1)structured data 
-- data is stored in rows and column format (tabular data)
-- ex. csv, excel, sql

-- 2)Unstructured data
-- may be in any format (excluding 	tabular)
-- may be in bytes
-- ex. image, audio, video, text

-- 3)Semistructure data
-- combination of structured and unstructured data
-- ex. documents, dictionary (key-value pair), graphs

-- If data is tabular format (structure) the column contain which types of data
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
-- values may anything in given range 
-- int/float 
-- ex.Height,weight,pressure,ph,hb,distance,
-- price,amount,sales,profit,temp,stockmarket
-- BMI,gst,marks,alcohol, mileage
-- aggregate function
-- sum,min,max,avg,count
-- Contionuos data follows normal distribution/guassian distribution 
-- most of the data lies near to mean value(bell shape curve)


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
-- meqaningfully ordered
-- rating,grade,quality



-- DATA 
-- DATABASE>>collection data>>it's like a folder 
-- if database is software(server-client)>>DBMS(database management system)
-- DBMS is a software which is used to store,handle,manipulate,fetch data

-- typs of DBMS 
-- 1) RDBMS >> Relational DBMS
-- 2)Non RDBMS>> NON relational DBMS>> NO SQL DATABASE

-- 1) RDBMS >> Relational DBMS
-- RDBMS is a software used to store strucure(tabular) data which has pre-defined relationaship
-- ex. MYSQL,POSTgressql,Oracle,MS-SQL,server,SQLITE

-- 2)Non RDBMS>> NON relational DBMS>> NO SQL DATABASE
-- used to store semistructure data 
-- ex. MongoDB,Redis

-- SQL(Structure query lang)
-- programming language
-- language used to handle relational database

-- ess-que-ell

-- SQL concepts 
-- SQL is case insensitive programming language

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
-- can use space>>``
-- can use keywords if>>``
-- we cannot use special symbols

-- Keywords
-- special eserved words
-- it has special meaning
-- 1000+ keywords

-- Data types
-- 1)Numeric>>integer,float
-- Integer>>WHOLE NUMBER Ex ,0, -2 >>roll no
-- Float>>which contain decimal point ex 56.89, 34.00 >> salary,distance
-- NUMERIC DATA TYPES IN SQL
-- INT,TINYINT,FLOAT,DECIMAL(M,D),DOUBLE(M,D)

-- 2)String>> collection of character
-- character means everything >>alphabets,digits,special symbols,space
-- string should be writtenj in single quotes
-- 'avi' , '123'
-- Gender,Color

-- STRING DATA TYPES IN SQL
-- CHAR(size),VARCHAR(size),TEXT,LONGTEXT

-- 3)date and time
-- date and time related
-- date and time should be written in single quotes 
-- Ex. '2024-07-04', '12:15:25'
-- order date
-- DATA AND TIME DATA TYPES IN SQL
-- DATE,TIME,DATETIME,TIMESTAQMP,YEAR


-- -------------------------------SQL QUERIES-------------------------------------------

-- 1) how to create database
-- syntax
-- CREATE DATABASE database_name;

CREATE DATABASE atlic_db;


-- 2)Show databases
-- syntax
-- SHOW DATABASES;

SHOW DATABASES;

-- 3)how to use specific database
-- syntax
-- USE databasename

USE atlic_db;

-- 4)how to create table in database
#syntax
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
joinin_date DATE
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
