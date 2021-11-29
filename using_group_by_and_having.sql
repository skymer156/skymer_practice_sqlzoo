SELECT continent, COUNT(name) FROM world GROUP BY continent;

SELECT continent, SUM(population) FROM world GROUP BY continent;

SELECT continent, COUNT(name) FROM world WHERE population > 200000000 GROUP BY continent;

SELECT continent, SUM(population) FROM world GROUP BY continent HAVING SUM(population)>500000000;

select continent, count(name) from world group by continent;


