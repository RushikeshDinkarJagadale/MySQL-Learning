CREATE DATABASE mydb;

# SQL
-- SQL

/* Hi
date 2/2/22
good day 
*/

-- ---------------------------------------------------------SQL----------------------------------------

-- STRUCTURE QUERY LANGUAGE

--  DATA
-- information,content,fact that can be meausred 

-- Data is everywhere 

-- types of data(computer engg)
-- 1) Structure data      2) Unstructure  data  3) Semistructure data

-- 1) Structure data  
-- data is stored in rows and columns format(tabular data)
-- ex csv,excel ,sql

--  2) Unstructure  data
-- may be in any format(excluding tabular) 
-- may be in bytes
-- ex Image,audio,video,text

-- 3) Semistructure data
-- combination of structure and unstructure data
-- ex Documents,Dictionary(key-value pair),graphs

-- if data in tabular format(structure), the column contain which type of data
-- types of data (tabular/stats)

-- 1) Quantitative data...Numeric
-- 2) Qualitative...Categorical


-- 1) Quantitative data...Numeric
-- data in number/numeric format
-- ex Height,Weight,pressure,Ph,Hb,distance,
-- price,amount,sales,profit,temp,stockmarket
-- BMI,gst,marks,alcohol,mileage

-- types of Quantitative data...Numeric
-- a) Discrete   b) Continuous

-- a) Discrete
-- finite number
-- always integer
-- ex no of cars,no of bank accounts

-- b) Continuous
-- values may anything in a given range
-- int/float
-- ex Height,Weight,pressure,Ph,Hb,distance,
-- price,amount,sales,profit,temp,stockmarket
-- BMI,gst,marks,alcohol,mileage
-- aggregate function
-- sum,min,max,avg,count
-- Continuous data follows normal distribution/guassian distribution
-- most of data lies near to mean value(bell shape curve)


-- 2) Qualitative...Categorical
-- mostly text but sometimes may be numeric 
-- fixed no of categories
-- Gender,Blood Group,Party name,rating,grade,quality,
-- programming lang, colors,month,year,quarter,days
-- result 

-- types of Qualitative...Categorical
-- a) Nominal    b) Ordinal

-- a) Nominal 
-- categories have equal orders
-- ex Gender,Blood Group,Party name,year,quarter,days

-- b) Ordinal
-- meaningfully ordered
-- rating,grade,quality



--  DATA 
-- DATABASE >> collection of data >> its like a folder 
-- if dataabse is software (server-client)>> DBMS (database management system)
-- DBMS >> is a software which is used to store ,handle,manipulate,fetch data

-- types of DBMS
-- 1) RDBMS  >> Relational DBMS >> SQL DATABASE
-- 2) NON RDBMS >> NON Relational DBMS  >> NO SQL DATABSE


-- 1) RDBMS  >> Relational DBMS >> SQL DATABASE
-- RDBMS is software used to store structure(tabular) data which has pre-defined relationship
-- ex MYSQL,POSTgresql,Oracle,MS-SQL server,SQLITE

-- 2) NON RDBMS >> NON Relational DBMS  >> NO SQL DATABSE
-- used to store semistructure data
-- ex MongoDB,Redis

-- SQL (structure query lang)
-- programming language
-- language used to handle relational database
 
-- ess-que-ell

-- SQL concepts 
-- SQL is case insensitive programming languge

-- Identifier
-- naming system
-- used to identify database,column,table,view,function,stored procedure
-- trigger $ variable
-- Rules 
-- An identifier can contain
-- A-Z
-- a-z
-- 0-9
-- _(underscore)
-- can use space only if  >> `      `
-- can use keywords only if  >> `      `
-- can not use special symbols

-- Keywords
-- special resreved words
-- has special meaning
-- 1000+ keywords

-- Data types 
-- 1) numeric >> integer ,float
-- integer >> WHOLE NUMBER  ex 44 ,0 ,-2   >> roll_num
-- float >> which contain decimal point ex 56.89,34.00   >> salary,distance

-- NUMERIC DATA TYPES IN SQL
-- INT,TINYINT,BIGINT,FLOAT,DECIMAL(M,D),DOUBLE(M,D)


-- 2) string >> collection of character 
-- character means everything >> alphabets,digits,special symbols,sapce
-- string value should be written in single quotes 
-- 'avi'  ,'123'   
--  Gender ,Color

-- STRING DATA TYPES IN SQL
-- CHAR(size),VARCHAR(size) ,TEXT,LONGTEXT


-- 3) date and time
-- date and time realated 
-- date and time  value should be written in single quotes 
-- '2024-07-04', '08:03:00'
-- order_date
-- DATE AND TIME DATA TYPES IN SQL
-- DATE,TIME,DATETIME,TIMESTAMP,YEAR

-- -------------------------------------------SQL QUERY --------------------------------------------

-- 1) how to create database
-- syntax
-- CREATE DATABASE database_name;

CREATE DATABASE atilic_db;


-- 2) show databases
-- syntax
-- SHOW DATABASE;

SHOW DATABASES;

-- 3) how to use specific database
-- syntax
-- USE databasename;

USE atilic_db;

-- 4) how to create table in database

# SYNTAX
/* 
CREATE TABLE table_name(
col_name1 DATATYPE(size) CONSTRAINTS,
col_name2 DATATYPE(size) CONSTRAINTS,
col_name3 DATATYPE(size) CONSTRAINTS
);

*/

CREATE TABLE student(
roll_num INT PRIMARY KEY,
stu_name VARCHAR(40),
marks FLOAT,
reg_date DATE
);

-- assignment >> employee 

CREATE TABLE emp(
emp_id INT PRIMARY KEY,
emp_name VARCHAR(40),
salary FLOAT,
joining_date DATE
);


-- 5) how to describe table
-- syntax
-- DESC/DESCRIBE  table_name;


DESC student;


-- 6) show all tables
-- syntax
-- SHOW TABLES;


USE atilic_db;

SHOW TABLES;


-- 7) show data from table/how to fetch data from table
-- syntax
-- SELECT * FROM table_name;

SELECT * FROM student;

-- 8) how to insert data into table 
-- syntax
-- INSERT INTO table_name(col1,col2,col3,...) VALUES(value1,value2.value3,..);

-- cocept-1  INSERT SINGLE RECORD

INSERT INTO student(roll_num,stu_name,marks,reg_date) VALUES(11,'avi',67.89,'2024-07-08');

SELECT * FROM student;

INSERT INTO student(roll_num,stu_name,marks,reg_date) VALUES(12,'raj',77.99,'2024-07-08');

SELECT * FROM student;

-- concept-2 INSERT MULTIPLE RECORD AT A TIME

INSERT INTO student(roll_num,stu_name,marks,reg_date) 
VALUES(13,'sana',89.45,'2024-08-08'),(14,'sam',88.56,'2024-05-04');

SELECT * FROM student;

-- concpt-3 INSERT VALUES INTO SPECIFIC COLUMN

INSERT INTO student(roll_num,stu_name) VALUES(15,'xyz');

SELECT * FROM student;

-- concept-4 INSERT VALUES WITHOUT SPECIFYING COLUMN NAME

INSERT INTO student VALUES(16,'abc',76.00,'2024-01-01');

SELECT * FROM student;

-- 25 column   >> 24 values 
INSERT INTO student VALUES(17,'tom',null,'2024-01-01');
SELECT * FROM student;

-- concept-5 SINGLE QUOTE PROBLEM
-- k'kwagh >> backslash or double quote

INSERT INTO student VALUES(18,'k\'kwagh',56.34,'2024-01-05');

SELECT * FROM student;


-- constraints
-- SET OF RULES
-- restriction on column

-- Constraints in SQL are rules or conditions applied to a table or a 
-- column that enforce data integrity and ensure the consistency 
-- and accuracy of the data in the database. 

-- NOT NULL
-- UNIQUE /UNIQUE KEY
-- DEFAULT
-- CHECK 
-- PRIMARY KEY
-- AUTO INCREMENT
-- FOREIGN KEY
-- COMPOSITY KEY


-- SYNTAX
-- CREATE TABLE table_name(
-- col_name1 DATA_TYPE(SIZE) CONSTRAINTS,
-- col_name1 DATA_TYPE(SIZE) CONSTRAINTS,
-- col_name1 DATA_TYPE(SIZE) CONSTRAINTS
-- )

CREATE DATABASE constraints_db;
USE constraints_db;

-- 1) NOT NULL
-- A NOT NULL constraint ensures that a column cannot contain 
-- NULL values.
-- It enforces that the column must have a value for each row


CREATE TABLE emp1(
emp_id INT NOT NULL,
emp_name VARCHAR(40) NOT NULL,
emp_salary FLOAT
);

INSERT INTO emp1 VALUES(11,'avi',24000.00);
SELECT * FROM emp1;

INSERT INTO emp1(emp_id) VALUES(12);

DESC emp1;

-- 2) DEFAULT
-- a default constraint is used to specify a default value 
-- for a column in a table. 
-- If an INSERT operation does not provide a value for a column 
-- with a default constraint, the default value will be used instead.

-- SYNTAX
-- CREATE TABLE table_name (
 --    column1 datatype DEFAULT default_value,
 --    column2 datatype DEFAULT default_value,
 --    -- other columns and constraints
--    );

CREATE TABLE emp2(
emp_id INT NOT NULL,
emp_name VARCHAR(40),
is_active VARCHAR(20) DEFAULT 'active'
);

