SELECT SUM(population), SUM(gdp) FROM bbc WHERE region = 'Europe';

SELECT AVG(population), AVG(gdp) FROM bbc WHERE region = 'Europe';

SELECT MAX(population), MAX(gdp) FROM bbc WHERE region = 'Europe';

SELECT COUNT(population), COUNT(gdp) FROM bbc WHERE region = 'Europe';

SELECT distinct region FROM bbc;

SELECT name, population FROM bbc WHERE population > 100000000  ORDER BY population DESC;

SELECT name, population FROM bbc WHERE population > 100000000  ORDER BY population ASC;

