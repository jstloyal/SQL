SELECT yr, subject, winner FROM nobel
WHERE yr = 1950;

SELECT winner FROM nobel
WHERE yr = 1962 AND subject = 'Literature';

SELECT yr, subject FROM nobel
WHERE winner = 'Albert Einstein';

SELECT winner FROM nobel
WHERE subject =  'Peace' AND yr BETWEEN 2000 AND 2015;

SELECT * FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;

SELECT * FROM nobel
WHERE winner IN ('Theodore Roosevelt', 'Woodrow Wilson', 'Jimmy Carter', 'Barack Obama');

SELECT winner FROM nobel
WHERE winner LIKE 'John%';

SELECT * FROM nobel
WHERE subject = 'Physics' AND yr = 1980 OR subject = 'Chemistry' AND yr = 1984;

-- Show the year, subject, and name of winners for 1980 excluding Chemistry and Medicine
SELECT * FROM nobel
WHERE yr = 1980 AND subject <> 'Chemistry' AND subject <> 'Medicine';

-- Show year, subject, and name of people who won a 'Medicine' prize in an early year (before 1910, not including 1910) 
-- together with winners of a 'Literature' prize in a later year (after 2004, including 2004)
SELECT * FROM nobel
WHERE (yr < 1910 AND subject = 'Medicine') OR (subject = 'Literature' AND yr >= 2004);

-- Find all details of the prize won by PETER GRÜNBERG
SELECT * FROM nobel
WHERE winner = 'PETER GRÜNBERG';

-- Find all details of the prize won by EUGENE O'NEILL
SELECT * FROM nobel
WHERE winner = 'EUGENE O''NEILL';

-- List the winners, year and subject where the winner starts with Sir. Show the the most recent first, then by name order.
SELECT winner, yr, subject FROM nobel
WHERE winner LIKE 'Sir%' ORDER BY yr DESC, winner;