INSERT INTO emp2(emp_id,emp_name) VALUES(11,'avi');
SELECT * FROM emp2;

DESC emp2;

INSERT INTO emp2 VALUES(12,'raj',null);
SELECT * FROM emp2;

-- 3)  CHECK 
-- CHECK 
-- A check constraint is used to define a condition that 
-- the values in a column must satisfy.
-- It is used to limit the range of acceptable values for a column.
-- For example, you can use a check constraint to enforce 
-- that an age column must be greater than 18 

CREATE TABLE student1(
roll_num INT,
name VARCHAR(40),
age INT CHECK (age>=18 AND age<=50)
);

INSERT INTO student1 VALUES(11,'avi',56);
INSERT INTO student1 VALUES(11,'avi',23);

SELECT * FROM student1;
DESC student1;

# 4) --UNIQUE KEY/UNIQUE

-- used to set column with unique values
-- A unique constraint ensures that the values in the column(s) 
-- specified have unique values across all the records in the table. 
-- a unique constraint allows NULL values 
-- excluding the special case of composite unique constraints.

-- Rules of unique key
-- 1) allows unique values (no duplicate values)
-- 2) can contain null values
-- 3) can use unique key for multiple columns in a single table


CREATE TABLE student2(
roll_num INT UNIQUE KEY ,
name VARCHAR(40),
mob_no BIGINT UNIQUE KEY
);

DESC student2;


INSERT INTO student2 VALUES(11,'avi',8877),(12,'raj',6699);
SELECT * FROM student2;

INSERT INTO student2 VALUES(11,'sam',5689);

INSERT INTO student2 VALUES(13,'sam',null);
SELECT * FROM student2;

-- 5) PRIMARY KEY
-- PRIMARY KEY Constraint:
-- A primary key constraint is used to uniquely identify each row  in a table.
-- Rules
-- the primary key column contain a unique value for each record, 
-- it cannot contain NULL values.
-- Each table can have only one primary key.

USE constraints_db;

CREATE TABLE student3(
roll_num INT PRIMARY KEY,
stu_name VARCHAR(40),
marks FLOAT
);

DESC student3;

INSERT INTO student3 VALUES(11,'avi',67.89),(12,'raj',84.34);

SELECT * FROM student3;

INSERT INTO student3 VALUES(11,'tom',75.34);
INSERT INTO student3 VALUES(null,'tom',75.34);




CREATE TABLE student4(
roll_num INT ,
stu_name VARCHAR(40),
marks FLOAT,
PRIMARY KEY(roll_num)
);

# 6) -- AUTO INCREMENT
-- used to generate unique number in a sequence
-- Auto-increment constraints are used to automatically generate 
-- unique, sequential values for a column when new rows are 
-- inserted into a table. 
-- This feature is especially useful for creating primary key 
-- values to uniquely identify each row in a table.
-- Rules
-- Primary key
-- numeric data type
-- sequential values
-- uniqueness

CREATE TABLE student5(
roll_num INT auto_increment,
stu_name VARCHAR(40),
marks FLOAT,
PRIMARY KEY(roll_num)
);

DESC student5;
INSERT INTO student5(stu_name,marks) VALUES('avi',34.56),('raj',78.39),('tom',88.23);
SELECT * FROM student5;

# 1) ALTER TABLE student5 AUTO_INCREMENT =101;
# 2) insert first value manually 

INSERT INTO student5 VALUES(7,'abc',64.23);
SELECT * FROM student5;
INSERT INTO student5(stu_name,marks) VALUES('xyz',66.56);
SELECT * FROM student5;

INSERT INTO student5 VALUES(null,'dd',44.23);
SELECT * FROM student5;

-- 7) COMPOSITE KEY
-- primary key as comnination of two columns

-- In MySQL, a composite key is a key that consists of two or more 
-- columns in a table. This type of key is used when a single 
-- column cannot uniquely identify a record, but a combination 
-- of columns can

CREATE TABLE student6 (
    course_id INT ,
    stu_id INT,
    stu_name VARCHAR(50),
    course_name VARCHAR(50),
    Trainer_name VARCHAR(50),
    PRIMARY KEY ( course_id, stu_id)
    );
    
    DESC student6;
    
    INSERT INTO student6 VALUES(101,1,'avi','Math','Mr.abc'),
    (102,2,'sam','Physics','Mr.xyz'),
    (102,3,'raj','Physics','Mr.xyz'),
    (103,1,'avi','Python','Mr.John');
    
    SELECT * FROM student6;
    
	INSERT INTO student6 VALUES(102,3,'reena','Python','Mr.john');
    
    -- 8) FOREIGN KEY
    -- see later
    
    -- DATA TYPES
  -- Data Types
-- 1) Numeric Data Types:
-- 2) Character Data Types(String)
-- 3) Date and Time Data Types:
-- 4) Boolean Data Type:
-- 5) Binary Data Types:
-- 6) Enumerated Data Type:

-- 1) Numeric Data Types:
-- integer >> Whole number
-- INT/INTEGER,BIGINT,TINYINT(size),SMALLINT,MEDIUMINT

-- float>> which contain decimal points
-- FLOAT,DECIMAL(M,D),DOUBLE(M,D),NUMERIC(M,D)


-- 1) INT or INTEGER:
-- The INT data type is used to store signed integers.
-- It can represent whole numbers in the range of -2147483648 to 2147483647.
-- The storage size for INT is 4 bytes.
-- Example: 123, -45, 0, 99999.


-- 2) BIGINT:
-- The BIGINT data type is used to store larger signed integers.
-- It can represent whole numbers in the 
-- range of -9223372036854775808 to 9223372036854775807.
-- The storage size for BIGINT is 8 bytes.
-- Example: 123456789, -987654321, 0.


-- 3) DECIMAL(M, D):

-- The DECIMAL data type is used to store fixed-point decimal numbers.
-- M represents the total number of digits (both to the left and 
-- right of the decimal point), 
-- and D represents the number of digits to the right of the decimal point.
-- The maximum value for M is 65, but the actual precision (number 
-- of digits to the right of the decimal point) can be up to 30.
-- Example: DECIMAL(10, 2) can store numbers 
-- like 12345.67, -12.34, 0.00.

-- 4) FLOAT:(can skip M and D)
-- The FLOAT data type is used to store approximate floating-point numbers.
-- M represents the total number of digits, and D represents 
-- the number of digits to the right of the decimal point.
-- FLOAT is approximate, meaning it may not store exact decimal values,
--  and precision may be lost for very large or very small numbers.
-- Example: FLOAT(10, 3) can store numbers like 1234.567, 0.123, 
-- 123456789.0.


-- 5) DOUBLE(M, D) or DEC:

-- The DOUBLE data type is used to store larger approximate 
-- floating-point numbers than FLOAT.
-- M represents the total number of digits, and 
-- D represents the number of digits to the right of the decimal point.
-- DOUBLE has a higher precision than FLOAT 
-- but may still suffer from approximation errors for very large 
-- or very small numbers.
-- Example: DOUBLE(20, 6) can store numbers like 123456.123456, 0.000001.

-- 6) TINYINT:

-- The TINYINT data type is used to store small signed integers.
-- It can represent whole numbers in the range of -128 to 127.
-- The storage size for TINYINT is 1 byte.
-- Example: -50, 100, 0.

-- 7) SMALLINT:

-- The SMALLINT data type is used to store medium-sized signed integers.
-- It can represent whole numbers in the range of -32768 to 32767.
-- The storage size for SMALLINT is 2 bytes.
-- Example: 5000, -15000, 0.


-- 8) MEDIUMINT:

-- The MEDIUMINT data type is used to store medium-sized signed integers.
-- It can represent whole numbers in the range of -8388608 to 8388607.
-- The storage size for MEDIUMINT is 3 bytes.
-- Example: 3000000, -750000, 0.

-- 9) NUMERIC(M, D):
-- The NUMERIC data type is similar to DECIMAL and is 
-- used to store fixed-point decimal numbers.
-- M represents the total number of digits 
-- (both to the left and right of the decimal point), 
-- and D represents the number of digits to the right of the decimal point.
-- The maximum value for M is 65, but 
-- the actual precision (number of digits to the right of the 
-- decimal point) can be up to 30.
-- Example: NUMERIC(8, 4) can store numbers 
-- like 1234.5678, -12.3456, 0.0000.


-- 2) STRING/CHARACTER
-- CHAR(N),VARCHAR(N),
-- TINYTEXT,TEXT,MEDIUMTEXT,LONGTEXT

-- 1) CHAR(N): 
-- The CHAR data type is used to store fixed-length strings.
-- N specifies the number of characters the column can hold.
-- If the string length is less than N,
--  it is padded with spaces to make it N characters long.
-- The storage size is always N bytes.
-- Example: CHAR(10) can store strings like 'hello ' 
-- (padded with spaces) or 'world '.

-- 2) VARCHAR(N):  
-- The VARCHAR data type is used to store variable-length strings.
-- N specifies the maximum number of characters the column can hold.
-- If the string length is less than or equal to N, 
-- it is stored as is without any padding.
-- The actual storage size depends on the length of the string, 
-- up to a maximum of N bytes.
-- Example: VARCHAR(20) can store strings like 'hello' or 
-- 'this is a long string'.

-- 3) TEXT:
-- The TEXT data type is used to store large variable-length strings.
-- It can hold a maximum of 65,535 characters.
-- TEXT is ideal for storing large amounts of textual data, 
-- such as paragraphs or long descriptions.
-- Example: TEXT can store strings like 
-- 'Lorem ipsum dolor sit amet...' (a long paragraph).

