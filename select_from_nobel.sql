SELECT yr, subject, winner FROM nobel WHERE yr = 1950;

SELECT winner FROM nobel WHERE yr = 1962 AND subject = 'Literature';

select yr, subject from nobel where winner = 'Albert Einstein';

select winner from nobel where yr >= 2000 and subject = 'Peace';

SELECT * FROM nobel where yr BETWEEN 1980 AND 1989 AND subject = 'Literature'; 

SELECT * FROM nobel WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

SELECT winner from nobel where winner LIKE'John%';

select * from nobel where yr = 1980 and subject = 'physics' or yr = 1984 and subject = 'chemistry';

select * from nobel where yr = 1980 and subject not in ('Chemistry' , 'Medicine');

select * from nobel where ( yr < 1910 and subject = 'Medicine') or ( yr >= 2004 and subject = 'Literature');

select * from nobel where winner = 'PETER GRÜNBERG';

select * from nobel where winner = 'EUGENE O\'NEILL';
'
select winner, yr, subject from nobel where winner like 'Sir%' order by yr desc, winner asc;


