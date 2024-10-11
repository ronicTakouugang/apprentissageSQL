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