-- 4) TINYTEXT:

-- The TINYTEXT data type is used to store small to medium-sized strings.
-- It can hold a maximum of 255 characters.
-- The actual storage size is the length of the string plus 
-- one byte to store the length of the string.
-- TINYTEXT is ideal for storing short pieces of text, 
-- such as short descriptions or comments.
-- Example: TINYTEXT can store strings like "Hello," 
-- "This is a short text," etc.


-- 5) MEDIUMTEXT:

-- The MEDIUMTEXT data type is used to store larger text data 
-- than TINYTEXT.
-- It can hold a maximum of 16,777,215 (2^24 - 1) characters.
-- The actual storage size is the length of the string plus 
-- three bytes to store the length of the string.
-- MEDIUMTEXT is suitable for storing longer pieces of text, 
-- such as articles or blog posts.
-- Example: MEDIUMTEXT can store strings like paragraphs of text, 
-- lengthy descriptions, etc.


-- 6) LONGTEXT:
-- The LONGTEXT data type is used to store very large text data.
-- It can hold a maximum of 4,294,967,295 (2^32 - 1) characters.
-- The actual storage size is the length of the string plus 
-- four bytes to store the length of the string.
-- LONGTEXT is designed for storing extensive text content,
--  such as entire books or long documents.
-- Example: LONGTEXT can store strings like chapters of a book, 
-- complete articles, 


-- 3) Binary /BLOB
-- used to store binary data
-- BLOB binary large object
-- used to store image,audio,video

-- BLOB (Binary Large Object)
-- In MySQL, the BLOB (Binary Large Object) data type is used to 
-- store large binary data, such as images, audio, video, or 
-- any other non-textual data. 
-- BLOBs can hold a large amount of raw binary data, 
-- making them suitable for storing multimedia files or 
-- any information that cannot be represented as plain text.
-- MySQL provides several BLOB data types to accommodate 
-- different sizes of binary data. 
-- Here are the commonly used BLOB data types:

-- 1) TINYBLOB:
-- The TINYBLOB data type is used to store very small binary data.
-- It can hold a maximum of 255 bytes.
-- The actual storage size is the length of the data.
-- Example: TINYBLOB can store small images, icons, or other binary data.

-- 2) BLOB:
-- The BLOB data type is used to store larger binary data than TINYBLOB.
-- It can hold a maximum of 65,535 bytes (64 KB).
-- The actual storage size is the length of the data.
-- BLOB is suitable for storing images, audio files, or short video clips.

-- 3) MEDIUMBLOB:
-- The MEDIUMBLOB data type is used to store larger binary data than BLOB.
-- It can hold a maximum of 16,777,215 bytes (16 MB).
-- The actual storage size is the length of the data.
-- MEDIUMBLOB is ideal for storing longer videos, larger images, 
-- or more substantial binary files.


-- 4) LONGBLOB:
-- The LONGBLOB data type is used to store very large binary data.
-- It can hold a maximum of 4,294,967,295 bytes (4 GB).
-- The actual storage size is the length of the data.
-- LONGBLOB is suitable for storing very large multimedia files 
-- or any binary data of substantial size



-- In MySQL, both BINARY and VARBINARY are data types 
-- used to store binary data, such as raw bytes or 
-- non-textual data. However, they differ in terms of storage and 
-- behavior. Here's an overview of each data type:

-- 1) BINARY:
-- The BINARY data type is used to store fixed-length binary strings.
-- It can store binary data up to the specified length.
-- When you insert data into a BINARY column, MySQL 
-- pads the data with trailing zeros (0x00) 
-- to make it the specified length.
-- The storage size is fixed and equal to the specified length.
-- Example: BINARY(10) can store exactly 10 bytes of binary data.


-- 2) VARBINARY:
-- The VARBINARY data type is used to store 
-- variable-length binary strings.
-- It can store binary data up to the specified length, 
-- without padding.
-- When you insert data into a VARBINARY column, 
-- MySQL stores it as is, without adding trailing zeros.
-- The actual storage size depends on the length of the data, 
-- up to the specified length.
-- Example: VARBINARY(255) can store binary data up to 255 bytes 
-- without padding.
-- Here's a comparison between the two data types:
-- Use BINARY when you need to store fixed-length binary data, 
-- and you want each value to have the exact length specified.
-- Use VARBINARY when you want to store variable-length binary data, 
-- and the length of each value can vary, up to 
-- the specified maximum length



-- 4) Boolean data type

-- In MySQL, BIT, BOOL, and BOOLEAN are three data 
-- types that represent Boolean values, which can have 
-- two possible states: true or false. 
-- However, these data types have some differences 
-- in their behavior and storage. Let's explore each of them:

-- 1) BIT:
-- The BIT data type is used to store binary data with 
-- a maximum length of 64 bits.
-- It can be used to represent a single Boolean value 
-- or a set of Boolean flags.
-- The storage size for BIT is determined by the number of 
-- bits defined when creating the column.
-- For example, BIT(1) can store a single Boolean value (0 or 1), 
-- and BIT(8) can store a set of eight Boolean flags.

-- 2) BOOL (Alias for TINYINT(1)):
-- The BOOL data type is an alias for TINYINT(1).
-- It is a one-byte integer type that can store values of 0 (false) or 
-- 1 (true).
-- Although BOOL is an alias, you can use either 
-- BOOL or TINYINT(1) interchangeably to store Boolean values.
-- Example: BOOL or TINYINT(1) can store values like 0 (false) or 1 (true)

-- 3) BOOLEAN (Alias for TINYINT(1)):
-- The BOOLEAN data type is another alias for TINYINT(1).
-- Like BOOL, BOOLEAN is also a one-byte integer type used to 
-- store Boolean values.

-- You can use either BOOLEAN or TINYINT(1) interchangeably 
-- to store Boolean values.
-- Although BOOL and BOOLEAN are aliases for TINYINT(1), 
-- they are often used to represent Boolean values for better 

-- 5) Enumerated data type (ENUM,SET)

-- contain list of possible values

-- 1) ENUM('value1', 'value2', ...):
-- The ENUM data type is used to define a list of possible values.
-- It allows you to store one of the predefined string values.
-- The ENUM values must be enclosed in single quotes 
-- and separated by commas.
-- GENDER ENUM('Male','Female')
-- Example: ENUM('red', 'green', 'blue') 
-- can store one of the specified colors.


-- 2) SET('value1', 'value2', ...):
-- The SET data type is used to define a set of possible values.
-- It allows you to store zero or more of the predefined string values.
-- The SET values must be enclosed in single quotes and 
-- separated by commas.
-- Hobbies SET('cricket',music','reding')
-- can store multiple values >> 'cricket,reading'
-- Example: SET('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday') 
-- can store a combination of days.


-- 6) Date and time 
-- DATE,TIME,DATETIME,TIMESTAMP,YEAR 

-- In MySQL, there are several data types dedicated to 
-- storing date and time information. 
-- These data types allow you to store various temporal values,
-- such as dates, times, and datetime combinations, 
-- with different levels of precision. 
-- Here are the date and time data types in MySQL:

-- 1) DATE:
-- The DATE data type is used to store date values 
-- in the format 'YYYY-MM-DD'.
-- It represents a specific date without any time component.
-- Example: '2023-08-04' represents August 4, 2023.

-- 2) TIME:
-- The TIME data type is used to store time values in 
-- the format 'HH:MM:SS'.
-- It represents a specific time of day without any date component.
-- Example: '15:30:00' represents 3:30 PM.

-- 3) DATETIME:
-- The DATETIME data type is used to store both date and time values 
-- in the format 'YYYY-MM-DD HH:MM:SS'.
-- It represents a specific date and time of day.
-- Example: '2023-08-04 15:30:00' represents August 
-- 4, 2023, at 3:30 PM.

-- 4) TIMESTAMP:
-- The TIMESTAMP data type is used to store a timestamp representing 
-- a specific point in time.
-- It is similar to DATETIME but has a different range and behavior.
-- TIMESTAMP values are stored internally as the number of 
-- seconds since the Unix epoch (January 1, 1970, 00:00:00 UTC).
-- When inserting data into a TIMESTAMP column, MySQL automatically 
-- sets the current timestamp if the column is not explicitly provided.
-- Example: '2023-08-04 15:30:00' is stored as a timestamp 
-- value corresponding to that moment in time.


-- 5) YEAR:
-- The YEAR data type is used to store a four-digit year value 
-- in the format 'YYYY'.
-- It represents a year, and the range of allowed values 
-- is 1901 to 2155.
-- Example: '2023' represents the year 2023.


-- important note
-- string , date and time value  should be written in single quote

CREATE DATABASE data_type_db;
USE data_type_db;
CREATE TABLE sample1(
id INT PRIMARY KEY,
emp_name VARCHAR(40),
age INT,
height FLOAT,
is_active BOOLEAN,
birth_date DATE,
registration_time TIMESTAMP,
profile_image BLOB,
email VARCHAR(100),
salary DECIMAL(10,2),
emp_description TEXT
);

DESC sample1;

INSERT INTO sample1 VALUES(11,'avi',23,5.2,1,'1994-02-01','2024-04-04 02:10:06',
null,'surajkale99@gmail.com',24000.56,'software developer 2 yrs experience');

SELECT * FROM sample1;

