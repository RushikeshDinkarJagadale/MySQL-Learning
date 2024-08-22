--                               07 AUGUST 2024          JOIN

-- JOIN
-- merge
-- combine multiple tables on basis of related column


--                              ~~~ JOINS in SQL ~~~
-- In SQL, the JOIN operation is used to combine 
-- rows from two or 
-- more tables based on a related column between them. 
-- This operation allows you to retrieve data from multiple tables in 
-- a single query, which is essential for querying relational databases 
-- effectively. There are several types of joins, 
-- including INNER JOIN, LEFT JOIN (or LEFT OUTER JOIN), 
-- RIGHT JOIN (or RIGHT OUTER JOIN), and FULL JOIN (or FULL OUTER JOIN). 

-- 1) INNER JOIN:
-- An INNER JOIN returns only the rows where there is a match in both 
-- the left and right tables based on the specified condition.

-- 2) LEFT JOIN/LEFT OUTER JOIN
-- A LEFT JOIN returns all the rows from the left table and 
-- the matching rows from the right table. 
-- If there is no match, the result will contain NULL values for 
-- columns from the right table.

-- 3) RIGHT JOIN (RIGHT OUTER JOIN):
-- A RIGHT JOIN is similar to a LEFT JOIN but returns all the rows 
-- from the right table and the matching rows from the left table. 
-- If there is no match, the result will contain NULL values for 
-- columns from the left table.


-- 4) FULL JOIN (FULL OUTER JOIN):
-- A FULL JOIN returns all the rows from both the left and right tables, 
-- along with matching rows from both tables. 
-- If there is no match, the result will contain NULL values for 
-- columns from the table where there is no match.


-- 1) INER JOIN
-- SYNTAX
-- SELECT column1, column2, ...
-- FROM table1 INNER JOIN table2
-- ON table1.column = table2.column;


-- 2) LEFT OUTER JOIN
-- SELECT column1, column2, ...
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column = table2.column;


-- 3) RIGHT OUTER JOIN
-- SELECT column1, column2, ...
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.column = table2.column;

-- 4) FULL OUTER JOIN
-- SELECT column1, column2, ...
-- FROM table1
-- FULL JOIN table2
-- ON table1.column = table2.column;

-- 5)CROSS JOIN/Cartesian join/CROSS PRODUCT/Cartesian PRODUCT

-- a cross join (also known as a Cartesian join) is a type of 
-- join that combines each row from one table with every row from 
-- another table

-- SELECT *
-- FROM table1
-- CROSS JOIN table2;

-- OR 

-- SELECT * FROM table1,table2;
CREATE DATABASE join_db;
USE join_db;

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
sales DECIMAL(10,2)
);

INSERT INTO Customer (customer_id, customer_name, mob_num, address) VALUES
(1, 'John Doe', 1234567890, '123 Elm Street'),
(2, 'Jane Smith', 2345678901, '456 Oak Avenue'),
(3, 'Robert Johnson', 3456789012, '789 Pine Lane'),
(4, 'Emily Davis', 4567890123, '101 Maple Drive'),
(5, 'Michael Wilson', 5678901234, '202 Birch Boulevard'),
(6, 'Linda Martinez', 6789012345, '303 Cedar Court'),
(7, 'James Anderson', 7890123456, '404 Spruce Street'),
(8, 'Patricia Taylor', 8901234567, '505 Walnut Way'),
(9, 'David Thomas', 9012345678, '606 Poplar Road'),
(10, 'Jennifer Jackson', 1123456789, '707 Redwood Circle');

INSERT INTO Orders (order_id, customer_id, order_date, product, quantity, sales) VALUES
-- Orders for 2020
(101, 1, '2020-01-15', 'Product A', 5, 100.50),
(102, 2, '2020-02-20', 'Product B', 3, 75.00),
(103, 3, '2020-03-25', 'Product C', 7, 140.00),
(104, 4, '2020-04-30', 'Product D', 2, 50.00),
(105, 6, '2020-06-20', 'Product B', 6, 150.00),
(106, 7, '2020-07-25', 'Product C', 1, 20.00),
(107, 9, '2020-09-15', 'Product A', 3, 60.00),
(108, 10, '2020-10-20', 'Product B', 5, 125.00),

-- Orders for 2021
(109, 1, '2021-01-10', 'Product C', 6, 120.00),
(110, 2, '2021-02-15', 'Product D', 2, 50.00),
(111, 3, '2021-03-20', 'Product A', 7, 140.00),
(112, 4, '2021-04-25', 'Product B', 3, 75.00),
(113, 6, '2021-06-15', 'Product D', 5, 100.00),
(114, 7, '2021-07-20', 'Product A', 2, 40.00),
(115, 9, '2021-09-30', 'Product C', 8, 160.00),
(116, 10, '2021-10-15', 'Product D', 1, 20.00),

