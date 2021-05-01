--Lab 7 WENTAO LU
--Q1
SELECT * FROM information_schema.columns WHERE table_name = 'city';
SELECT * FROM information_schema.columns WHERE table_name = 'country';

--Q2
/*CAN I USE FROM INSTEAD OF JOIN IF I HAVE THIS "WHERE" CLAUSE?*/
SELECT country.name AS "Country", city.name AS "City", city.population "Population"
FROM city, country WHERE code = countrycode;

--Q3
select * from city;
select * from country;

SELECT country.name AS "Country", city.name AS "City", city.population "Population"
FROM city INNER JOIN country
ON code = countrycode;

--Q4

SELECT country.name AS "Country", city.name AS "City", city.population "Population"
FROM city INNER JOIN country
ON code = countrycode WHERE country.name = 'Canada' AND city.population BETWEEN 200000 AND 300000;

--Q5
--整体不算难,只是结构稍微复杂一些.
SELECT country.name AS "Country", SUM(city.population) AS "People Living in Cities"
FROM city INNER JOIN country ON code = countrycode --这句话看作一个整体的表格就行了.
WHERE countrycode IN('ECU', 'HTI', 'FRA')--这里加一个country的限定条件.
GROUP BY country.name;--population全部按照countryname来group了,所以不会多算不会少算

--Q6

DROP VIEW IF EXISTS Avg_V;
CREATE VIEW Avg_V AS SELECT name, population FROM country
WHERE population < (SELECT AVG(population) FROM country)--这里要注意的是要括号内的写法.必须整个subquery写一遍才行
ORDER BY name DESC;

SELECT * FROM Avg_V;