CREATE TABLE sample2(
id INT PRIMARY KEY,
gender ENUM('Male','Female'),
hobbies SET('music','reading','cycling')
);

DESC sample2;

INSERT INTO sample2 VALUES(11,'Male','music,cycling');

SELECT * FROM sample2;

# ENUM OR SET >>> set of possible values 
# ENUM takes a single value
# SET can takes multiple values 

-- opeartion
-- COLUMN operation
-- ROW operation

-- ----------------------------------------COLUMN OPERATION ------------------------------
# a) COLUMN SELECTION
# b) ALIAS
# c) DISTINCT
# d) arithmatic operator
# e) BUILT IN FUNCTION
# f) USER DEFINED FUNCTION


-- ---------------------------------------ROW OPERATION ----------------------------------------
-- a) row selection(filter rows) WHERE
-- b) LIMIT
-- c) ORDER BY
-- d) OFFSET
-- e) JOIN
-- f) GROUP BY
-- g) HAVING


-- ----------------------------------------COLUMN OPERATION ------------------------------
# a) COLUMN SELECTION
# b) ALIAS
# c) DISTINCT
# d) arithmatic operator
# e) BUILT IN FUNCTION
# f) USER DEFINED FUNCTION



# * >> all columns

USE world;

SHOW tables;
SELECT * FROM country;
SELECT * FROM city;
SELECT * FROM countrylanguage;


# a) COLUMN SELECTION
# SYNTAX
# SELECT * FROM table;
# SELECT col1,col2 FROM table;

SELECT * FROM country;
SELECT name,population,gnp FROM country;
SELECT name,population,name FROM country;

# 2) ALIAS 
-- give short name/temporary name to column or table

-- a) AS

SELECT name AS country_name ,population AS pop FROM country;

-- b) single quote

SELECT name AS `country name`,population AS 'country pop' FROM country ;

-- c) space between column name and alias (without AS)

SELECT name country_name,population FROM country;

-- d) alias for table

SELECT * FROM country c1;
SELECT c1.name,c1.population FROM country c1;

-- 3) DISTINCT
# unique values from column
-- syntax
-- SELECT DISTINCT col1 FROM table;

-- Q. fetch distinct continent from country table

SELECT DISTINCT  continent FROM country;

-- 4) Arithmatic operator
-- + ,-,*,/

SELECT name,LifeExpectancy,LifeExpectancy+2 AS total FROM country;

SELECT name,LifeExpectancy,LifeExpectancy/2 AS total FROM country;
SELECT name,LifeExpectancy,LifeExpectancy*2 AS total FROM country;

SELECT name,LifeExpectancy,population,LifeExpectancy+population AS total 
FROM country;

-- dispaly name,population,surface area,population density 

SELECT name,population,surfacearea,population/surfacearea density 
FROM country;

-- 14.	Write a Query to display name,population,density,10% of population of each 
-- nation, increased population density(country table)

SELECT name,population,population/surfacearea AS density,population*10/100 new1,
population+population*10/100 AS new2, 
(population+population*10/100)/surfacearea new_density
FROM country;


-- rise or fall of gnp 

SELECT name,gnp,gnpold,gnp-gnpold 'rise/fall' FROM country;

-- 5) BUILT IN FUNCTION
-- 6) USER DEFINED FUNCTION
-- see later

-- ROWS OPERATION
-- ---------------------------------------ROW OPERATION ----------------------------------------
-- a) row selection(filter rows) WHERE
-- b) LIMIT
-- c) ORDER BY
-- d) OFFSET
-- e) GROUP BY
-- f) HAVING
-- g) JOIN


-- a) row selection(filter rows) 
-- WHERE

-- rows selection
-- how to filter rows
-- use condition to filter rows
-- to write condition use operators
-- comparision ,logical,IN NOT IN,
-- BETWEEN NOT BETWEEN ,ISNULL ISNOTNULL
-- LIKE NOT LIKE

-- SYNTAX
-- SELECT col1,col2,.. FROM table WHERE condition;

-- 1 ) -- comparision opeartor

-- = equal to
-- != not equal to
-- > greater than
-- < less than
-- >= greater than or equal to
-- <= less than or equal to

USE world;

-- Q.1 fetch all records from country table of asia continent

SELECT * FROM country WHERE continent='asia';

-- Q.2 fetch name,population,region from country table 
-- for Western europe

SELECT * FROM country WHERE region='Western europe';

-- Q.3 fetch name,continent,population from country table 
-- where population >=1 crore

SELECT name,continent,population FROM country 
WHERE population>=10000000;

-- 4) all records where lifeexpectancy>=80

SELECT * FROM country WHERE lifeexpectancy>=80;

-- 5) fetch all records excluding africa continent

SELECT * FROM country WHERE continent!='africa';

-- 6) display population of india
SELECT name,population FROM country WHERE name='india';

-- 7) Display countries which got independance after 1945

SELECT * FROM country WHERE IndepYear>1945;

-- 8) capital of brazil country

SELECT name,capital FROM country WHERE name='brazil';

SELECT * FROM city WHERE id=211;

SELECT name,capital FROM country WHERE name='india';

SELECT * FROM city WHERE id=1109;

-- 9) fetch offical langauges from countrylanguage table

SELECT * FROM countrylanguage;

SELECT Language FROM countrylanguage WHERE isofficial='T';

-- 10) Languages for india

SELECT code FROM country WHERE name='india';
SELECT * FROM countrylanguage WHERE countrycode='IND';

-- 2)   LOGICAL OPERATOR
-- AND OR NOT
-- to write multiple condition at a time

-- AND ..all conditions should be true to get true
-- OR .. any one conditions should be true to get true
-- NOT.. inverts condition

-- syntax
-- SELECT * FROM table 
-- WHERE condition1 AND condition2 AND condition3;

-- SELECT * FROM table 
-- WHERE condition1 OR condition2 OR condition3;

-- Note -: for each condition column name should be specified

-- Q.1  display all records where continent is asia 
-- and lifeexpectancy>=70

SELECT * FROM country
WHERE continent='asia' AND LifeExpectancy>=70;

EXPLAIN SELECT * FROM country
WHERE continent='asia' AND LifeExpectancy>=70;

-- Q.2 -- display records of asian countries where population >1 cr,
-- and   
-- lifeexpectancy >=70

SELECT * FROM country 
WHERE continent='asia' AND population>10000000 AND lifeexpectancy >=70;

-- Q.3 -- fetch data for countries where lifeexpectancy is 
-- in between 70 to 80

SELECT * FROM country WHERE lifeexpectancy>=70 AND lifeexpectancy<=80;


-- Q.4   display records of countries of india ,brazil,bangladesh

SELECT * FROM country 
WHERE name='india' OR name='brazil' OR name='bangladesh';

-- display asia and africa continent countries
SELECT * FROM country WHERE continent='asia' OR continent='africa' ;

-- fetch asian countries but  lifexp>70 or population>1 cr 

SELECT * FROM country WHERE 
continent='asia' AND (LifeExpectancy>=70 OR Population>10000000);

-- NOT
SELECT * FROM country WHERE NOT continent='asia';

-- 3) IN ,NOT IN 
-- alternative to OR logical operator
-- # IN ..allows to specify multiple values in where clause

-- SYNTAX
-- SELECT * FROM table_name WHERE col_name IN (value1,value2,...);

-- Q.1 display records of countries of india ,brazil,bangladesh
USE world;

SELECT * FROM country 
WHERE name='india' OR name='brazil' OR name='bangladesh';

SELECT * FROM country WHERE name IN ('india','brazil','bangladesh');

SELECT * FROM country WHERE name NOT IN ('india','brazil','bangladesh');

SELECT * FROM country WHERE NOT name  IN ('india','brazil','bangladesh');

-- SELECT * FROM country WHERE reg_date  IN ('2024-02-15','2024-02-16');

-- 4) BETWEEN ,NOT BETWEEN
-- alternative to AND logical operator (range)

-- Q.3 -- fetch data for countries where lifeexpectancy is 
-- in between 70 to 80

SELECT * FROM country WHERE lifeexpectancy>=70 AND lifeexpectancy<=80;

SELECT * FROM country WHERE lifeexpectancy BETWEEN 70 AND 80;

SELECT * FROM country WHERE lifeexpectancy NOT BETWEEN 70 AND 80;

-- IN ,BETTWEN >> text,numeric,date
-- BETTWEN (numeric and date >> both value include)

-- SELECT * FROM country 
-- WHERE reg_date BETWEEN '2024-01-01' AND '2024-01-31';

-- SELECT * FROM country 
-- WHERE reg_date >= '2024-01-01' AND reg_date<='2024-01-31';

-- SELECT * FROM country 
-- WHERE year(reg_date )=2023;

-- 5) ISNULL ,ISNOT NULL
-- ISNULL >> checks null values
-- ISNOT NULL  >> checks actual true values


SELECT name, IndepYear FROM country WHERE IndepYear IS NULL;

SELECT name, IndepYear FROM country WHERE IndepYear IS NOT NULL;


-- find middle east countries where population in between 2 cr to 7 cr 

SELECT * FROM country
 WHERE region='middle east' AND (population BETWEEN 20000000 AND 70000000);

SELECT * FROM country
 WHERE region='middle east' AND population >=20000000 AND population <=70000000;


-- 6) LIKE ,NOT LIKE

-- used to find pattern from string/text
-- SYNTAX
-- SELECT * FROM table_name WHERE col_name LIKE 'pattern';

