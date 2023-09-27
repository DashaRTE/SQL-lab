1)
SELECT UPPER(name)
FROM cities
ORDER BY name
LIMIT 5;

2)
SELECT name, LENGTH(name) AS name_length
FROM cities
WHERE LENGTH(name) NOT IN (8, 9, 10)
ORDER BY LENGTH(name);

3)
SELECT region, SUM(population) AS sum_population
FROM cities
WHERE region IN ('C', 'S')
GROUP BY region;

4)
SELECT region, AVG(population) AS avg_population
FROM cities
WHERE region IN ('W')
GROUP BY region;

5)
SELECT region, COUNT(name) AS count_of_cities
FROM cities
WHERE region IN ('E');