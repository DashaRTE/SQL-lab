1
SELECT name, population
FROM cities
ORDER BY population ASC
LIMIT 10 OFFSET 10;


2
SELECT name
FROM cities
ORDER BY name DESC
LIMIT 30;


3
SELECT name,region,population
FROM cities
ORDER BY region,population DESC;


4
SELECT DISTINCT region
FROM cities;


5
SELECT name, region
FROM cities
ORDER BY region DESC, name DESC;