-- wild character/meta character/special characters
-- % .....zero or more character  
-- _ ......single character

-- Q1. display countries which are starting 'T'

SELECT * FROM country WHERE name LIKE 'T%';

-- Q.2  display countries which are starting 'I'

SELECT * FROM country WHERE name LIKE 'I%';

-- Q.3 display countries which ends  'I';

SELECT * FROM country WHERE name LIKE '%I';

-- Q.4 display countries which ends  'stan';
SELECT * FROM country WHERE name LIKE '%stan';

-- Q.5 starting I and ending A 
SELECT * FROM country WHERE name LIKE 'I%A';

SELECT * FROM country WHERE name LIKE 'I%' AND  name LIKE '%A' ;

-- Q.6 -- display countries which starts with 'I' and ends with 'A'
-- fourth character I;

SELECT * FROM country WHERE name LIKE 'I__I%A';

-- Q.7 display records of continent where first character is A 
-- and third 
-- character is R

SELECT * FROM country WHERE continent LIKE 'A_R%';

-- b) LIMIT
-- used to limit rows
-- top rows

SELECT * FROM country LIMIT 10;

-- c) ORDER BY 
-- used to sort data in ascending and desc order

-- SELECT * FROM table_name ORDER BY column_name ASC/DESC;

-- can use order by on TEXT,NUMERIC,DATE column
-- numerical column..value wise 
-- text.. column a-z z-a
-- date.. day wise

SELECT * FROM country ORDER BY population ASC;
SELECT * FROM country ORDER BY population DESC;

SELECT name,LifeExpectancy FROM country 
WHERE LifeExpectancy IS NOT NULL AND continent='asia'
ORDER BY LifeExpectancy
LIMIT 2;

-- 
SELECT * FROM country 
ORDER BY population DESC
LIMIT 2;

-- OFFSET 

-- used with the LIMIT clause to specify which row to start retrieving data 

-- SELECT column1, column2, 
-- FROM table_name
-- ORDER BY column
-- LIMIT number_of_rows OFFSET offset_value;


USE world;

SELECT * FROM country;

SELECT *
FROM country
LIMIT 1 OFFSET 1;

-- 2nd highest populated city  in world

SELECT * FROM
city
ORDER BY population DESC
LIMIT 1 OFFSET 1;

-- order of writing >> SELECT ,FROM ,WHERE ,ORDER BY ,LIMIT/OFFSET
-- order of execution >> FROM ,WHERE ,SELECT,ORDER BY ,LIMIT/OFFSET


SELECT 
    name, population
FROM
    country
WHERE
    continent = 'asia'
ORDER BY population DESC
LIMIT 3;

-- -- DISPLAY TOP 10 RICH NATIONS
SELECT * 
FROM country
ORDER BY gnp DESC
LIMIT 10;

-- -- DISPLAY  10 poor NATIONS

SELECT name,gnp
FROM country
WHERE gnp>0
ORDER BY gnp ASC
LIMIT 10;

-- 3  least LifeExpectancy countries from asia 

SELECT name,LifeExpectancy
FROM country
WHERE continent='asia'
ORDER BY LifeExpectancy 
LIMIT 3;

-- GROUP BY
-- HAVING
-- JOIN

-- see later


-- BUILT IN FUNCTION
-- COLUMN OPERATION

-- FUNCTION
-- which is used to perform specific task

-- types of function
-- 1) BUILT IN FUNCTION...already there
-- 2) USER DEFINED FUNCTION.. you can create own function

-- use functions on columns

-- BUILT IN FUNCTION

-- 1) Built in functions


--                 String Functions: 
-- Functions to manipulate and work with string data.
-- CONCAT(), CONCAT_WS()
-- UPPER(), LOWER()
-- SUBSTRING(), LEFT(), RIGHT()
-- LENGTH(), CHAR_LENGTH()
-- TRIM(), LTRIM(), RTRIM()
-- INSTR(), LOCATE(), REPLACE()
-- ...

--                 Date and Time Functions: 
-- Functions to work with date and time data.

-- CURTIME() ,NOW(), CURRENT_DATE(), CURRENT_TIME(), CURRENT_TIMESTAMP()
-- DATE(), TIME(), TIMESTAMP()
-- DATE_FORMAT(), TIME_FORMAT()
-- DATE_ADD(), DATE_SUB()
-- EXTRACT(), YEAR(), MONTH(), DAY(), HOUR(), MINUTE(), SECOND()
-- ...

--                     Aggregate Functions
-- Functions to perform calculations on numeric data.

-- SUM(), AVG(), MIN(), MAX(), COUNT()

--                    Mathematical function
-- ROUND(), CEIL(), FLOOR(), TRUNCATE()
-- ABS(), SIGN()
-- MOD(), POWER(), SQRT(), RAND()



--                Conditional Functions: 
 -- Functions to perform conditional operations.
-- IF(), CASE WHEN, ELSE, END
-- NULLIF(), COALESCE()
-- ...


--                Trignometric and log Functions: 
-- Functions for mathematical calculations.
-- SIN(), COS(), TAN()
-- LOG(), EXP()
-- ...


--                Control Flow Functions: 
--              Functions for control flow and flow control operations.
-- IFNULL(), NULLIF()
-- GREATEST(), LEAST()
-- ...

--                 Conversion Functions: 
--             Functions to convert data types.
-- CAST(), CONVERT()
-- ...


-- -----------------------------------------------------------------------------------
-- MIN(column_name)
-- MAX(column_name)
-- SUM(column_name)
-- AVG(column_name)
-- SQRT(column_name)
-- ROUND(column_name,decimal_digit)
-- COUNT()


-- UPPPER(column_name)/UCASE(column_name)
-- LOWER(column_name)/LCASE(column_name)
-- MID(COLUMN_NAME,START,END)
-- SUBSTRING(COLUMN_NAME,START,END)
-- LENGTH(COLUMN_NAME)

-- CONCAT(COL1,COL2,..)/CONACT(VALUE1,VALUE2)
-- REVERSE(COLUMN_NAME)
-- NOW()  CURRENT DATE AND TIME
-- FORMAT(COLUMN_NA


# function can be used after select query or in any calculation..(pi())


-- 1) Aggregate Function
--  Functions to perform calculations on numeric data
--  returns a single value
-- SUM(), AVG(), MIN(), MAX(), COUNT()

-- NOTES >> with Aggregate Functions can't fetch other columns(count mismatch)


-- syntax 
-- SELECT sum(profit) FROM table_name;

-- 1) SUM()
-- to get sum of column
-- numeric
-- returns single values

USE world;

-- Q.1  Total population of world

SELECT sum(population) AS total  FROM country;

SELECT sum(population) AS total  FROM country;

-- Q.2 Total population of asia continent

SELECT sum(population) AS total  FROM country WHERE continent='asia';

-- 3) Total surface area of world

SELECT sum(surfacearea) AS total FROm country;

-- 4) worlds  population density

SELECT sum(population)/sum(surfacearea) density FROm country;


SELECT sum(population) pop,sum(SurfaceArea) surf FROM country;

-- 2) AVG()  
-- returns a single value

-- Q.5) AVG LifeExpectancy of world

SELECT avg(LifeExpectancy) total FROM country;

-- 3) MIN()
-- returns minimum value
-- numeric,date,text


-- 6) -- Display minimum LifeExpectancy country

SELECT min(LifeExpectancy) FROM country;
SELECT name,LifeExpectancy FROM country WHERE LifeExpectancy=37.2;


SELECT name,LifeExpectancy
FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy ASC
LIMIT 1;

-- 4) MAX
-- returns maximum values
-- -- numeric,date,text

-- max population country

SELECT max(population) FROM country;

SELECT name,population FROM country WHERE population=1277558000;

-- 5) COUNT
-- returns single value
-- no of values
-- numeric ,text,date

-- SYNTAX
-- SELECT count(col_name) FROM table_name
-- SELECT count(*) FROM table_name
-- SELECT count(DISTINCT col_name) FROM table_name
-- SELECT count(col_name) FROM table_name WHERE condition


-- Q.1 DISPLAY TOTAL NUMBER OF COUNTRIES IN THE WORLD

SELECT count(name) FROM country;

SELECT count(*) FROM country;


-- Q.2 DISPLAY TOTAL NUMBER OF continent

SELECT count(DISTINCT continent) FROM country;


-- 3)  no of countries in asia
SELECT count(name) FROM country WHERE continent='asia';

-- no of city in india

USE world;

SELECT code FROM country WHERE name='india';

SELECT count(name) FROM city WHERE countrycode='IND';

-- no of cities in asia continent

SELECT code FROM country WHERE continent='asia';

SELECT count(*) FROM city WHERE countrycode IN ('AFG',
'ARE',
'ARM',
'AZE',
'BGD',
'BHR',
'BRN',
'BTN',
'CHN',
'CYP',
'GEO',
'HKG',
'IDN',
'IND',
'IRN',
'IRQ',
'ISR',
'JOR',
'JPN',
'KAZ',
'KGZ',
'KHM',
'KOR',
'KWT',
'LAO',
'LBN',
'LKA',
'MAC',
'MDV',
'MMR',
'MNG',
'MYS',
'NPL',
'OMN',
'PAK',
'PHL',
'PRK',
'PSE',
'QAT',
'SAU',
'SGP',
'SYR',
'THA',
'TJK',
'TKM',
'TMP',
'TUR',
'TWN',
'UZB',
'VNM',
'YEM'
);

-- -- #  2) Mathematical function/Trig/LOG

