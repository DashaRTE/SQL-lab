1)
SELECT region, SUM(population)
FROM cities
GROUP BY region;

2)
SELECT region, SUM(population)
FROM cities
GROUP BY region
HAVING COUNT(name) >= 10;

3)
SELECT c.name AS city_name, c.population
FROM cities c
WHERE c.region IN (
    SELECT r.uuid
    FROM regions r
    WHERE r.area_quantity >= 5
)
ORDER BY c.population DESC
LIMIT 5 OFFSET 2;

4)
SELECT r.name AS region_name, 
(
    SELECT SUM(c.population)
    FROM cities c
    WHERE c.region = r.uuid AND c.population > 300000
) AS total_population
FROM regions r;

5)
SELECT c.name AS city_name, c.population
FROM cities c
WHERE c.region IN (
    SELECT r.uuid
    FROM regions r
    WHERE r.area_quantity <= 5
)
AND (c.population < 150000 OR c.population > 500000);