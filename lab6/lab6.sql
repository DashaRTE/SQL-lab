1.
SELECT cities.name, regions.name AS region_name
FROM cities, regions
WHERE cities.region = regions.uuid AND cities.population > 350000;

2.
SELECT cities.name
FROM cities
JOIN regions ON cities.region = regions.uuid
WHERE regions.name = 'Nord';

3.
CREATE TABLE stations (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  city_id int(10) unsigned NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE lines (
  id int(10) unsigned NOT NULL AUTO_INCREMENT,
  name varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  city_id int(10) unsigned NOT NULL,
  PRIMARY KEY (id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

CREATE TABLE station_lines (
  station_id int(10) unsigned NOT NULL,
  line_id int(10) unsigned NOT NULL,
  PRIMARY KEY (station_id, line_id)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;


INSERT INTO stations (name, city_id) VALUES
('Держпром', 1),
('Університет', 1),
('Майдан Конституції', 1),
('Історичний музей', 1),
('Спортивна', 1),
('Метробудівників', 1),
;

INSERT INTO lines (name, city_id) VALUES
('Зелена', 1),
('Червона', 1),
('Синя', 1),
;

INSERT INTO station_lines (station_id, line_id) VALUES
(1, 1),
(2, 3),
(3, 2),
(4, 3),
(5, 2), 
(6, 1),
;