# pow(),power()

SELECT pow(2,3);

SELECT pow(id,2) FROM city;

# -- SQRT

SELECT sqrt(25);

SELECT LifeExpectancy,sqrt(LifeExpectancy) AS sqrt_life FROM country;


-- -- EXP()..e >> 2.71

SELECT exp(2);
SELECT exp(1);

--  LOGARTHMATIC FUNCTION
-- log(),log2(),log10()

SELECT log(1);
SELECT log(id) FROM city;

SELECT log2(2);
SELECT log10(10);


--  DECIMAL FUNCTION..
-- ROUND(),CEIL(),FLOOR()

SELECT round(4.7);
SELECT LifeExpectancy,round(LifeExpectancy) total FROM country;

SELECT round(4.5678,2);


-- CEIL() ...to next integer value
-- FLOOR()... previous integer values

SELECT ceil(4.2);
SELECT ceil(4.8);

SELECT floor(4.9);


-- ABS()

SELECT abs(-5);

-- pi()

SELECT pi();

SELECT name,pi() FROM country;

-- sin(),cos()

SELECT sin(0);
SELECT cos(0);

select radians(30);
select degrees(0.52);


--              STRING FUNCTION

-- upper(),ucase(),lower(),lcase()

SELECT name,upper(name) total ,lcase(name) AS lcase FROM country;

-- slicing>>> mid,left,right

SELECT name,left(name,2),right(name,2),mid(name,3,5) FROM country;

SELECT population,right(population,2) FROM country;

-- REPLACE ..case sensitive

SELECT name,replace(name,'A','T') FROM country;

SELECT population,replace(population,1,9) FROM country;

-- length()

SELECT name,length(name) FROM country;
SELECT population,length(population) FROM country;

-- ASCII..American standard code for information interchange

SELECT ascii('A');
SELECT ascii('a');

SELECT ascii(' ');
SELECT ascii('[');

-- TRIM
-- used to remove extra space 

SELECT trim('   avi   ');

USE world;

SELECT name,trim(name) FROM country;

-- CONCAT..COMBINE MULTIPLE VALUES
-- CONCAT_WS

SELECT concat('avi',' ','raj');

SELECT name,population,concat(name,' ',population) FROM country;

SELECT name,population,concat_ws('-',name,population) FROM country;


-- INSTR
-- get position 

SELECT instr('automatic','t');

-- REVERSE()

SELECT reverse('suraj');

-- str_date
-- to covert string format date into date format

SELECT str_to_date('2024-04-01','%Y-%m-%d');
SELECT str_to_date('10:20 AM','%h:%i %p');

# % i mimutes
# %s seconds


-- control flow function

-- ifnull
-- 

SELECT name ,ifnull(LifeExpectancy,0) FROM country
ORDER BY LifeExpectancy;

-- coalesce

SELECT name,coalesce( LifeExpectancy,0)  FROM country
ORDER BY  LifeExpectancy;

-- if
SELECT LifeExpectancy,if(LifeExpectancy=78.4,"Good","bad") FROM country;

-- GREATEST >> largest
-- LEAST >> smallest


SELECT gnp,gnpold,LifeExpectancy,
GREATEST(ifnull(gnp,0),ifnull(gnpold,0),ifnull(LifeExpectancy,0))
FROM country;

SELECT gnp,gnpold,LifeExpectancy,LEAST(gnp,gnpold,LifeExpectancy)
FROM country;

-- name
-- >=10

SELECT name,if(length(name)>=10,name,0) FROM country;

SELECT name FROM country
WHERE length(name)>=10;

-- case when

SELECT name,LifeExpectancy,
CASE 
WHEN   LifeExpectancy>70   THEN 'A'
WHEN LifeExpectancy>50   THEN 'B'
WHEN LifeExpectancy>40   THEN 'C'
WHEN LifeExpectancy IS NULL THEN 'D'
ELSE 'E'
END  AS  total FROM country;


-- DATE and TIME function

-- DATE TIME FUNCTION
-- DATE-- 'YYYY-MM-DD'
-- TIME 'HH:MM:SS'
-- DATE TIME 'YYYY-MM-DD  HH:MM:SS'


CREATE DATABASE built_in;
USE built_in;

CREATE TABLE sales(
order_id BIGINT PRIMARY KEY,
product VARCHAR(40),
order_date DATE,
order_time TIME,
amount DECIMAL(10,2)
);

INSERT INTO sales (order_id, product, order_date, order_time, amount) VALUES
(1, 'Product A', '2010-01-01', '10:00:00', 100.00),
(2, 'Product B', '2011-02-15', '11:00:00', 200.00),
(3, 'Product A', '2012-03-10', '12:00:00', 150.00),
(4, 'Product C', '2013-04-20', '13:00:00', 250.00),
(5, 'Product B', '2014-05-25', '14:00:00', 300.00),
(6, 'Product A', '2015-06-30', '15:00:00', 350.00),
(7, 'Product D', '2016-07-05', '16:00:00', 400.00),
(8, 'Product E', '2017-08-10', '17:00:00', 450.00),
(9, 'Product F', '2018-09-15', '18:00:00', 500.00),
(10, 'Product G', '2019-10-20', '19:00:00', 550.00),
(11, 'Product H', '2020-11-25', '20:00:00', 600.00),
(12, 'Product I', '2021-12-30', '21:00:00', 650.00),
(13, 'Product J', '2022-01-05', '22:00:00', 700.00),
(14, 'Product K', '2023-02-10', '23:00:00', 750.00),
(15, 'Product L', '2024-03-15', '08:00:00', 800.00),
(16, 'Product M', '2025-04-20', '09:00:00', 850.00),
(17, 'Product N', '2026-05-25', '10:00:00', 900.00),
(18, 'Product O', '2027-06-30', '11:00:00', 950.00),
(19, 'Product P', '2028-07-05', '12:00:00', 1000.00),
(20, 'Product Q', '2029-08-10', '13:00:00', 1050.00);


SELECT * FROM sales;

DESC sales;


SELECT curdate();
SELECT *,curdate() FROM sales;

SELECT current_time();
SELECT current_timestamp();
SELECT curtime();
SELECT current_user();
SELECT now();

INSERT INTO sales VALUES(21,'Product C',current_date(),current_time(),560);

SELECT * FROM sales;

-- year,week,day,month,monthname
-- used to extract 

SELECT order_date,year(order_date),month(order_date) FROM sales;

USE built_in;

SELECT order_date,monthname(order_date) name,day(order_date) day,
dayname(order_date),quarter(order_date)
 FROM 
sales;

SELECT order_date,week(order_date),weekday(order_date) ,
weekofyear(order_date) FROM sales;

-- DATE_ADD(DATE,INTERVAL CONSTANT  FORMAT)
-- DATE_SUB(DATE,INTERVAL CONSTANT  FORMAT)

-- year,day,month

SELECT order_date,date_add(order_date,INTERVAL 3 year) FROM sales;

SELECT order_date,date_sub(order_date,INTERVAL 3 year) FROM sales;

-- datediff

SELECT order_date,datediff(curdate(),order_date) FROM sales;

-- EXTRACT

SELECT order_date,EXTRACT(YEAR FROM order_date)  FROM sales;
SELECT order_date,EXTRACT(month FROM order_date)  FROM sales;
SELECT order_date,EXTRACT(quarter FROM order_date)  FROM sales;
SELECT order_date,EXTRACT(day FROM order_date)  FROM sales;

-- LASTDAY()...not avialble in mysql
-- Finding the Last Day of the Month

SELECT order_date,dayofweek(order_date) FROM sales;

SELECT max(order_date) FROM sales WHERE monthname(order_date)='april';

SELECT order_date, LAST_DAY(order_date) FROM sales;

-- The DATE_FORMAT function can be used to manipulate date formats and 
-- extract parts of the date. To find the first day of the month, you can use 
-- DATE_FORMAT to set the day part to '01'.

SELECT 
    order_date,product
FROM 
    sales
WHERE 
    order_date = DATE_FORMAT(order_date, '%Y-%m-01');
    
    -- 2024 data filter
    
    SELECT * FROM sales
    WHERE year(order_date)='2024';
    
     SELECT * FROM sales
    WHERE year(order_date)=2024 and monthname(order_date)='march';
    
    
    
    -- 4-05-2024 to 6-9-2025
    
    SELECT * FROM sales
    WHERE order_date BETWEEN '2024-05-04' AND '2025-09-06';
    
    


-- COLUMN OPERATION >> user defined function
-- ROWS OPERATION  >> GROUP BY HAVING JOIN

-- GROUP BY 
-- used to create report/pivot table
-- used to summerize data

# GROUP BY... is used to summerize data
# HAVING... used to filter group by result

-- syntax
-- SELECT colname,agg_func(colname)
-- FROM table_name
-- GROUP BY colname


CREATE DATABASE groupby_db;
USE groupby_db;

CREATE TABLE sales(
order_id BIGINT PRIMARY KEY,
company_name VARCHAR(80),
product VARCHAR(40),
order_date DATE,
Quantity INT,
sales_amount DECIMAL(10,2)
);

SELECt * from sales;

