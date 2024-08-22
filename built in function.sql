-- ------------------------------------18 july 2024------------------------------------------------

-- BUILT IN FUNCTION
-- COLUMN OPERATION

-- FUNCTION
-- which is used to perform specific task


-- types of function
-- 1) BUILT IN FUNCTION.. already there
-- 2) USER DEFINED FUNCTION.. you can create own function

-- use functions on columns

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

-- ON numeric column

-- 1) SUM()
-- To get sum of column
-- numeric
-- returns single values

USE WORLD;

-- Q1) Total population of World

SELECT sum(population) AS TOTAL FROM country;

SELECT sum(population) AS TOTAL FROM country;


-- Q2) total population of asia continent
SELECT sum(population) AS TOTAL FROM country
WHERE continent ='asia';

-- 3) total surface area of world
SELECT SUM(surfacearea) AS TOTAL FROM country;

-- 4) worlds population density
SELECT sum(population)/sum(surfacearea) density from country;

SELECT sum(population)pop,sum(surfacearea) surf from country;
 
-- 2) AVG()
-- returns a single values


-- 5) AVG lifeexpectancy of world 
SELECT avg(lifeexpectancy) total from country;


-- 3) MIN()
-- returns minimum values
-- numeric,date,text


-- 6) Display minimum life expectancy

select min(lifeexpectancy) FROM country;
select name,lifeexpectancy FROM country WHERE LifeExpectancy=37.2;


SELECT name,lifeexpectancy FROM country
where lifeexpectancy is not null
order by lifeexpectancy ASC
limit 1;


-- 4)MAX

-- returns minimum value
-- numeric, date, text

-- MAX population country

SELECT max(population) FROM country; 

select name,population FROM country WHERE population=1277558000;

-- 5) COUNT
-- return single values
-- not of values 
-- numeric, text ,date

-- SYNTAX
-- SELECT count(col_name) FROM table_name
-- SELECT count(*) FROM table_name
-- SELECT count(DISTINCT col_name) FROM table_name
-- SELECT count(col_name) FROM table_name WHERE condition

-- QUE 1) DISPLAY TOTAL NUMBER OF COUNTRIES IN THE WORLD

SELECT COUNT(NAME) FROM COUNTRY;

SELECT COUNT(*) FROM COUNTRY;

-- Q2) DISPLAY TOTAL NUMBER OF CONTINENT

SELECT COUNT(DISTINCT CONTINENT) FROM COUNTRY;

-- Q3) display number of countries in asia
SELECT count(name) FROM country WHERE continent='asia';


-- ------------------------------------- 22 JULY 2024------------------------------------------------

-- no of city in india

USE world;
SELECT code from country WHERE name = 'india';
SELECT count(name) FROM city WHERE countrycode ='IND';

SELECT COUNT(*) AS NumberOfCities
FROM City
WHERE CountryCode = 'IND';



-- no of cities in asia continent

SELECT code from country WHERE continent = 'asia';

SELECT count(*) FROM city where countrycode IN ('AFG',
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
'YEM');

# 2) Mathematical Function/Trig/Log

# Pow(), power()

SELECT pow(2,3);

SELECT sqrt(25);

SELECT lifeexpectancy,sqrt(lifeexpectancy) AS sqrt_life FROM country;


-- -- EXP..e>>2.71

SELECT exp(2);
SELECT exp(1);

-- Logarithm function 
-- log(),log2(),log10()

SELECT log(1);
SELECT log(id) FROM city;

SELECT log2(2);
SELECT log10(10);


-- DECIMAL FUNCTION 
-- ROUND(),CEIL(),FLOOR()

SELECT round(4.7);
SELECT LifeExpectancy,round(LifeExpectancy) Total FROM country;

SELECT round(4.5678,1);


-- CEIL()... to next integer value
-- FLOOR()... to previous integer values


SELECT ceil(4.2);
SELECT ceil(4.8);

SELECT floor(4.9);


-- ABS()
SELECT abs(-5);

-- pi()

SELECT pi();

SELECT name,pi() FROM country;

-- sin(), cos()

SELECT sin(0);

SELECT cos(0);

SELECT radians(30);
SELECT degrees(0.52);


--                                 STRING FUNCTION

-- upper(),ucase(),lower(),lcase()
SELECT name,upper(name) total, lcase(name) AS lcase FROM country;

-- slicing>>>mid,left,right

SELECT name,left(name,2) AS lname, right(name,2) AS rname, mid(name,3.5) AS mname FROM country;

SELECT population, right(population,2) FROM country;

-- REPLACE ..case sensitive

SELECT name,replace(name,'A','T') FROM country; 

SELECT population,replace(population,1,9) FROM country;

-- Length()

SELECT name,length(name) FROM country;
SELECT population,length(population) FROM country;

-- ASCII.. American standard code for information intercharge

