SELECT name FROM world WHERE population > (SELECT population FROM world WHERE name='Russia')

select name from world where (gdp/population) > (select gdp/population from world where name = 'United Kingdom') and continent = 'Europe';

select name, continent from world where continent in ( select continent from world where name in ('Argentina', 'Australia') ) order by name ;

select name, population from world where population > ( select population from world where name = 'Canada' )  and population < ( select population from world where name = 'Poland' );

select name, concat(round(population/(select population from world where name = 'Germany') * 100, 0), '%') from world where continent = 'Europe';

select name from world where gdp > ALL( select gdp from world where continent = 'Europe' and gdp > 0 );

SELECT continent, name, area FROM world x WHERE area >= ALL (SELECT area FROM world y WHERE y.continent=x.continent);

select continent, name from world x where name <= all( select name from world y where x.continent = y.continent);

select name, continent, population from world x where 25000000 >= all( select population from world y where x.continent = y.continent );

select name, continent from world x where x.population > all( select population * 3 from world y where x.continent = y.continent and x.name <> y.name );