INSERT INTO sales (order_id, company_name, product, order_date, quantity, sales_amount) 
VALUES
(1, 'Google', 'A', '2024-06-01', 10, 100.00),
(2, 'Google', 'B', '2024-06-02', 5, 50.00),
(3, 'Google', 'C', '2024-06-03', 20, 200.00),
(4, 'Google', 'D', '2024-06-04', 15, 150.00),
(5, 'Tesla', 'A', '2024-06-05', 8, 80.00),
(6, 'Tesla', 'B', '2024-06-06', 12, 120.00),
(7, 'Tesla', 'C', '2024-06-07', 18, 180.00),
(8, 'Tesla', 'D', '2024-06-08', 10, 100.00),
(9, 'Amazon', 'A', '2024-06-09', 22, 220.00),
(10, 'Amazon', 'B', '2024-06-10', 16, 160.00),
(11, 'Amazon', 'C', '2024-06-11', 14, 140.00),
(12, 'Amazon', 'D', '2024-06-12', 25, 250.00),
(13, 'Flipkart', 'A', '2024-06-13', 30, 300.00),
(14, 'Flipkart', 'B', '2024-06-14', 25, 250.00),
(15, 'Flipkart', 'C', '2024-06-15', 20, 200.00),
(16, 'Flipkart', 'D', '2024-06-16', 18, 180.00),
(17, 'Google', 'A', '2024-06-17', 12, 120.00),
(18, 'Google', 'B', '2024-06-18', 7, 70.00),
(19, 'Google', 'C', '2024-06-19', 25, 250.00),
(20, 'Google', 'D', '2024-06-20', 30, 300.00),
(21, 'Tesla', 'A', '2024-06-21', 10, 100.00),
(22, 'Tesla', 'B', '2024-06-22', 20, 200.00),
(23, 'Tesla', 'C', '2024-06-23', 14, 140.00),
(24, 'Tesla', 'D', '2024-06-24', 15, 150.00),
(25, 'Amazon', 'A', '2024-06-25', 18, 180.00),
(26, 'Amazon', 'B', '2024-06-26', 22, 220.00),
(27, 'Amazon', 'C', '2024-06-27', 10, 100.00),
(28, 'Amazon', 'D', '2024-06-28', 13, 130.00),
(29, 'Flipkart', 'A', '2024-06-29', 19, 190.00),
(30, 'Flipkart', 'B', '2024-06-30', 23, 230.00);

SELECt * from sales;

-- company wise total sales

SELECT company_name,sum(sales_amount) total
FROM sales
WHERE year(order_date)=2024
GROUP BY company_name
HAVING total >=1200
ORDER BY total DESC;

 --  produc t wise total sales
-- top2 product

SELECT product,sum(sales_amount) total
FROM sales 
GROUP BY product 
ORDER BY total DESC
limit 2;

SELECT product,sum(sales_amount) total
FROM sales 
WHERE order_date BEtWEEN '2024-06-01' AND '2024-06-15'
GROUP BY product 
ORDER BY total DESC;

-- order of writing
-- SELECT, FROM ,WHERE ,GROUP BY ,HAVING ,ORDER BY, LIMIT/OFFSET

-- order of execution
-- FROM,WHERE,GROUP BY ,HAVING,SELECT,ORDER BY, LIMIT/OFFSET

USE world;
-- continent wise population

SELECT continent,sum(population) total
FROM country 
GROUP BY continent
HAVING total>0
ORDER BY total DESC;

-- continent wise avg lifeexp

SELECT continent,avg(LifeExpectancy) total
FROM country 
GROUP BY continent
HAVING total>0
ORDER BY total DESC;

-- numbering system
-- in group by and order by we can use number(index) 

SELECT continent,avg(LifeExpectancy) total
FROM country 
GROUP BY 1
HAVING total>0
ORDER BY 2 DESC;

-- continent wise >>no of countries
SELECT continent,count(*) total
FROM country 
GROUP BY continent
ORDER BY 2 DESC;

-- countries no of cities

SELECT countrycode,count(*) total
FROM city
GROUP BY countrycode
ORDER BY total DESC;

-- DISPLAY CONTINENT WISE PERCENTAGE POPULATION
SELECT sum(population) FROM country;

SELECT continent,round(sum(population)/6078749450*100,2)   total
FROM country 
GROUP BY continent
ORDER BY total DESC;

USE groupby_db;

CREATE TABLE orders (
    order_id BIGINT PRIMARY KEY,
    company_name VARCHAR(80),
    product VARCHAR(40),
    order_date DATE,
    quantity INT,
    sales_amount DECIMAL(10,2)
);

INSERT INTO orders (order_id, company_name, product, order_date, quantity, sales_amount) VALUES
(1, 'Google', 'A', '2020-01-15', 10, 100.00),
(2, 'Google', 'B', '2020-02-10', 15, 150.00),
(3, 'Google', 'C', '2020-03-05', 20, 200.00),
(4, 'Google', 'D', '2020-04-01', 25, 250.00),
(5, 'Tesla', 'A', '2020-05-15', 30, 300.00),
(6, 'Tesla', 'B', '2020-06-10', 35, 350.00),
(7, 'Tesla', 'C', '2020-07-05', 40, 400.00),
(8, 'Tesla', 'D', '2020-08-01', 45, 450.00),
(9, 'Amazon', 'A', '2020-09-15', 50, 500.00),
(10, 'Amazon', 'B', '2020-10-10', 55, 550.00),
(11, 'Amazon', 'C', '2020-11-05', 60, 600.00),
(12, 'Amazon', 'D', '2020-12-01', 65, 650.00),
(13, 'Flipkart', 'A', '2021-01-15', 70, 700.00),
(14, 'Flipkart', 'B', '2021-02-10', 75, 750.00),
(15, 'Flipkart', 'C', '2021-03-05', 80, 800.00),
(16, 'Flipkart', 'D', '2021-04-01', 85, 850.00),
(17, 'Google', 'A', '2021-05-15', 10, 100.00),
(18, 'Google', 'B', '2021-06-10', 15, 150.00),
(19, 'Google', 'C', '2021-07-05', 20, 200.00),
(20, 'Google', 'D', '2021-08-01', 25, 250.00),
(21, 'Tesla', 'A', '2021-09-15', 30, 300.00),
(22, 'Tesla', 'B', '2021-10-10', 35, 350.00),
(23, 'Tesla', 'C', '2021-11-05', 40, 400.00),
(24, 'Tesla', 'D', '2021-12-01', 45, 450.00),
(25, 'Amazon', 'A', '2022-01-15', 50, 500.00),
(26, 'Amazon', 'B', '2022-02-10', 55, 550.00),
(27, 'Amazon', 'C', '2022-03-05', 60, 600.00),
(28, 'Amazon', 'D', '2022-04-01', 65, 650.00),
(29, 'Flipkart', 'A', '2022-05-15', 70, 700.00),
(30, 'Flipkart', 'B', '2022-06-10', 75, 750.00),
(31, 'Flipkart', 'C', '2022-07-05', 80, 800.00),
(32, 'Flipkart', 'D', '2022-08-01', 85, 850.00),
(33, 'Google', 'A', '2022-09-15', 10, 100.00),
(34, 'Google', 'B', '2022-10-10', 15, 150.00),
(35, 'Google', 'C', '2022-11-05', 20, 200.00),
(36, 'Google', 'D', '2022-12-01', 25, 250.00),
(37, 'Tesla', 'A', '2023-01-15', 30, 300.00),
(38, 'Tesla', 'B', '2023-02-10', 35, 350.00),
(39, 'Tesla', 'C', '2023-03-05', 40, 400.00),
(40, 'Tesla', 'D', '2023-04-01', 45, 450.00),
(41, 'Amazon', 'A', '2023-05-15', 50, 500.00),
(42, 'Amazon', 'B', '2023-06-10', 55, 550.00),
(43, 'Amazon', 'C', '2023-07-05', 60, 600.00),
(44, 'Amazon', 'D', '2023-08-01', 65, 650.00),
(45, 'Flipkart', 'A', '2023-09-15', 70, 700.00),
(46, 'Flipkart', 'B', '2023-10-10', 75, 750.00),
(47, 'Flipkart', 'C', '2023-11-05', 80, 800.00),
(48, 'Flipkart', 'D', '2023-12-01', 85, 850.00);


SELECT * FROM orders;

-- Calculate year-wise total sales

SELECT year(order_date),sum(sales_amount) total
FROM orders
GROUP BY year(order_date);

-- Calculate year-wise total sales for google

SELECT year(order_date),sum(sales_amount) total
FROM orders
WHERE company_name='Google'
GROUP BY year(order_date);

-- Calculate year-wise total sales for A 

SELECT year(order_date),sum(sales_amount) total
FROM orders
WHERE product='A'
GROUP BY year(order_date);

-- monthwise total sales

SELECT  monthname(order_date),sum(sales_amount) total
FROM orders
GROUP BY monthname(order_date);

-- monthwise total sales  for 2023
SELECT  monthname(order_date),sum(sales_amount) total
FROM orders
WHERE year(order_date)=2023
GROUP BY monthname(order_date);

-- quarterwise total sales for 2023

SELECT  concat('Q',quarter(order_date)) Q,sum(sales_amount) total
FROM orders
WHERE year(order_date)=2023
GROUP BY concat('Q',quarter(order_date));


SELECT  concat('Q',quarter(order_date)) Q,sum(sales_amount) total
FROM orders
WHERE year(order_date)=2023
GROUP BY Q;

-- multiple column in group by 

-- companywise >> productwise >> total sales
SELECT company_name,product,sum(sales_amount) total 
FROM orders
GROUP BY company_name,product;

-- companywise >> yearwise >> total sales