SELECT ascii('A');
SELECT ascii('a');


SELECT ascii('');
SELECT ascii('[');

-- ------------------------------------- 23 JULY 2024 -------------------------------------------------=

-- TRIM
-- used to remove extra space

SELECT trim('  rushi   ') AS name;

USE world;

SELECT name,trim(name) FROM country;

-- CONCAT .. to join/combine multiple values
-- CONCAT_WS

SELECT concat('payal',' ','khodade') AS mole;

SELECT name,population,concat(name,' ',population) from country;

SELECT name,population,concat_ws('-',name,population) from country;

-- INSTR
-- get position

SELECT instr('automatic','t');

-- REVERSE()

SELECT reverse('suraj');

-- str-date
-- to convert string format date into date format

SELECT str_to_date('2024-04-01','%Y-%m-%d');

SELECT str_to_date('10:20 AM','%h:%i%p'); 

# %i minutes
# %s seconds

-- Control flow function

-- ifnull

SELECT name,ifnull(Lifeexpectancy,0) FROM country
ORDER BY Lifeexpectancy;

-- coalesce

SELECT name,gnp,coalesce(LifeExpectancy,gnp,0) FROM country
ORDER BY LifeExpectancy;



-- if
SELECT LifeExpectancy,if(LifeExpectancy=78.4,"Good","Bad") FROM country;

-- GREATEST ,LEAST
-- LEAST>> smallest

SELECT gnp,gnpold,LifeExpectancy,greatest(ifnull(gnp,0),ifnull(gnpold,0),ifnull(LifeExpectancy,0))
FROM country;

SELECT gnp,gnpold,LifeExpectancy,Least(gnp,gnpold,LifeExpectancy) AS Least
FROM country;


-- name
-- >=10

SELECT name,if(length(name)>=10,name,0) FROM country;

SELECT name FROM country
WHERE length(name)>=10;

-- case when

SELECT name,LifeExpectancy,
CASE
WHEN Lifeexpectancy>70  THEN 'A'
WHEN Lifeexpectancy>50  THEN 'B'
WHEN Lifeexpectancy>40  THEN 'C'
WHEN Lifeexpectancy IS NULL THEN 'D'
ELSE 'E'
END AS total FROM country;



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
SELECT current_time();
SELECT * ,current_date() ,current_time(), current_user(),current_timestamp() FROM sales;

SELECT current_timestamp();
SELECT current_user();
SELECT curtime();

INSERT INTO sales (order_id, product, order_date, order_time, amount)
VALUES (21, 'product C', CURRENT_DATE(), CURRENT_TIME(), 560);

SELECT * FROM sales;


-- year, week, day, month, monthname
-- used to extract

SELECT order_date, YEAR(order_date) AS order_year, MONTH(order_date) AS order_month
FROM sales;


-- ----------------------------24 july 2024-------------------------------------------
--                      there is no lecture


-- ----------------------------------------  25 July 2024 ------------------------------------------------

USE built_in;

SELECT order_date,monthname(order_date)name,day(order_date)day,dayname(order_date),quarter(order_date)
from sales;

SELECT order_date,week(order_date),weekday(order_date),
weekofyear(order_date) from sales;

-- DATE_ADD(DATE,INTERVAL CONSTANT FORMAT)
-- DATE_SUB(DATE,INTERVAL CONSTANT FORMAT)


SELECT order_date,date_add(order_date,interval 3 Year) FROM sales;

SELECT order_date,date_sub(order_date,interval 3 Year) FROM sales;

-- datediff

SELECT order_date,datediff(curdate(),order_date) FROM sales;

-- EXTRACT 

SELECT order_date,extract(YEAR FROM order_date) from sales;
SELECT order_date,extract(MONTH FROM order_date) from sales;
SELECT order_date,extract(DAY FROM order_date) from sales;
SELECT order_date,extract(QUARTER FROM order_date) from sales;

-- LASTDAY().... is not available in MySQL
-- Finding the Last of the month

SELECT order_date,dayofweek(order_date)from sales;

SELECT max(order_date) FROM sales WHERE monthname(order_date)='april';

SELECT order_date,LAST_DAY(order_date) FROM sales;

-- The DATE_FORMAT function can be used to manipulate date formats and 
-- extract parts of the date. To find the first day of the month, you can use 
-- DATE_FORMAT to set the day part to '01'.

SELECT order_date,product FROM sales WHERE order_date= DATE_FORMAT(order_date,'%Y-%m-01');

-- 2024 data filter
SELECT * FROM sales
WHERE year(order_date)='2024';

SELECT * FROM sales
WHERE year(order_date)=2024 and month(order_date)='march';


-- filter 4-05-2024 to 6-9-2025
SELECT * FROM sales 
WHERE order_date BETWEEN '2024-05-04' and '2025-09-06';