-- Orders for 2022
(117, 1, '2022-01-05', 'Product A', 5, 100.00),
(118, 2, '2022-02-10', 'Product B', 3, 75.00),
(119, 3, '2022-03-15', 'Product C', 7, 140.00),
(120, 4, '2022-04-20', 'Product D', 2, 50.00),
(121, 6, '2022-06-30', 'Product B', 6, 150.00),
(122, 7, '2022-07-05', 'Product C', 1, 20.00),
(123, 9, '2022-09-15', 'Product A', 3, 60.00),
(124, 10, '2022-10-20', 'Product B', 5, 125.00),

-- Additional orders to keep the total at 30
(125, 1, '2022-11-25', 'Product C', 4, 80.00),
(126, 2, '2022-12-10', 'Product D', 8, 160.00),
(127, 3, '2022-11-30', 'Product A', 2, 40.00),
(128, 4, '2022-12-15', 'Product B', 5, 125.00),
(129, 11, '2022-11-10', 'Product C', 3, 75.00),
(130, 12, '2022-12-05', 'Product D', 7, 140.00);

SELECT * FROM customer;
SELECT * FROM orders;

-- -----------------------------------08 August 2024 -----------------------------------------------------

-- INNER JOIN 
-- only matching rows
-- SYNTAX
-- SELECT column1, column2, ...
-- FROM table1 INNER JOIN table2
-- ON table1.column = table2.column;

SELECT * FROM 
customer INNER JOIN orders
ON customer.customer_id=orders.customer_id;

-- using alias
SELECT * FROM 
customer c1 INNER JOIN orders c2
ON c1.customer_id=c2.customer_id;


SELECT c1.customer_name,c1.address,c2.product,c1.customer_id FROM 
customer c1 INNER JOIN orders c2
ON c1.customer_id=c2.customer_id;


-- 2) LEFT OUTER JOIN
-- all tables from left table matching with the right table

-- SYNTAX
-- SELECT column1, column2, ...
-- FROM table1
-- LEFT JOIN table2
-- ON table1.column = table2.column;

SELECT * FROM 
customer c1 LEFT JOIN orders c2
ON c1.customer_id=c2.customer_id;


-- 3) RIGHT OUTER JOIN
-- all rows from Right table matching with Left table

-- SYNTAX
-- SELECT column1, column2, ...
-- FROM table1
-- RIGHT JOIN table2
-- ON table1.column = table2.column;

SELECT * FROM 
customer c1 RIGHT JOIN orders c2
ON c1.customer_id=c2.customer_id;

-- 4) FULL OUTER JOIN
-- all row from both sides matching with each other

-- SYNTAX
-- SELECT column1, column2, ...
-- FROM table1
-- FULL JOIN table2
-- ON table1.column = table2.column;

-- SELECT * FROM 
-- customer c1 FULL OUTER JOIN orders c2
-- ON c1.customer_id=c2.customer_id;
-- not supports in MYSQL

-- FULL JOIN not supports in MYSQL directly SO we use UNION Operation
SELECT * FROM 
customer c1 LEFT JOIN orders c2
ON c1.customer_id=c2.customer_id
UNION
SELECT * FROM 
customer c1 RIGHT JOIN orders c2
ON c1.customer_id=c2.customer_id;


-- 5) CROSS JOIN/Cartesian join/CROSS PRODUCT/Cartesian PRODUCT

-- a cross join (also known as a Cartesian join) is a type of 
-- join that combines each row from one table with every row from 
-- another table

-- SELECT *
-- FROM table1
-- CROSS JOIN table2;

-- OR 

-- SELECT * FROM table1,table2;

SELECT * FROM customer,orders;


-- 6)natural join
-- inner join without ON clause

-- Natural join/INNER JOIN
-- A NATURAL JOIN in SQL is a type of join that automatically 
-- matches columns with the same name in two or more tables 
-- and returns the resulting rows. It's important to note that a 
-- NATURAL JOIN does not require specifying a specific join condition, 
-- as it relies solely on matching column names.
-- SYNTAX
-- SELECT *
-- FROM table1
-- NATURAL JOIN table2;

SELECT *
FROM customer NATURAL JOIN orders;

-- 7)SELF JOIN

-- SELF JOIN
-- A self join in SQL involves joining a table with itself. 
-- It's a way to combine rows from a single table based on a 
-- specific relationship or condition within that table. 
-- Self joins are useful when you have data in a single table 
-- that has some sort of hierarchical or related structure.

drop table employee;

CREATE TABLE employee(
emp_id int,
name VARCHAR(10),
manager_id INT null
);

INSERT INTO employee (emp_id, name, manager_id)
VALUES
    (1, 'rahul', 3), 
    (2, 'Jay', 3),   
    (3, 'sonam', 4), 
    (4, 'kunal', 5),   
    (5, 'ram', 6),  
    (6, 'rani', NULL),
    (7, 'viru', 6);

