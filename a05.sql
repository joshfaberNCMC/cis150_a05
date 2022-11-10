--Problem 1

INSERT INTO Movie (id, name, year, rating, runtime, genre, earnings_rank)
VALUES ('4846340', 'Hidden Figures', 2016, 'PG', 127, 'BDH', NULL);

SELECT * FROM Movie WHERE name='Hidden Figures'; -- Used to view row in order to confirm entry

SELECT * FROM Person WHERE name IN ('Taraji P. Henson', 'Janelle Monae', 'Octavia Spencer'); --Used to find the actor_id of actresses 

INSERT INTO Actor (actor_id, movie_id)
VALUES ('0378245', '4846340'), ('0818055','4846340'), ('1847117', '4846340');

SELECT * FROM Actor WHERE movie_id='4846340'; --Used to view rows in order to confirm entry 

--Problem 2

SELECT earnings_rank, rating, runtime FROM Movie WHERE name='Incredibles 2';

--Problem 3

SELECT name, dob, pob FROM Person WHERE name IN ('Lady Gaga', 'Melissa McCarthy');

--Problem 4

SELECT name, rating, year FROM Movie WHERE rating='G' AND year>=2010 ORDER BY year;

--Problem 5

SELECT avg(earnings_rank) AS "Average Earnings Rank" FROM Movie WHERE rating='G';

--Problem 6

SELECT year, count(type) AS "Total Oscars" FROM Oscar GROUP BY year HAVING "Total Oscars"<>6;

--Problem 7

SELECT name, runtime FROM Movie WHERE name LIKE 'Star Wars%' ORDER BY runtime ASC LIMIT 1; --I admit that there is likely a better way to do this, but I found that this works just fine