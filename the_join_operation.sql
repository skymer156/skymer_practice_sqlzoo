SELECT matchid, player FROM goal WHERE teamid = 'GER';

SELECT id,stadium,team1,team2 FROM game where id = 1012;

SELECT player,teamid, stadium, mdate FROM game JOIN goal ON (id=matchid) where teamid = 'GER';

select team1, team2, player from game join goal on(id = matchid) where player LIKE 'Mario%';

SELECT player, teamid, coach, gtime FROM goal join eteam on teamid = id  WHERE gtime<=10;

SELECT mdate, teamname FROM game JOIN eteam ON (team1=eteam.id) where coach = 'Fernando Santos';

SELECT player FROM game JOIN goal ON matchid = id WHERE stadium = 'National Stadium, Warsaw';

SELECT distinct player FROM game JOIN goal ON matchid = id WHERE ((team1='GER' OR team2 = 'GER')  AND teamid<>'GER');

SELECT teamname, count(teamname) FROM eteam JOIN goal ON id=teamid GROUP BY teamname;

SELECT stadium, COUNT(stadium) FROM game JOIN goal ON id = matchid GROUP BY stadium ;

SELECT matchid, mdate, COUNT(matchid) FROM game JOIN goal ON matchid = id WHERE (team1 = 'POL' OR team2 = 'POL') GROUP BY matchid, mdate;

SELECT matchid, mdate, COUNT(mdate) FROM game JOIN goal on id = matchid WHERE teamid = 'GER' GROUP BY matchid, mdate;

-- mdateがある表を優先させたいのでLEFT JOINとする。
SELECT mdate, team1, SUM(CASE WHEN teamid=team1 THEN 1 ELSE 0 END) score1, team2, SUM(CASE WHEN teamid=team2 THEN 1 ELSE 0 END) score2 FROM game LEFT JOIN goal ON matchid = id GROUP BY team1, team2, mdate ORDER BY mdate, matchid;
