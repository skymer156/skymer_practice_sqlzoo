SELECT name, continent, population FROM world;
SELECT name FROM world WHERE population > 200000000;
select name, (gdp/population) from world where population > 200000000;
select name, (population/1000000) from world where continent = 'South America';
select name, population from world where name in ('France', 'Germany', 'Italy');
SELECT name FROM world WHERE name LIKE '%United%';
SELECT name, population, area FROM world WHERE area >= 3000000 OR population >= 250000000;
SELECT name, population, area FROM world WHERE area >= 3000000 XOR population >= 250000000;
SELECT name, ROUND(population/1000000, 2), ROUND(gdp/1000000000, 2) FROM world WHERE continent = 'South America';
