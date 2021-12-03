SELECT id, title FROM movie WHERE yr=1962;

SELECT yr FROM movie WHERE title = 'Citizen Kane';

select id, title, yr from movie where title LIKE 'Star Trek%' order by yr;

select id from actor where name = 'Glenn Close';

select id from movie where title = 'Casablanca';

SELECT actor.name FROM movie JOIN casting ON movie.id=movieid JOIN actor ON actorid=actor.id WHERE movieid=11768;

SELECT actor.name FROM movie JOIN casting ON movie.id=movieid JOIN actor  ON actorid=actor.id WHERE title='Alien';

SELECT title FROM movie JOIN casting ON movie.id=movieid JOIN actor ON actorid=actor.id WHERE actor.name ='Harrison Ford';

SELECT title FROM movie JOIN casting ON movie.id=movieid JOIN actor ON actorid=actor.id WHERE actor.name ='Harrison Ford' and ord <> 1;

SELECT title, name FROM movie JOIN casting ON movie.id=movieid JOIN actor ON actorid=actor.id WHERE yr =1962 and ord = 1;


