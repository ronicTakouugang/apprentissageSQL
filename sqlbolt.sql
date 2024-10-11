-- Lesson 1

-- Exo1
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

-- Exo2
-- 1
SELECT * FROM movies WHERE id="6";
-- 2
SELECT * FROM movies 
WHERE Year NOT BETWEEN 2000 AND 2010;
-- 3
SELECT * FROM movies 
WHERE Year BETWEEN 2000 AND 2010;
--4
SELECT id,title,year FROM movies 
WHERE id < 6

-- Exo3
--1
SELECT * FROM movies
WHERE Title LIKE ("%Toy Story%")
--2
SELECT * FROM movies
WHERE Director LIKE ("John Lasseter")
--3
SELECT * FROM movies
WHERE Director NOT LIKE ("John Lasseter")
--4
SELECT * FROM movies
WHERE Title LIKE ("%WALL-%")

--Exo4
--1
SELECT DISTINCT director FROM movies
ORDER BY director ASC
--2
SELECT id,title,year
FROM movies
ORDER BY year DESC
-- limit 4 Vs code does not recognises this but the code is correct
-- 4
SELECT id,title
FROM movies
ORDER BY Title ASC
-- limit 5
--5
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
--3
SELECT City,Longitude 
FROM north_american_cities
WHERE Longitude < -87.629798
ORDER BY Longitude ASC;
--4
SELECT City, Country, Population
FROM north_american_cities
WHERE country="Mexico"
ORDER BY Population DESC
-- LIMIT 2;
--5
SELECT City, Country, Population
FROM north_american_cities
WHERE Country = "United States"
ORDER BY Population DESC
-- LIMIT 2 OFFSET 2;

