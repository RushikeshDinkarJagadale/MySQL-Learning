-- 1) Constrints
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

INSERT INTO emp1 VALUES(1,'Gauravi',25000.00);

SELECT*FROM emp1;

INSERT INTO emp1(emp_id,emp_name) VALUES(2,'Payal');
SELECT*FROM emp1;

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
is_active VARCHAR(20) DEFAULT'active',
isactive BOOLEAN DEFAULT(true)
);

INSERT INTO emp2(emp_id,emp_name) VALUES(1,'MOSS');
INSERT INTO emp2(emp_id,emp_name) VALUES(2,'TAKLI');
SELECT * FROM emp2;



-- 3)  CHECK 
-- CHECK 
-- A check constraint is used to define a condition that 
-- the values in a column must satisfy.
-- It is used to limit the range of acceptable values for a column.
-- For example, you can use a check constraint to enforce 
-- that an age column must be greater than 18

CREATE TABLE student1(
roll_no INT,
name VARCHAR(40),
age INT CHECK(age>=18 AND age<=50)
);
INSERT INTO student1 VALUES(17,'Anuja',19);
INSERT INTO student1 VALUES(18,'vaishnavi',19);
INSERT INTO student1 VALUES(19,'Pooja',19);

SELECT * FROM student1;
DESC student1;

#4) --UNIQUE KEY/UNIQUE

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
roll_no INT UNIQUE KEY,
name VARCHAR(40),
mobile_no BIGINT UNIQUE KEY
);

INSERT INTO student2 VALUES(16,'Payal',9309759211);
INSERT INTO student2 VALUES(17,'Anuja',9689328215);
INSERT INTO student2 VALUES(18,'vaishnavi',8830438215);
INSERT INTO student2 VALUES(19,'Pooja',7070707070);
INSERT INTO student2 VALUES(20,'MOSS',9307849268);

UPDATE student2
SET name = 'MOSS', mobile_no = 9307849268
WHERE roll_no = 20;

UPDATE student2
SET roll_no = 21
WHERE roll_no = 18 AND name = 'vaishnavi';

SELECT * FROM student2;
DESC student2;


-- 5) PRIMARY KEY
-- PRIMARY KEY Constraint:
-- A primary key constraint is used to uniquely identify each row  in a table.
-- Rules
-- the primary key column contain a unique value for each record, 
-- it cannot contain NULL values.
-- Each table can have only one primary key.


USE constraints_db;

CREATE TABLE student3(
roll_no INT PRIMARY KEY,
stud_name VARCHAR(40),
marks FLOAT
);

DESC student3;

INSERT INTO student3 VALUES(01,'Ishwari',35.00);
INSERT INTO student3 VALUES(02,'Shraddha',37.00),(03,'Shrushti',91.00);

SELECT * FROM student3;

INSERT INTO student3 VALUES(04,'pallavi',11.00);
INSERT INTO student3 VALUES(05,'aarti',78.00);

CREATE TABLE student4(
roll_no INT,
stud_name VARCHAR(40),
marks FLOAT,
PRIMARY KEY(roll_no)
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
roll_no INT auto_increment,
stud_name VARCHAR(40),
marks FLOAT,
PRIMARY KEY (roll_no)
);

DESC student5;
INSERT INTO student5(stud_name,marks)VALUES('Bhagat',33.00),('madhuri',27.00),('ben_ten',88.00);
SELECT *FROM student5;

# 1) ALTER TABLE Student5 AUTO_INCREMENT=101;
# 2) Insert first value manually

INSERT INTO student5 VALUES(7,'GWEN',77.70);
SELECT *FROM student5;
INSERT INTO student5(stud_name,marks) VALUES('Granpa max',99.70);
SELECT *FROM student5;

INSERT INTO student5 VALUES(null,'vilgax',12.70);
SELECT *FROM student5;

-- 7) COMPOSITE KEY
-- primary key is combination of two columns

-- In MySQL, a composite key is a key that consists of two or more 
-- columns in a table. This type of key is used when a single 
-- column cannot uniquely identify a record, but a combination 
-- of columns can 

CREATE TABLE student6(
course_id INT,
stud_id INT,
stud_name VARCHAR(50),
course_name VARCHAR(50),
trainer_name VARCHAR(50),
PRIMARY KEY (course_id,stud_id)
);

INSERT INTO student6 VALUES(101,12,'prasad','Data Analytics','rushi');
INSERT INTO student6 VALUES(102,12,'PRASAD','Data Science','Shubham'),
(101,13,'Dadubhai','Data Analytics','rushi'),
(102,13,'Dadubhai','Data Science','Shubham');

DESC student6;
SELECT * FROM student6;
-- INSERT INTO student6 VALUES(102,12,'PRASAD','Data Science','Shubham'); dublicate values not allowed in primary key

-- DATA TYPES 
-- 1) Numeric Data Types:
-- 2) Character Data Types(String)
-- 3) Date and Time Data Types:
-- 4) Boolean Data Type:
-- 5) Binary Data Types:
-- 6) Enumerated Data Type:

-- 1) Numeric Data Types:
-- integer >> its a whole number 
-- INT,BIGINT,TINYINT(size),SMALLINT,MIDIUMINT

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


-- 2)STRING/CHARACTER
-- CHAR(N),VARCHAR(N)
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



-- 3)BINARY/BLOB
-- used to store binary data
-- BLOB binary large object
-- Used to store image,audio,video

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
-- the specified maximum lengt


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
-- Hobbies SET('cricket','music','reading')
-- can store multiple values >> 'cricket','reading'
-- Example: SET('Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday') 
-- can store a combination of days.


-- 6) DATE and TIME
-- DATE, TIME, DATETIME, TIMESTAMP, YEAR

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

--  IMPORTANT NOTES
--  string and date, time value should be written in single quote

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
salary DECIMAL(10.2),
emp_description TEXT
);

DESC sample1;
INSERT INTO sample1 VALUES(11,'rushi',22,5.5,1,'2002-06-01','2024-04-01 02:10:06',
null,'rushijagadale02@gmail.com',25000.56,'data analyst');
INSERT INTO sample1 VALUES(12,'payal',19,5.0,1,'2005-08-10','2024-04-01 02:10:06',
null,'payal@gmail.com',27000.56,'data scientist');
SELECT * FROM sample1;




CREATE TABLE sample2(
id INT PRIMARY KEY,
gender ENUM('male','female'),
hobbies SET('music','cricket','cycling')
);

INSERT INTO sample2 VALUES(1,'male','cricket,cycling');

SELECT * FROM sample2;

# ENUM OR SET >>> Set of possible values
-- ENUM takes a single values
-- SET can takes multiplke values

-- COLUMN operation 
-- ROW operation

-- ----------------------------------------COLUMN OPERATION --------------------------------------
# a) COLUMN SELECTION
# b) ALIAS
# c) DISTINCT
# d) arithmatic operator
# e) BUILT IN FUNCTION
# f) USER DEFINED FUNCTION

-- ---------------------------------------ROW OPERATION -------------------------------------------
-- a) row selection(filter rows) WHERE
-- b) LIMIT
-- c) ORDER BY
-- d) OFFSET
-- e) JOIN
-- f) GROUP BY
-- g) HAVING



-- float >> which contain decimal points 
-- FLOAT,DECIMAL(M,D),DOUBLE(M,D),NUMERIC(M,D)


