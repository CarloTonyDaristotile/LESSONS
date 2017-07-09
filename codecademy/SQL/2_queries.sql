-- https://www.codecademy.com/learn/learn-sql

-- SQLITE

-- QUERIES

SELECT name, imdb_rating FROM movies;

SELECT DISTINCT genre FROM movies;

SELECT * FROM movies WHERE imdb_rating > 8;

SELECT * FROM movies WHERE name LIKE 'Se_en';

SELECT * FROM movies WHERE name LIKE 'a%';
/*
-- not case sensitive
-- as long as starts with a

id	name	                  genre	  year	imdb_rating
1	  Avatar	                action	2009	7.9
7	  Avengers: Age of Ultron	action	2015	7.9
16	American Sniper	        action	2014	7.4
*/

SELECT * FROM movies WHERE name LIKE '%man%';
/*
-- not case sensitive
-- as long contains "man"

id	 name	        genre 	year	imdb_rating
10	 Iron Man 3	  action	2013	7.3
11	 Spider-Man	  action	2002	7.3
14	 Spider-Man 2	action	2004	7.3
*/

SELECT * FROM movies WHERE name BETWEEN 'A' AND 'J';
/*
-- INCLUDES 'A'
-- NOT INCLUDING 'J'

id	name	            genre	  year	imdb_rating
211	A Beautiful Mind	drama	  2001	8.2
209	Air Force One	    drama	  1997	6.4
21	Iron Man	        action	2008	7.9
23	Iron Man 2	      action	2010	7.1
10	Iron Man 3	      action	2013	7.3
*/

SELECT * FROM movies WHERE year BETWEEN 1990 AND 2000;
/*
-- INCLUDES 1990
-- INCLUDES 2000

id	name	            genre	  year	imdb_rating
27	Independence Day	action	2000	6.9
42	Twister	          action	1996	6.3
61	Home Alone	      comedy	1990	7.4
*/

SELECT * FROM movies WHERE year BETWEEN 1990 AND 2000 AND genre = 'comedy';
/*
-- AND statements must be true to add to the row to the query

id	name	           genre	year	imdb_rating
61	Home Alone	     comedy	1990	7.4
69	Men in Black	   comedy	2000	7.2
70	Toy Story 2	     comedy	1999	7.9
80	Mrs. Doubtfire	 comedy	1993	6.9
82	Aladdin	         comedy	1992	8.0
*/

SELECT * FROM movies WHERE genre = 'comedy' OR year < 1980;
/*
-- OR either statement must be true to add to the row to the query

id	name	  genre	  year	imdb_rating
6	Star Wars	action	1977	8.7
51	Shrek 2	comedy	2004	7.2
*/

SELECT * FROM movies ORDER BY imdb_rating DESC;
/*
-- ORDER BY = put in order
-- DESC = descending

id	name	        genre	  year	imdb_rating
4	The Dark Knight	action	2008	9.0
30	Inception	    action	2010	8.8
201	Interstellar	drama	  2014	8.7
56	Inside Out	  comedy	2015	8.6
202	Gladiator	    drama	  2000	8.5
52	Toy Story 3	  comedy	2010	8.4
*/

SELECT * FROM movies ORDER BY imdb_rating ASC LIMIT 3;
/*
-- ASC = ascending
-- LIMIT = set limit to result

id	name	                                  genre	  year	imdb_rating
171	Fifty Shades of Grey	                  romance	2015	4.2
79	Alvin and the Chipmunks: The Squeakquel	comedy	2009	4.4
143	Anaconda	                              horror	1997	4.6
*/

SELECT * FROM movies ORDER BY imdb_rating DESC LIMIT 3;
/*
id	name	                                          genre	  year	imdb_rating
4	The Dark Knight	                                  action	2008	9.0
30	Inception	                                      action	2010	8.8
32	Star Wars: Episode V - The Empire Strikes Back	action	1980	8.8
*/
