--                                            ASSIGNMENT NO 5

USE WORLD;

#1.	Write a query to select the Name and Population columns from the city table.
SELECT Name,Population FROM city;

#2.	Write a query to select all columns from country table
SELECT * FROM Country;

#3.	Write a query to select the Name and Population columns from the city table, 
#and use aliases to rename them as CityName and CityPopulation.
SELECT Name AS CityName,Population AS CityPopulation FROM city;

#4.	Write a query to select all unique CountryCode values from the city table.
SELECT DISTINCT CountryCode FROM City;

#5.	Show all unique continents present in the world
SELECT DISTINCT Continent FROM Country;

#6.	Show all unique regions present in the world
SELECT DISTINCT Region FROM Country;

#11. Use alias for country table and write a query to fetch all name and population
SELECT c.name,c.population FROM Country AS c;

#12.Write a query to select the Name and calculate the population density (assuming the table has a SurfaceArea 
#column representing the area of the country in square kilometers) from the country table.
#Use an alias to name the population density as PopulationDensity.(country table)

SELECT Name,Population,SurfaceArea,Population/SurfaceArea as PopulationDensity
FROM Country;

#13.Write a query to select name,population ,rise or fall of gnp.(country table)
SELECT name,population,
CASE
	WHEN GNP>GNPOLD THEN 'RISE'
	WHEN GNP<GNPOLD THEN 'FALL'
    ELSE 'NO CHANGE'
END AS GNP_STATUS
FROM Country;

#14.Display the name, population, surface area, population density, population after a 15% rise,
#and new density for the increased population for each country.(country table)

SELECT 
	Name,
    population,
    surfacearea,
    population / surfacearea AS PopulationDensity,
    population* 1.15  AS PopulationAfterRise,
    (population* 1.15 )/surfacearea AS NewDensity
    FROM country;
    
#15.Write a Query to add two columns(population and LifeExpectancy) .(country table)
-- population and LifeExpectancy column already exist thats why we make some change
ALTER TABLE Country
ADD COLUMN Population1 INT,
ADD COLUMN LifeExpectancy1 Decimal(3,1);

DESC Country;

#16.Write a Query to display name,subtract five from LifeExpectancy (country table)
SELECT name,LifeExpectancy,LifeExpectancy-5 AS Adjusted_LifeExpectancy
FROM country;