SELECT * FROM employee;

SELECT e1.name Employee_name,e2.name Manager_name
FROM employee e1
INNER JOIN employee e2
ON e1.manager_id=e2.emp_id;

-- IFNULL()
-- COALESCE()


#SET OPERATION
-- UNION,UNION ALL ,INTERSECT,EXCEPT
-- In MySQL, set operations are used to perform operations on sets of data.
--  The common set operations include UNION, INTERSECT, 
--  and EXCEPT (or MINUS). However, it's important to note 
--  that not all databases, including MySQL, 
--  support INTERSECT and EXCEPT directly. MySQL primarily supports UNION.

-- UNION
-- In MySQL, the UNION operator is used to combine the result sets 
-- of two or more SELECT statements into a single result set. 
-- The UNION operator removes duplicate rows from the combined result 
-- set by default. 

-- RULES 

-- 1) Column Names and Data Types: The columns selected in each SELECT 
-- statement within the UNION must have the same name and data type. 
-- The result set will take on the column names and data types from 
-- the first SELECT statement.

-- Order: The columns are combined vertically, and the order of the 
-- columns in each SELECT statement must match. For example, if the 
-- first SELECT statement selects "column1" and "column2", the second 
-- SELECT statement must also select "column1" and "column2" in that order.

-- Duplicates: By default, the UNION operator removes duplicate rows 
-- from the result set. If you want to include duplicates, you can 
-- use the UNION ALL operator instead. The syntax is the same, 
-- but UNION ALL retains all rows.

-- Sorting: If you want to sort the combined result set, you can use 
-- the ORDER BY clause at the end of the UNION statement. However, 
-- the ORDER BY clause applies to the entire result set and not to 
-- individual SELECT statements.

-- -- UNION ALL
-- If you want to include duplicate rows, you can use 
-- the UNION ALL operator instead.


-- SELECT column1, column2, ...
-- FROM table1
-- WHERE conditions
-- UNION
-- SELECT column1, column2, ...
-- FROM table2
-- WHERE conditions;


-- SELECT name, age FROM employees
-- UNION
-- SELECT name, age FROM contractors
-- ORDER BY age;



-- Remember that the UNION operator works with SELECT statements 
-- that have the same number of columns and compatible data types. 
-- If you need to combine results from SELECT statements with 
-- different structures, you might need to use other techniques 
-- like JOINs or subqueries.


CREATE DATABASE set_db;
USE set_db;
CREATE TABLE student(
name VARCHAR(40),
Age INT,
Marks FLOAT
);

CREATE TABLE person(
name varchar(40),
age INT,
adhar_no BIGINT
);

INSERT INTO student VALUES
('raj',11,65),
('avi',12,67),
('sana',13,78),
('sam',14,56),
('tanu',15,78);

SELECT * FROM  student;

INSERT INTO person VALUES
('raj',11,9735776),
('jay',17,673241),
('sana',13,985632),
('tom',21,569644);


SELECT * FROM person;
SELECT * FROM student;

-- UNION and UNION ALL. (append)
-- UNION -- removes duplicate
-- UNION ALL -- keep duplicate rows

SELECT name,age FROM student
UNION ALL 
SELECT name,age FROM person;

SELECT name,age FROM student
UNION
SELECT name,age FROM person;



-- In addition to the UNION operator, SQL also provides 
-- the INTERSECT and EXCEPT (or MINUS in some databases) set 
-- operations to work with query results. These operations 
-- allow you to perform set-based operations on two or more result 
-- sets. Here's how they work:

-- INTERSECT : Combine only those rows which the results of two query 
-- blocks have in common, omitting any duplicates. EXCEPT : For two 
-- query blocks A and B , return all results from A which are not 
-- also present in B , omitting any duplicates.


-- INTERSECT:
-- The INTERSECT operator returns the common rows that appear in both of 
-- the result sets of the two or more SELECT statements.

-- SELECT column1, column2 FROM table1
-- INTERSECT
-- SELECT column1, column2 FROM table2;

-- The columns and their data types must be the same in both SELECT 
-- statements. Like UNION, the result set of INTERSECT will 
-- eliminate duplicates


-- EXCEPT (or MINUS in some databases):
-- The EXCEPT (or MINUS) operator returns the rows from the first 
-- SELECT statement that are not present in the result set of the 
-- second SELECT statement.

-- SELECT column1, column2 FROM table1
-- EXCEPT
-- SELECT column1, column2 FROM table2;

-- As with the other set operations, the columns and their data types 
-- must match in both SELECT statements.

-- It's important to note that not all database systems support 
-- the INTERSECT and EXCEPT operators. MySQL, for instance, doesn't 
-- have built-in support for them. However, you can achieve similar 
-- results using other SQL constructs like JOINs and subqueries. 
-- Here's an example of how you might emulate INTERSECT and EXCEPT in 
-- MySQL:

