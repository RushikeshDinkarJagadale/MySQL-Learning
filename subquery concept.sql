-- -----------------------------------------13 August 2024 ------------------------------------------------

-- SUBQUERY
-- QUERY WRITTEN IN ANOTHER QUERY
-- alternative to join

# -- Query written in another query is a subquery
# syntax
# SELECT col1,col2,... FROM table1 
# WHERE col=(SELECT col1  FROM table2)

-- basically its a tool to join two or more table
-- SUBQUERIES WITH OPERATOR  > = ETC
-- SUBQUERIES WIH KEYWORDS IN NOT IN

# we can write subquery for 
# 1) value
# 2) column
# 3) table

-- Values

USE world;

-- EXP 1) DISPLAY NAME,CONTINET,POPULATION OF NATION HAVING MAX LIFEEXPECTANCY using function

SELECT max(LifeExpectancy)FROM country;

SELECT name,continent,population
FROM country
WHERE LIFEEXPECTANCY = 83.5;

SELECT name,continent,population
FROM country
ORDER BY LifeExpectancy DESC
limit 1;

-- subquery

SELECT name,continent,population
FROM country
WHERE LIFEEXPECTANCY =(SELECT max(LifeExpectancy)FROM country);

-- Exp 2) Most populous country

SELECT name,continent,population
FROM country
WHERE Population =(SELECT max(Population)FROM country);

-- Exp 3) Find the cities in countries with a population greater than 100 millon
-- 100000000

SELECT c2.name,c1.name,c1.Population
FROM country c1 INNER JOIN city c2
ON c1.code=c2.countrycode
WHERE c1.Population>100000000;

SELECT code FROM country
WHERE population>100000000;

SELECT name FROM city
WHERE CountryCode IN ('BGD',
'BRA',
'CHN',
'IDN',
'IND',
'JPN',
'NGA',
'PAK',
'RUS',
'USA');

SELECT name FROM city
WHERE CountryCode IN(SELECT code FROM country
WHERE population>100000000);

-- EXP 2) Display all cities with their population of INDIA

-- JOIN
SELECT c2.name,c1.name,c1.Population
FROM Country c1 INNER JOIN city c2
ON c1.code=c2.countrycode
WHERE c1.name='India';


-- SUBQUERY

SELECT Name,Population
FROM City
WHERE Countrycode =(SELECT CODE FROM COUNTRY WHERE NAME ='INDIA');


-- Q1) DISPLAY all records of asian countries with above average regional LIFEEXPECTANCY

SELECT * FROM Country
 WHERE Continent='Asia'
 AND LifeExpectancy>
 (SELECT AVG(LifeExpectancy) FROM Country
 WHERE Continent='Asia'); 

-- asia continent>>cities
SELECT Name, CountryCode, District, Population
FROM city
WHERE CountryCode IN (
    SELECT Code
    FROM country
    WHERE Continent = 'Asia');


-- india official languages

-- join 
SELECT c1.name,c2.Language,c2.IsOfficial
FROM country c1
INNER JOIN countrylanguage c2 
ON c1.Code = c2.CountryCode
WHERE c1.Name = 'India' AND c2.IsOfficial = 'T';

-- subquery

SELECT language FROM countrylanguage
WHERE IsOfficial='T'
AND CountryCode=(SELECT Code from country WHERE Name='INDIA');

-- Subquery for column

select sum(population) Country_population,(SELECT Sum(population) FROM city) city_population FROM Country;

-- SUBQUERY FOR TABLE

-- continent wise avg population
Select continent,avg(population) From Country
Group By continent;

SELECT avg(avg_c) FROM (Select continent,avg(population) avg_c From Country
Group By continent) c1;

-- it's a compulsory to write alias for subquery while writing for table 

-- Q1) name of countries for which city record is not available

-- using join
SELECT c1.Name,c2.name
FROM country c1
LEFT JOIN city c2 
ON c1.Code = c2.CountryCode
WHERE c2.name IS NULL;

-- using subquery
SELECT Name FROM country
WHERE Code NOT IN 
(SELECT CountryCode FROM city);



