-- COLUMN OPERATION >> user defined function
-- ROWS OPERATION >>GROUP BY HAVING JOIN

-- GROUP BY
-- used to create report/pivot table
-- used to summarize data

-- GROUP BY... is used to summarize data
-- HAVING ... used to filter group by result

-- SYNTAX
-- SELECT colname,agg_fun(colname)
-- FROM table_name
-- GROUP BY colname

-- ---------------------------------29 JULY 2024 ---------------------------------------

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

SELECT * FROM sales;

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

SELECT * FROM sales;

-- company wise total sales

SELECT company_name,sum(sales_amount) total
FROM sales
WHERE year(order_date)=2024
GROUP BY company_name
HAVING total>=1200
ORDER BY total DESC;


-- Product wise total sales
-- top 2 products

SELECT product,sum(sales_amount) total
FROM sales
WHERE year(order_date)=2024
GROUP BY product
ORDER BY total DESC
limit 2;
 

SELECT product,sum(sales_amount) total
FROM sales
WHERE order_date BETWEEN '2024-06-01' AND '2024-06-15'
GROUP BY product
ORDER BY total DESC; 

-- order of writing 
-- SELECT, FROM, WHERE, GROUP BY, HAVING, ORDER BY, LIMIT/OFFSET

-- order of execution
-- FROM, WHERE, GROUP BY, HAVING, SELECT, ORDER BY, LIMIT/OFFSET

USE world;

-- continent wise population

SELECT continent, SUM(population) AS total_population
FROM country
GROUP BY continent;


-- --------------------------- 30 July 2024 -----------------------------------------

USE world;
-- continent wise lifeexpectancy

SELECT continent,avg(LifeExpectancy) Total
FROM country
GROUP BY continent
HAVING total>0
ORDER BY Total DESC;

-- Numbering system
-- in group by and Order by we can use numbers(index)

SELECT continent,avg(LifeExpectancy) Total
FROM country
GROUP BY 1
HAVING total>0
ORDER BY 2 DESC;

-- continent wise >> no of countries

SELECT continent,count(*) Total
FROM country
group by continent
order by 2 DESC;

-- countries no of cities

SELECT countrycode,count(*) total 
FROM city
GROUP BY countrycode
ORDER BY total DESC;

-- DISPLAY CONTINENT WISE PERCENTAGE POPULATION

SELECT SUM(population) FROM country;

SELECT continent, ROUND(SUM(population)/6078749450*100,2)
 AS total_population
FROM country
GROUP BY continent
ORDER BY total_population DESC;


USE groupby_db;

-- Create the 'orders' table
CREATE TABLE orders(
    order_id BIGINT PRIMARY KEY,
    company_name VARCHAR(80),
    product VARCHAR(40),
    order_date DATE,
    Quantity INT,
    sales_amount DECIMAL(10,2)
);

-- Insert data into the 'orders' table
INSERT INTO orders(order_id, company_name, product, order_date, quantity, sales_amount) VALUES
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

-- calculate year wise total sales
SELECT year(order_date),sum(sales_amount) total
FROM orders
group by year(order_date);

-- calculate year-wise total sales from google
SELECT year(order_date),sum(sales_amount) total
FROM orders
WHERE company_name='google'
group by year(order_date);

-- calculate year wise total sales from A
SELECT year(order_date),sum(sales_amount) total
FROM orders
WHERE product='A'
group by year(order_date);

-- monthwise total sales

SELECT monthname(order_date),sum(sales_amount) total
FROM orders
GROUP BY monthname(order_date);

-- monthwise total sales for 2023
SELECT monthname(order_date),sum(sales_amount) total
FROM orders
WHERE year (order_date)=2023
GROUP BY monthname(order_date);

-- quarterwise total sales
SELECT quarter(order_date),sum(sales_amount) total
FROM orders
WHERE year (order_date)=2023
GROUP BY quarter(order_date);

-- quarterwise total sales for 2023
#SELECT concat('Q'quarter(order_date)),Q,sum(sales_amount) total
#FROM orders
#WHERE year (order_date)=2023
#GROUP BY concat('Q'quarter(order_date));

-- multiple column in group by

SELECT company_name,product,sum(sales_amount) total
FROM orders
group by company_name,product;

-- companywise>>yearwise>>total sales
SELECT company_name,YEAR(order_date) AS year,SUM(sales_amount) AS total_sales
FROM orders
GROUP BY company_name,YEAR(order_date)
ORDER BY total_sales DESC;

-- order by using multiple columns

SELECT company_name,YEAR(order_date)year,SUM(sales_amount)total
FROM orders
GROUP BY company_name,YEAR(order_date)
ORDER BY company_name ASC ,total DESC;


SELECT company_name,YEAR(order_date)year,avg(sales_amount)avg_total
FROM orders
GROUP BY company_name,YEAR(order_date)
ORDER BY company_name ASC ,avg_total DESC;







