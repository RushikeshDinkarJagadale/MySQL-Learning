--                                      ASSIGNMENT 6

USE WORLD;

#8.Retrieve all records from the country table for countries in Asia.
SELECT * FROM country
WHERE continent='ASIA';

#9.Retrieve the name, population, and region from the country table for countries in Western Europe
SELECT Name,population,region FROM country
WHERE Region='Western Europe';

#10.	Retrieve the name, continent,and population from the country table 
#where population is greater than or equal to 10 million.
SELECT name, continent, population FROM country
WHERE population>=10000000;

#11.	Retrieve all records from the country table where life expectancy is greater than or equal to 80.
SELECT * FROM country
WHERE LifeExpectancy >= 80;

#12.Retrieve all records from the country table excluding countries in Africa.
SELECT * FROM country
WHERE Continent <> 'Africa';

#13.Display the name and population of India from the country table.
SELECT name,population FROM country
WHERE name ='INDIA';

#14.Display countries from the country table that gained independence after 1945.
SELECT Name,IndepYear FROM country
WHERE IndepYear > 1945;

#15.Retrieve the capital of Brazil from the country table.
SELECT Name,Capital FROM country
Where Name='Brazil';

#16.Fetch official languages from the countrylanguage table where the language is marked as official.
SELECT Language AS Official_Lang FROM countrylanguage
WHERE IsOfficial='T';

#17.Retrieve records from the country table 
#where the continent is Asia and life expectancy is greater than or equal to 70.
SELECT * FROM country
WHERE Continent ='Asia' AND LifeExpectancy >= 70;

#18.Fetch records of Asian countries from the country table 
#where population is greater than 10 million and life expectancy is greater than or equal to 70.
SELECT * FROM country
WHERE Continent ='ASIA' 
	AND Population>100000000 
	AND LifeExpectancy>=70;

#19.Retrieve records from the country table where life expectancy is between 70 and 80
SELECT * FROM country
WHERE LifeExpectancy BETWEEN 70 AND 80;

#20.Fetch records from the country table for Brazil, India, and Bangladesh
SELECT * FROM country
WHERE Name IN('Brazil','India','Bangladesh');

#21.Retrieve records from the country table for countries in Asia 
#where life expectancy is greater than 70 or population is greater than 10 million.
SELECT * FROM country
WHERE Continent='Asia'
AND (LifeExpectancy > 70 OR Population>10000000);

#22.Fetch records from the country table excluding countries in Asia.
SELECT * FROM country
WHERE Continent <> 'Asia';

#23.Retrieve records from the country table where life expectancy is not between 70 and 80.
SELECT * FROM country
WHERE LifeExpectancy NOT BETWEEN 70 AND 80;

#24.Display countries from the country table where the name starts with 'T'.
SELECT * FROM country
WHERE Name LIKE 'T%';

#25.Fetch records from the country table where the name ends with 'I'.
SELECT * FROM country
WHERE Name LIKE '%I';

#26.Retrieve countries from the country table where the name contains 'stan'.
SELECT * FROM country
WHERE Name LIKE '%stan%';

#27.Fetch records from the country table where the name starts with 'A' and ends with 'R'
SELECT * FROM country
WHERE Name LIKE 'A%R';

#28.Retrieve all cities from the city table where the population is greater than 5 million.
SELECT * FROM City
WHERE Population > 5000000;

#29.Fetch countries from the country table where the surface area is less than 100,000 square kilometers.
SELECT * FROM country
WHERE SurfaceArea < 100000;

#30.Display countries from the country table where the government form is a constitutional monarchy.
SELECT * FROM country
WHERE GovernmentForm = 'constitutional monarchy';

#31.Retrieve all cities from the city table where the country code is 'USA' 
#and the population is greater than 1 million.
SELECT * FROM City
WHERE CountryCode='USA' AND population > 1000000;

#32.Fetch languages from the countrylanguage table where the percentage of speakers is greater than 50%.
SELECT * FROM countrylanguage
WHERE Percentage > 50;

#33.Display countries from the country table where the life expectancy is between 75 and 80 years.
SELECT * FROM country
WHERE LifeExpectancy BETWEEN 75 AND 80;

#34.	Retrieve all cities from the city table 
#where the district is 'California' and the population is greater than 500,000.
SELECT * FROM city
WHERE District='California' AND Population > 500000;

#35.Fetch countries from the country table where the region is either 'Middle East' or 'South America'.
SELECT * FROM country
WHERE Region IN ('Middle East','South America');

#36.Display countries from the country table where the local name contains the word 'Kingdom'.
SELECT * FROM country
WHERE LocalName LIKE '%Kingdom%';

#37.Retrieve cities from the city table where the name starts with 'S' and ends with 'o'.
SELECT * FROM City
WHERE Name LIKE 'S%o';

#38.Retrieve countries from the country table 
#where the population density (population divided by surface area) is greater than 500.
SELECT Name, population, SurfaceArea, (Population/SurfaceArea) AS population_density FROM country
WHERE (Population/SurfaceArea) > 500;

#39.Fetch cities from the city table 
#where the population is greater than the average population of all cities in the table.
SELECT*FROM city;
SELECT name City_name,population AVG_Pop FROM City
WHERE population > (SELECT AVG(population)
FROM City);

#40.Display countries from the country table where the total surface area 
#of the country is at least twice the average surface area of all countries.
SELECT Name,SurfaceArea FROM country
WHERE SurfaceArea >= 2*(
SELECT avg(SurfaceArea)
FROM country
);

-- -------------------------------------------------------------------------------------------------------
#41.Retrieve countries from the country table 
#where English is an official language and the percentage of English speakers is greater than 10%.
-- SELECT
-- -------------------------------------------------------------------------------------------------------


#42.Fetch cities from the city table 
#where the name starts with 'San' followed by exactly three characters.
SELECT * FROM city
WHERE Name LIKE 'San___';


-- ------------------------------------------------------------------------------------------------------
#43.Display countries from the country table where the capital city's 
#population is greater than the country's average population.
-- SELECT Name AS Country_NAme FROM country
-- -------------------------------------------------------------------------------------------------------


#44.Retrieve countries from the country table where the number of official languages is more than 3.
SELECT c.name as CountryName,Count(c1.language) AS num_of_Official_lang
FROM country c
JOIN countrylanguage c1 on c.code = c1.CountryCode
WHERE c1.IsOfficial='T'
group by c.code,c.name
HAVING count(c1.Language)>3;

#45.Fetch cities from the city table 
#where the country code is 'GBR' or 'USA' and the population is greater than 2 million.
SELECT Name,CountryCode,population FROM city
WHERE (Countrycode='GBR' OR CountryCode='USA') AND Population >2000000;

#46.Display countries from the country table 
#where the government form includes the word 'Republic' and the life expectancy is greater than 75 years.
SELECT Name,GovernmentForm,LifeExpectancy FROM country
WHERE GovernmentForm = 'Republic' AND LifeExpectancy > 75;

#47.Retrieve cities from the city table where the name consists of exactly six characters.
SELECT * FROM city
WHERE name like'______';

SELECT * From city
WHERE length(name) = 6;