-- ASSIGNMENT NO 8

USE world;

#24.	What is the total population of the world?
SELECT sum(population) Total_population
FROM country;
-- total population of the world is 6078749450

#25.	What is the total surface area of the world?
SELECT sum(surfacearea) total_surface_area
FROM country;
-- total surface area of the world is 148956306.90

#26.	What is the total population of the Asia continent?
SELECT SUM(population) as totalAsiaPopulation
FROM country
WHERE continent='asia';
-- the total population of the Asia continent is 3705025700

#27.	What is the world's population density?
SELECT sum(population) / sum(surfacearea) WorldPopulationDensity
FROM country;
-- world's population density is 40.8089

#28.	What is the average life expectancy of the world?
SELECT avg(LifeExpectancy) Avg_LifeExpectancy
FROM country;
-- average life expectancy of the world is 66.48604

#29.	What is the minimum life expectancy in the world, and which country has this life expectancy?
SELECT name,LifeExpectancy
FROM country
WHERE LifeExpectancy =(SELECT min(LifeExpectancy) FROM country);
-- min lifeexpectancy is 37.2 and country is zambia

#30.   What is the maximum population of a country in the world, and which country has this population?
SELECT name,population
FROM country
WHERE population =(SELECT max(population) FROM country);
-- China max population 1277558000

#31.	Display the name, population, surface area, population density, population after a 15% rise, 
#       and new density for the increased population for each country.

SELECT name,
	   population,
       surfacearea,
       (population/surfacearea) PopulationDensity,
       (population*1.15) PopulationAfterRise,
       (population*1.15)/surfacearea as NewPopulationDensity
FROM country;

#32.	Display the total number of countries in the world?
SELECT count(*) totalcountries
FROM country;

#33.	Display the total number of continents.
SELECT count(continent) totalcontinent
FROM country;

SELECT DISTINCT continent
FROM country;

#34.	Display the number of countries in Asia.
SELECT Count(*)
FROM country
WHERE continent='ASIA';

SELECT DISTINCT name
FROM country
WHERE continent='ASIA';

#35.	Display the number of cities in the world.
SELECT count(*)
from city;

SELECT DISTINCT name
FROM city;

SELECT * FROM city;

#36.	Display the number of cities in India.
SELECT count(*) NumberOfCities
FROM city
WHERE countrycode='IND';

SELECT * FROM city;

