-- ----------------------------------------ASSIGNMENT NO 7-------------------------------------------------
USE world;

#16.Retrieve countries from the country table where LifeExpectancy is not null, 
#ordered by LifeExpectancy in ascending order.
SELECT * FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy ASC;

#17.Retrieve the names and populations of countries from the country table in Asia, 
#ordered by population in descending order, limited to the top 5 countries.
SELECT name country_name ,population FROM country
WHERE Continent='Asia'
ORDER BY Population DESC
limit 5;

#18.Retrieve the top 3 most populated countries from the country table.
SELECT name country_name, Population FROM country
order by Population DESC
limit 3;

#19.Retrieve the top 3 least populated countries from the country table, 
#excluding countries with a population of zero.
SELECT Name Country_name,population FROM country
WHERE Population > 0
ORDER BY Population ASC
Limit 3;

#20.Retrieve the top 10 richest countries from the country table 
#ordered by GNP (Gross National Product) in descending order.
SELECT name AS Country_Name,GNP FROM Country
ORDER BY GNP DESC
limit 10;

#21.Retrieve the 10 poorest countries from the country table ordered by GNP in ascending order, 
#excluding countries with a GNP of zero.
SELECT Name AS country_name, GNP FROM country
WHERE GNP > 0
ORDER BY GNP ASC
LIMIT 10;

#22.Retrieve the 3 countries with the lowest LifeExpectancy from the country table, excluding null values.
SELECT Name Country_Name,LifeExpectancy FROM country
WHERE LifeExpectancy IS NOT NULL
ORDER BY LifeExpectancy ASC
limit 3;

#23.Retrieve the names and populations of countries from the country table, 
#ordered by population in descending order using the column position, limited to the top 10 countries.
SELECT Name,population FROM country
ORDER BY population DESC
limit 10 OFFSET 3;

#25.Retrieve the second most populated city from the city table.
SELECT Name,population FROM city
order by population DESC
limit 1 offset 1;

#26.Retrieve the name and population of the second most populated city from the city table, 
#using a different syntax to skip the first row.
SELECT name AS Country_name, population
order by population DESC
limit 1 offset 1;

#27.Retrieve the names and populations of countries from the country table, 
#ordered by population in descending order, limited to the top 5 countries.
SELECT name AS coubtry_name,population FROM country
ORDER BY population DESC
LIMIT 5;

#28.Retrieve the names of the top 3 countries with the largest surface area from the country table
SELECT name AS Country_name,Population,SurfaceArea FROM country
ORDER BY SurfaceArea DESC
limit 3;

#29.Retrieve the names of countries from the country table 
#where the surface area is greater than 2 million square kilometers.
SELECT Name AS Cuntry_name, SurfaceArea FROM country
WHERE SurfaceArea > 2000000;

#30.Retrieve the names of countries from the country table where the 
#life expectancy is greater than 75 years and the GNP per capita (GNP / Population) is less than $10,000.
SELECT Name Country_name,LifeExpectancy,GNP,Population FROM country
WHERE LifeExpectancy > 75 AND (GNP / Population) <10000;