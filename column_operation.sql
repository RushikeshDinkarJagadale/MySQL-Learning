
#*>>all columns

USE WORLD;

show tables;
select * from country;
SELECT * FROM CITY;
SELECT * FROM countrylanguage;

--                               ------15 July 2024------
-- -----------------------------------COLUMN OPERATION---------------------------------------
# a) COLUMN SELECTION
#SYNTAX
#SELECT*FROM table;
#SELECT coll,col2 FROM TABLE;

SELECT * FROM country;
SELECT name, population, gnp FROM country;
SELECT name, population, name FROM country;

#2)ALIAS
-- to give a short name or temporary name to column or table

-- a)AS

SELECT name AS country_name, population AS pop FROM COUNTRY;

-- b)single quote

SELECT name AS `country name` ,population AS 'country pop' FROM country;

-- c)space between column name alias (without as)	

SELECT name country_name,population FROM country;

-- d) alias for table

SELECT * from country c1;
SELECT c1.name,c1.population FROM country c1;

#3) DISTICT
# unique values from column
-- syntax
-- SELECT DISTINCT col1 FROM table;

-- QUE. Fetch Distinct Continent From Country Table

SELECT DISTINCT continent FROM country;

-- 4) Arithmetic operator
-- +,-,*,/

SELECT name,LifeExpectancy,LifeExpectancy+2 AS total FROM country;
SELECT name,LifeExpectancy,LifeExpectancy/2 AS total FROM country;
SELECT name,LifeExpectancy,LifeExpectancy*2 AS total FROM country;
SELECT name,LifeExpectancy,population,LifeExpectancy+population AS total FROM country;

-- display name,population,surface area,population density

SELECT name, population,surfacearea,(population / surfacearea) AS population_density FROM COUNTRY;



-- 14.Write a Query to display name,population,density,10% of population of each nation, increased population density(country table)


SELECT name, population, population/surfacearea as density,population*10/100 new1,
population+population*10/100 as new2,
(population+population*10/100)/surfacearea new_density
FROM country;

-- rise or fall of gnp
SELECT name,gnp,gnpold,gnp-gnpold 'rise/fall' FROM country;
--                               ------16 July 2024------

-- 5)Built in function 
-- 6)USER DEFINED FUNCTION 
-- SEE LATER


-- ROWS OPERATION
-- ---------------------------------------ROW OPERATION ----------------------------------------
-- a) row selection(filter rows) WHERE
-- b) LIMIT
-- c) ORDER BY
-- d) OFFSET
-- e) GROUP BY
-- f) HAVING
-- g) JOIN

-- a) Row selection (filter rows)
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

-- QUE 1 Fetch all records from country table of asia continent

SELECT * FROM country WHERE continent= 'asia';

-- QUE 2 Fetch name,populaton,region from contry table for western europe

SELECT name,population,region FROM Country WHERE region='western europe';

-- QUE 3 Fetch name,continent,population from country table where population >= 1 crore

SELECT name,continent,population FROM country
where population >= 10000000;

-- QUE 4 All records where lifrexpectancy>=80

SELECT * FROM country
where Lifeexpectancy>=80;

-- QUE 5 Fetch all records excluding africa continent

SELECT * FROM COUNTRY
WHERE continent != 'africa';

-- 6) Display the population of india

SELECT name,population FROM country 
WHERE name = 'india';

-- 7) Display Countries Which Got independence after 1945

SELECT * FROM Country 
WHERE indepYear>'1945';

-- 8)Capital of brazil country

SELECT name,capital FROM country WHERE name='India';

SELECT * FROM city WHERE id=1109;


-- QUE 9) Fetch languages from countrylanguage table

SELECT * FROM countrylanguage
WHERE isofficial="T";

-- QUE 10) languages for india

SELECT name,code FROM country WHERE  name='india';
SELECT * FROM countrylanguage WHERE countrycode = 'IND';

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

-- Q.1) display all records where continent is asia and lifeexpectancy>=70 

SELECT * FROM country
WHERE continent ='asia' AND lifeexpectancy>=70;

EXPLAIN SELECT * FROM country
WHERE continent = 'asia' AND lifeexpectancy>=70;

-- Q.2) display records of asian countries where population >1 cr.
--      and 
--      lifeexpectancy>=70

SELECT * FROM country
WHERE continent ='ASIA' AND population >10000000 AND lifeexpectancy>=70;



-- Q.3 fetch data for countries where lifeexpectancy is in between 70 to 80

SELECT * FROM country
WHERE lifeexpectancy >=70 and  lifeexpectancy<=80;

-- Q.4) display records of countries of india,brazil,bangladesh

SELECT * FROM country
WHERE name='india' OR name='brazil' OR name='bangladesh';

SELECT * FROM country
WHERE name IN ('india','brazil','bangladesh');


-- Q.5) display asia and africa continent countries

SELECT * FROM country 
WHERE continent='asia' OR continent='africa';

-- Q.6) fetch asian countries but lifeexp>70 OR population>1 cr

SELECT * FROM COUNTRY
WHERE continent='asia' AND (lifeexpectancy>=70 OR population>10000000);

-- NOT 

SELECT * FROM COUNTRY WHERE NOT continent='asia';


-- -----------------------------------------17 july 2024----------------------------------------