#37.	Display the number of cities in Asia.
SELECT distinct name
FROM city
WHERE countrycode IN('AFG',
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

#38.	Calculate the power of 2 raised to 3.
SELECT POW(2,3);
-- result 8 

#39.	Display the name and square of the ID for each city.
SELECT name, pow(ID,2) Sqare_ID
FROM city;

#40.	Calculate the square root of 16.
SELECT SQRT(16) SquareRootOf16;
-- Square root of 16 is 4

#41.	Display the name and square root of life expectancy for each country.
SELECT name,sqrt(LifeExpectancy) sqrtoflifeexp
FROM country;

#42.	Calculate the exponential value of 2.
SELECT exp(2) ExponentialValueOf2;

#43.	Display the natural logarithm of 1
SELECT LN(1) NaturalLogarithm;

#44.	Display the name and logarithm of the ID for each city.
SELECT name,ln(ID) ID_Logarithm
FROM city;

#45.	Round the number 4.5.
SELECT round(4.5) rounded_value;

#46.	Display the life expectancy and its rounded value for each country.
SELECT name,LifeExpectancy,round(LifeExpectancy) rounded_lifeExp
FROM country;

#47.	Round the number 4.867 to 2 decimal places
SELECT round(4.867,2) rounded_value;

#48.	Find the ceiling value of 4.4.
SELECT ceil(4.4) AS ceiling_value;

#49.	Find the floor value of 4.8.
SELECT FLOOR(4.8) floor_value;

#50.	Find the absolute value of -4.
SELECT ABS(-4) absolute_value;

#51.	Display the value of pi for each country.
SELECT name,PI() pi_value
FROM country;

#52.	Calculate the sine of 0.
SELECT sin(0);

#53.	Calculate the cosine of 0.
SELECT cos(0) cosine_value;

#54.	Convert 30 degrees to radians.
SELECT 30*(pi()/180) radians;

#55.	Convert 0.52 radians to degrees.
SELECT 0.52*(180/pi()) degrees;

#56.	Display the name, upper case, and lower case of the name for each country.
SELECT name,
		upper(name) UpperCase ,
        lower(name) LowerCase
FROM country;

#57.	Display the first 3 characters, last 2 characters, 
#		and characters from the 4th to the 5th position of the name for each country.
SELECT name,
		substring(name,1,3) First3Char,
        substring(name,-2) Last2Char,
        substring(name,4,2) 4th_5th_Char
FROM country;

#58.	Display the last 2 digits of the population for each country.
SELECT name,population,
	 substring(cast(population AS CHAR),-2) last_2_digit
FROM country;

#59.	Replace the letter 'A' with 'D' in the name of each country.
SELECT NAME,
		REPLACE(name,'A','D') Replace_A_TO_D
FROM country;

#60.	Replace the digit 3 with 4 in the population of each country.
SELECT name,population,
		replace(population,'3','4')
FROM country;

#61.	Display the length of the name and population for each country.
SELECT name,
		char_length(name) LenthOfName,
        population,
        char_length(cast(population AS CHAR) ) LengthOfPopulation
FROM country;

#62.	Display the ASCII value of the character 'A'.
SELECT ascii('A');

#63.	Display the ASCII value of the character 'a'.
SELECT ascii('a');

#64.	Display the ASCII value of a space character.
SELECT ascii(' ');

#65.	Display the ASCII value of the character '1'.
SELECT ascii('1');

#66.	Concatenate the strings 'abc', ' ', and 'xyz'.
SELECT concat('ABC',' ','xyz') concanated_string;

#67.	Concatenate the name, population, 
#		and continent of each country using '-' as a separator.
SELECT concat_ws('-',name,population,continent) concatenated_result
FROM country;

#68.	Display the reverse of the name for each country.
SELECT name,reverse(name)
FROM country;

#69.	What is the result of converting the string '2024-07-15' to 
#a date using the STR_TO_DATE() function with the format %Y-%m-%d?
SELECT str_to_date('2024-07-15','%Y-%m-%d') result;

#70.	Extract the year from the date '2024-07-15' using the YEAR() function.
SELECT year('2024-07-15')YEAR_extracted;

#71.	What is the current date according to the CURDATE() function?
SELECT curdate() currentdate;

#72.	Add 10 days to the current date using the DATE_ADD() function.
SELECT adddate(curdate(), INTERVAL 10 DAY) newdate;

#73.	Subtract 2 months from the date '2024-07-15' using the DATE_SUB() function.
SELECT date_sub('2024-07-15',INTERVAL 2 MONTH) NewDate;

#74.	Find the position of the substring 'World' in the string 
#		'Hello World' using the POSITION() function.
SELECT position('World' IN 'Hello World') substrin_position;

#75.	Extract the substring starting at position 4 of length 3 
#		from the string 'MySQL Database' using the SUBSTRING() function.
SELECT SUBSTRING('MySQL Database', 4, 3) AS extracted_substring;

#76.	Replace all occurrences of the letter 'e' with 'i' in the 
#		string 'Welcome to MySQL' using the REPLACE() function.
SELECT replace('Welcome to MySQL','e','i') e_to_i;

#77.	Concatenate the strings 'My', 'SQL', 'Database' with a space 
#		separator using the CONCAT_WS() function.
SELECT CONCAT_WS(' ','My','SQL','Database')result;

#78.	Convert the string ' MySQL ' to 'MySQL' by removing leading and 
#		trailing spaces using the TRIM() function.
SELECT trim(' MySQL ') trimmed_string;

#79.	Which country has the highest surface area in the world?
SELECT name,surfacearea
FROM country
order by surfacearea DESC
limit 1;

#80.	How can you extract the year from a date column in SQL?
SELECT YEAR(DateColumn) Year_Extracted
FROM table_name;

#81.	How can you extract the month from a date column in SQL?
SELECT month(date_column) month_extracted
FROM table_name;

#82.	How can you extract the quarter from a date column in SQL?
SELECT quarter(date_column) quarter_extracted
FROM table_name;

#83.	How can you filter data for a specific year in SQL?
SELECT *
FROM table_name
WHERE YEAR(date_column)=2024;

#		84.	How can you format a date to display only the month and year?
SELECT DATE_FORMAT(DateColumn,'%Y-%m') formatted_date
FROM table_name;

#85.	How can you determine the last day of a specific month?
SELECT LAST_DAY('2024-09-13') last_day;