SELECT company_name,year(order_date) year,sum(sales_amount) total 
FROM orders
GROUP BY company_name,year(order_date)
ORDER BY company_name;

-- 
SELECT company_name,year(order_date) year,sum(sales_amount) total 
FROM orders
GROUP BY company_name,year(order_date)
ORDER BY total DESC;


-- order by using multiple columns

SELECT company_name,year(order_date) year,sum(sales_amount) total 
FROM orders
GROUP BY company_name,year(order_date)
ORDER BY year ASC,total DESC;

SELECT company_name,year(order_date) year,sum(sales_amount) total 
FROM orders
GROUP BY company_name,year(order_date)
ORDER BY company_name ASC,total DESC;


SELECT company_name,sum(sales_amount) total_sales ,avg(sales_amount) avg_total
FROM orders
GROUP BY company_name
ORDER BY total_sales DESC,avg_total ASC;

#types  of command
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
-- or user-defined function, which is a pre-written set of SQL statements


-- -----------------------------------------1. DQL--------------------------------------------------------
-- DQL(data query language)
-- Meaning: DQL involves SQL commands that are used to query and 
-- retrieve data from databases. These commands allow you to 
-- specify conditions, filter data, sort results, and 
-- perform calculations on the data being retrieved.
-- Examples: SELECT

-- -----------------------------------------2.DML --------------------------------------------------------
-- Meaning: DML refers to a set of SQL commands that are used 
-- to manipulate the data stored in a database. 
-- These commands allow you to insert, update, and delete records 
-- in tables, as well as retrieve data from tables.
-- Examples: INSERT, UPDATE, DELETE

-- 1) INSERT


-- 2) UPDATE 

-- how to update records

CREATE DATABASE dml_db;
USE dml_db;

CREATE TABLE student( 
roll_num INT PRIMARY KEY,
stu_name VARCHAR(40) NOT NULL,
dept VARCHAR(40),
marks FLOAT
);

INSERT INTO student (roll_num, stu_name, dept, marks)
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

# SYNTAX
-- UPDATE table_name
-- SET column1 = value1, column2 = value2, ...
-- WHERE condition;

-- Q.1 UPDATE marks of roll no 1002 to 99

UPDATE student SET marks=99 WHERE roll_num=1002;

SELECT * FROM student;

-- Q.2 update marks to 77 and dept to ME of 1004 roll num

 UPDATE student SET marks=77,dept='ME' WHERE roll_num=1004;
 SELECT * FROM student;
 
-- Q.3 update dept of Aarti Mehta to EC

UPDATE student SET dept='EC' WHERE stu_name= 'Aarti Mehta';

-- for update & delete use primary key otherwise will get error
-- if u want to do then disable safe update mode

SET SQL_SAFE_UPDATES = 0;
UPDATE student SET dept='EC' WHERE stu_name= 'Aarti Mehta';
 SELECT * FROM student;
 
 SET SQL_SAFE_UPDATES = 1;
 
 -- update whole column
 
 SET SQL_SAFE_UPDATES = 0;
 -- UPDATE student SET marks=00;
 
 SELECT * FROM student;
SET SQL_SAFE_UPDATES = 1;

-- 3) DELETE
-- SYNTAX
-- DELETE FROM table_name
-- WHERE condition;

 SELECT * FROM student;
 
 -- DELETE RECORD of 1005 roll num
 
 DELETE FROM student WHERE roll_num=1005;
 
 SELECT * FROM student;
 
 UPDATE student SET dept=null WHERE roll_num=1001;
  SELECT * FROM student;
  
  DELETE FROM student WHERE roll_num=1006 OR roll_num=1007;
  
DELETE FROM student WHERE  roll_num IN (1008,1009,1010);
  
SELECT * FROM student;

-- DELETE without WHERE

 SET SQL_SAFE_UPDATES = 0;
 
DELETE FROM student;

SELECT * FROM student;

INSERT INTO student (roll_num, stu_name, dept, marks)
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
  
  -- update marks >> 5 grace >> ME
   SET SQL_SAFE_UPDATES = 0;
   
  UPDATE student SET marks=marks+5 WHERE dept='ME';
   SELECT * FROM student;
   
   -- MR.
   
   UPDATE student SET stu_name=concat('Mr.',' ',stu_name) WHERE
   roll_num IS NOT NULL;
   
    SELECT * FROM student;
    
    -- marks update  marks*roll_num
    
 --  UPDATE student SET marks=marsk*roll_num WHERE
  --  roll_num IS NOT NULL;
  
  
  -- UPDATE CASE WHEN
  
-- marks 80 >> A >> 1
-- marks 75 >> B >> 2
-- >60       >>  C  >> 3
-- <60      >> D   >> 4

ALTER TABLE student
ADD COLUMN result VARCHAR(40);

SELECT * FROM student;

UPDATE student SET result=
case 
WHEN    marks>=80   THEN 'A'
WHEN    marks>=75  THEN 'B'
WHEN    marks>=60   THEN 'C'
ELSE 'D'
end WHERE roll_num IS NOT NULL;

SELECT * FROM student;

-- DELETE records >>  condition >> stu_name >=11 character

DELETE FROM student WHERE length(stu_name)>=12;

SELECT * FROM student;


-- --------------------------------------------------DDL------------------------------------------------
--              DDL - Data Definition Language:
-- Meaning: DDL encompasses SQL commands that 
-- are used to define, 
-- manage, and manipulate the structure of database objects. 
-- These commands help in creating, altering, and deleting database 
-- objects such as tables, indexes, and views.
-- Examples: CREATE, ALTER, DROP, TRUNCATE

-- CREATE 
-- database,table,view,index,trigger,function,procedure

-- VIEW
-- virtual table 
-- VIEW is virtual table or it is instance of a table

-- country asia continent

USE world;
CREATE VIEW  asiacon AS (SELECT name,population,SurfaceArea,LifeExpectancy 
FROM country
WHERE continent='asia');

SELECT * FROM asiacon;

-- DROP VIEW asiacon;

-- ALTER...
-- THIS COMMAND IS USED TO ADD/CHANGE/MODIFY/DROP EXISTING 
-- STRUCTURE
-- OF TABLE


-- ADD COLUMN
-- ENABLE/DISABLE CONSTRAINTS
-- CHANGE COLUMN NAME
-- MODIFY COLUMN DATA TYPE OR CONSTRAINT
-- DROP COLUMN
-- DROP TABLE
-- DROP DATABASE

CREATE DATABASE ddl_db;
USE ddl_db;

CREATE TABLE Product(
    product_id INT,
    product_name VARCHAR(255) NOT NULL,
    prize_per_quantity DECIMAL(10, 2),
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

-- ADD COLUMN

-- 1) ADD COLUMN WITHOUT CONSTRAINTS
-- 2) ADD COLUMN WITH CONSTRAINTS
-- 3) ADD COLUMN with position
-- 4) HOW TO ADD MULTIPLE COLUMN AT A TIME
-- 5) ADD COLUMN WITH USING ADD KEYWORD

-- 1) ADD COLUMN WITHOUT CONSTRAINTS
-- SYNTAX
-- ALTER TABLE table_name
-- ADD COLUMN col_name DATA_TYPE;

ALTER TABLE product
ADD COLUMN sales DECIMAL(10,2);


SELECT * FROM product;

SET sql_safe_updates=0;

UPDATE product SET sales=prize_per_quantity*quantity;

SELECT * FROM product;
SET sql_safe_updates=1;

-- 2) ADD COLUMN WITH CONSTRAINTS

ALTER TABLE product
ADD COLUMN product_size INT  NOT NULL;

DESC product;

ALTER TABLE product
ADD COLUMN col1 INT  UNIQUE KEY;

DESC product;

-- 3) ADD COLUMN with position
-- LAST(BY DEFAULT)
-- FIRST
-- AFTER

ALTER TABLE product 
ADD COLUMN new1 INT AFTER product_name;

DESC product;
SELECT * FROM product;

ALTER TABLE product 
ADD COLUMN new2 INT FIRST;
DESC product;

-- 4) HOW TO ADD MULTIPLE COLUMN AT A TIME

ALTER TABLE product 
ADD COLUMN new3 INT,
ADD COLUMN new4 VARCHAR(40);
DESC product;


-- 5) ADD COLUMN WITH USING ADD KEYWORD

ALTER TABLE product
ADD COLUMN new5 INT auto_increment,
ADD PRIMARY KEY(new5);

DESC product;

SELECT * FROM product;


-- ADD CONSTRAINTS INTO EXISTING COLUMN

DESC product;

ALTER TABLE product
ADD UNIQUE KEY(new3);

DESC product;

-- CHANGE COLUMN

ALTER TABLE product
CHANGE COLUMN product_name product_type VARCHAR(50);

DESC product;

ALTER TABLE product
RENAME COLUMN new2 TO tttt;

DESC product;

-- 8) RENAME TABLE NAME
ALTER TABLE product 
RENAME TO mysales;

RENAME TABLE  mysales to product;

-- MODIFY COLUMN

-- THIS IS USED TO MODIFY SIZE OF DATA TYPE OR DATA TYPE ITSELF
-- OF EXISTING COLUMN WITHOUT CHANGING COLUMN NAME

Retrieve countries from the country table where the number of
official languages is more than 3.

USE world;

SELECT CountryCode,count(*) total
FROM countrylanguage
WHERE isofficial='T'
GROUP BY CountryCode
HAVING total>3;

SELECT name,code FROM country WHERE code IN ('CHE', 
'ZAF');