-- Lesson1
-- 1
SELECT title FROM movies
-- 2
SELECT director FROM movies
-- 3
SELECT director,title FROM movies
-- 4
SELECT title,year FROM movies;
-- 5
SELECT * FROM movies;

-- Lesson2
-- 1
SELECT * FROM movies WHERE id="6";
-- 2
SELECT * FROM movies 
WHERE Year NOT BETWEEN 2000 AND 2010;
-- 3
SELECT * FROM movies 
WHERE Year BETWEEN 2000 AND 2010;
-- 4
SELECT id,title,year FROM movies 
WHERE id < 6

-- Lesson3
-- 1
SELECT * FROM movies
WHERE Title LIKE ("%Toy Story%")
-- 2
SELECT * FROM movies
WHERE Director LIKE ("John Lasseter")
-- 3
SELECT * FROM movies
WHERE Director NOT LIKE ("John Lasseter")
-- 4
SELECT * FROM movies
WHERE Title LIKE ("%WALL-%")

-- Lesson4
-- 1
SELECT DISTINCT director FROM movies
ORDER BY director ASC
-- 2
SELECT id,title,year
FROM movies
ORDER BY year DESC
-- limit 4 Vs code does not recognises this but the code is correct
-- 4
SELECT id,title
FROM movies
ORDER BY Title ASC
-- limit 5
-- 5 
SELECT id,title
FROM movies
ORDER BY Title ASC
-- limit 5 OFFSET 5

-- REVIEW LESSON 1
-- 1
SELECT City,Country, Population FROM north_american_cities
WHERE Country = "Canada";
-- 2
SELECT City,Country,Latitude
FROM north_american_cities
WHERE Country = "United States"
ORDER BY Latitude DESC;
-- 3
SELECT City,Longitude 
FROM north_american_cities
WHERE Longitude < -87.629798
ORDER BY Longitude ASC;
-- 4
SELECT City, Country, Population
FROM north_american_cities
WHERE country="Mexico"
ORDER BY Population DESC
-- LIMIT 2;
-- 5
SELECT City, Country, Population
FROM north_american_cities
WHERE Country = "United States"
ORDER BY Population DESC
-- LIMIT 2 OFFSET 2;

-- Lesson6
-- 1
SELECT title,domestic_sales, international_sales 
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id;
-- 2
SELECT title,domestic_sales, international_sales 
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
WHERE international_sales > domestic_sales;
-- 3
SELECT title,rating
FROM movies
INNER JOIN boxoffice
ON movies.id = boxoffice.movie_id
ORDER BY rating DESC;

-- LESSON7
-- 1
SELECT DISTINCT building
FROM employees; -- This was actually a trap😂
-- 2
SELECT * FROM Buildings;
-- 3
SELECT DISTINCT building_name, role 
FROM buildings 
LEFT JOIN employees
ON building_name = building;

-- LESSON8
-- 1
SELECT name,role 
FROM employees
WHERE employees.Building IS NULL;
-- 2
SELECT building_name,name 
FROM buildings
LEFT JOIN employees ON buildings.building_name = employees.building
WHERE Name iS NULL;

-- LESSON 9
-- 1
SELECT m.title, (b.domestic_sales + b.international_sales) / 1000000 AS combined_sales_millions
FROM movies m
JOIN boxoffice b ON m.id = b.movie_id;
-- 2
SELECT m.title, b.rating * 10 AS rating_percent
FROM movies m
INNER JOIN boxoffice b ON m.id = b.movie_id	;
-- 3
SELECT *
FROM movies
WHERE year % 2 = 0;

-- LESSON 10
-- 1
SELECT MAX(years_employed) AS longest_years_employed
FROM employees; 
-- 2
SELECT role, AVG(years_employed) AS average_years_employed
FROM employees
GROUP BY role;
-- 3
SELECT building, SUM(years_employed) AS total_years_worked
FROM employees
GROUP BY building;

-- LESSON 11
-- 1
SELECT COUNT(*) AS number_of_artists
FROM employees
WHERE role = 'Artist';
-- 2
SELECT role, COUNT(*) AS number_of_employees
FROM employees
GROUP BY role;
-- 3
SELECT SUM(years_employed) AS total_years_employed_by_engineers
FROM employees
WHERE role = 'Engineer';

-- LESSON 12
-- 1
SELECT director, COUNT(*) AS number_of_movies
FROM movies
GROUP BY director;
-- 2


