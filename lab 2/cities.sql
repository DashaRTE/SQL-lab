1
SELECT name, population
FROM cities
WHERE population >= 1000000;


2
SELECT name, region, population
FROM cities
WHERE region IN('E','W')
ORDER BY population DESC;


3
SELECT name, region, population
FROM cities
WHERE population >= 50000 AND region IN('E','W','N');


4
SELECT name, region, population
FROM cities
WHERE population >= 150000 AND population <= 350000 AND region IN ('E', 'W', 'N')
ORDER BY name ASC
LIMIT 20;


5
SELECT name, region, population
FROM cities
WHERE NOT region IN ('E', 'W', 'N')
ORDER BY population DESC
LIMIT 10 OFFSET 10;