-- 3) IN NOT IN
-- alternative to OR logical operator
-- # IN ..allows to specify multiple  values in where clause

-- SYNTAX
-- SELECT * FROM table_name WHERE col_name IN (value1,value2,...);

-- Q.1) display records of countries of india , brazil, bangladesh

USE world;

SELECT * FROM country
WHERE name ='india' OR name= 'brazil' OR name='bangladesh';

SELECT * FROM country
WHERE name IN ('india', 'brazil', 'bangladesh');

SELECT * FROM  country
WHERE NOT name IN ('india', 'brazil', 'bangladesh');

-- 4) BETWEEN, NOT BETWEEN
-- alternative to AND logical operator(range)

-- Q.3 fetch data for countries where lifeexpectancy is in between 70 to 80

SELECT * FROM COUNTRY
WHERE lifeexpectancy>= 70 AND lifeexpectancy<=80;

SELECT * FROM COUNTRY 
WHERE lifeexpectancy BETWEEN 70 AND 80;

SELECT * FROM COUNTRY 
WHERE lifeexpectancy NOT BETWEEN 70 AND 80;

-- IN, BETWEEN >>text,numeric,date
-- SELECT * FROM country 
-- WHERE reg_date BETWEEN '2024-01-01' AND '2024-01-31';

-- SELECT * FROM country 
-- WHERE reg_date >= '2024-01-01' AND reg_date<='2024-01-31';

-- SELECT * FROM country 
-- WHERE year(reg_date )=2023;

-- ISNULL, ISNOT NULL
-- IS NULL >> Checks null values
-- IS NOT NULL >> Checks actual true values

SELECT NAME, IndepYear FROM country WHERE IndepYear IS NULL;
SELECT NAME, IndepYear FROM country WHERE IndepYear IS NOT NULL;

-- find middle east countries  when population in between  2 cr to 7 cr

SELECT * FROM country
WHERE region ='middle east' AND (population BETWEEN 20000000 AND 70000000);

SELECT * FROM country
 WHERE region='middle east' AND population >=20000000 AND population <=70000000;


-- 6) LIKE, NOT LIKE

-- use to find pattern from string/text
-- SYNTAX
-- SELECT * FROM table_name WHERE col_name LIKE 'pattern';

-- wild character/meta character/special characters
-- % .....zero or more character  
-- _ ......single character


-- Q.1) display countries which are starting with 'T'

SELECT * FROM country
WHERE NAME LIKE 'T%';

-- Q 2) display countries which are starting 'I'
SELECT  * FROM country WHERE name LIKE 'I%';

-- Q3) display countries which ends 'I'
SELECT * FROM country WHERE name LIKE '%I';

-- Q4) display countries which ends with 'stan'
SELECT * FROM country WHERE name LIKE '%stan';

-- Q5) Starting I and ending A
SELECT * FROM country WHERE name LIKE 'I%A';


-- Q.6 -- display countries which starts with 'I' and ends with 'A'
-- fourth character I;

SELECT * FROM COUNTRY 
WHERE name LIKE 'I__I%A';

-- Q.7 display records of continent where first character is A and third character is R

SELECT * FROM country
WHERE continent LIKE 'A_R%';

-- b) LIMIT 
-- used to limit rows
-- top rows

SELECT * FROM country LIMIT 10;

-- C) ORDER BY 
-- used to sort data in ascending and desc order

-- SELECT * FROM table_name ORDER BY column_name ASC/DESC;

-- can use order by on TEXT,NUMERIC,DATE column
-- numerical column..value wise 
-- text.. column a-z z-a
-- date.. day wise

SELECT * FROM country ORDER BY population ASC;
SELECT * FROM country ORDER BY population DESC;

SELECT name,lifeexpectancy FROM country
WHERE lifeexpectancy IS NOT NULL AND continent ='asia'
ORDER BY lifeexpectancy
limit 2;

-- Q ) two most populated country in world

SELECT * FROM country
ORDER BY population DESC
limit 2;


-- --------------------------------------------18 july 2024------------------------------------------------
-- offset
-- used with the LIMIT clause to specify which row to start retrieving data 

-- SELECT column1, column2, 
-- FROM table_name
-- ORDER BY column
-- LIMIT number_of_rows OFFSET offset_value;

use world;
select * from country
limit 1 offset 1;

-- 2nd highest populated city in world
select * from City
order by population DESC limit 1 offset 1;

-- ORDER OF WRITING >> SELECT ,FROM ,WHERE, ORDER BY, LIMIT/OFFSET
-- OREDR OF execution >> FROM ,WHERE ,SELECT ,ORDER BY ,LIMIT/OFFSET
-- 

SELECT name,population FROM COUNTRY
WHERE continent='asia'
order by population DESC
limit 3;

-- Display Top 10 Rich nation
SELECT * FROM country 
order by gnp DESC
limit 10;

-- Display Top 10 poor nation

select name,gnp from country
WHERE gnp>0
order by gnp asc
limit 10;

-- 3 least lifeexpectancy countries from asia

SELECT name,lifeexpectancy FROM country 
WHERE continent = 'ASIA'
order by lifeexpectancy IS NOT NULL
limit 3;


-- GROUP BY
-- HAVING
-- JOIN