-- Emulating INTERSECT using INNER JOIN
-- SELECT column1, column2 FROM table1
-- INNER JOIN table2 ON table1.column1 = table2.column1;

-- Emulating EXCEPT using LEFT JOIN and NULL check
-- SELECT column1, column2 FROM table1
-- LEFT JOIN table2 ON table1.column1 = table2.column1
-- WHERE table2.column1 IS NULL;

-- SELECT name,age FROM student
-- INTERSECT 
-- SELECT name,age FROM person;

-- we can intersect using inner join
SELECT c1.name,c1.age
FROM student c1
INNER JOIN person c2
on c1.age=c2.age;


-- EXCEPT(MINUS)
-- SELECT name,age FROM student
-- EXCEPT #(MINUS)
-- SELECT name,age from person;

SELECT name,age FROM student
WHERE NOT EXISTS(select name,age FROM person WHERE 
person.name=student.name);
 
 
 
 -- --------------------------------------12 August 2024 ------------------------------------------------
 -- JOIN practice
 
 -- WORLD
 
 -- country...code
 -- city... countrycode
 -- countrylanguage... countrycode
 USE world;
 
 -- Q1) country city >> innerjoin
 
 SELECT * FROM country c1 INNER JOIN city c2
 ON c1.code=c2.countrycode;
 
 -- Q2) countrywise city count in our dataset
 
SELECT c1.name, COUNT(c2.name) total
FROM country as c1 INNER JOIN city as c2
ON c1.code=c2.CountryCode
WHERE c1.continent='asia'
GROUP BY c1.name
HAVING total>200
ORDER BY total DESC;

 -- order of writing
-- SELECT  ,FROM(join) ,WHERE ,GROUP BY ,HAVING ,ORDER BY ,LIMIT/OFFSET 

-- order of execuion  
--  FROM(JOIN) ,WHERE,GROUP BY,HAVING,SELECT,ORDER BY,LIMIT
 
 -- Q3) continent wise city count
 
SELECT c1.Continent, count(*) AS city_count
FROM country AS c1 INNER JOIN city AS c2 
ON c1.Code = c2.CountryCode
GROUP BY c1.Continent
ORDER BY city_count DESC;

-- Q4) display languages spoken in each country, along with the country's name

SELECT c1.name,c2.Language FROM
country c1 INNER JOIN countrylanguage c2
ON c1.code=c2.countrycode;
 
-- Q5) countrywise language count

 SELECT c1.Name AS country, COUNT(c2.Language) AS language_count
FROM country AS c1 INNER JOIN countrylanguage AS c2 
ON c1.Code = c2.CountryCode
GROUP BY c1.Name
ORDER BY language_count DESC;

-- Q6) Countrywise official language count
 
SELECT c1.Name AS country, COUNT(c2.Language) AS language_count
FROM country AS c1 INNER JOIN countrylanguage AS c2 
ON c1.Code = c2.CountryCode
WHERE IsOfficial='T'
GROUP BY c1.Name
ORDER BY language_count DESC;

-- Q7) retrieve the countries that have more than one official language

SELECT c1.name,count(*) total from
country c1 INNER JOIN countrylanguage c2
ON c1.code=c2.CountryCode
WHERE c2.IsOfficial='T'
group by c1.name
having total > 1
order by total DESC;

-- Q8) countries which has no language

SELECT * FROM 
country c1 LEFT JOIN countrylanguage c2
ON c1.Code=c2.CountryCode
WHERE c2.language IS NULL;

-- Q8 countries with no city

SELECT * FROM 
country c1 LEFT JOIN city c2
ON c1.Code=c2.CountryCode
WHERE c2.name IS NULL;

-- Q10) countries capital

SELECT c1.name,c2.name FROM 
country c1 INNER JOIN city c2
ON c1.Code=c2.CountryCode
WHERE c1.Capital=c2.id;

SELECT c1.name,c2.name FROM 
country c1 INNER JOIN city c2
ON c1.Capital=c2.id;

-- Q11)Find the countries where Spanish is an official 
--     language and order them by population in descending order.

SELECT *
FROM country AS c1
INNER JOIN countrylanguage AS c2 ON c1.Code = c2.CountryCode
WHERE c2.Language = 'Spanish' AND c2.IsOfficial = 'T'
ORDER BY c1.Population DESC;


-- Q12).    Display countries from the country table where the capital
-- city's population is greater than the country's city average population


SELECT c1.name,avg(c2.population) total 
from country c1 INNER JOIN city c2
ON c1.code=c2.CountryCode
GROUP by c1.name;

SELECT c1.name,c2.name,c2.population
from country c1 INNER JOIN city c2
ON c1.capital=c2.id;











