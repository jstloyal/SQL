-- Modify it to show the matchid and player name for all goals scored by Germany.
SELECT matchid, player FROM goal 
WHERE teamid = 'GER';

-- Show id, stadium, team1, team2 for just game 1012
SELECT id,stadium,team1,team2 FROM game
WHERE game.id = 1012;

SELECT player,teamid, stadium, mdate FROM game 
JOIN goal 
ON (game.id=goal.matchid)
WHERE teamid = 'GER';

-- Show the team1, team2 and player for every goal scored by a player called Mario
SELECT team1, team2, player FROM game
JOIN goal
ON (game.id = goal.matchid)
WHERE player LIKE 'Mario%';

-- Show player, teamid, coach, gtime for all goals scored in the first 10 minutes
SELECT player, teamid, coach, gtime FROM goal
JOIN eteam
ON (teamid = id)
WHERE gtime<=10;
