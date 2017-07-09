-- https://www.codecademy.com/learn/learn-sql

-- SQLITE

SELECT * FROM fake_apps;
/*
id	name	        category	        downloads	price
3	  siliconphase	Productivity	    17193   	0.0
6	  Donzolab	    Education       	4259	    0.99
10	Ittechi	      Reference       	3874	    0.0
13	Subdrill	    Education       	7132	    1.99
14	Anzoom	      Health & Fitness	6941	    14.99
21	kanity	      Health & Fitness	2299	    0.0
25	Zathcare	    Books           	16281	    2.99
30	Basecode	    Sports          	21203	    3.99
45	Hayholding	  Medical         	15845	    14.99
59	Sailflex	    Productivity	    21984	    0.99
60	waretam	      Catalogs	        31087	    2.99
62	Donelectrics	News	            6650	    1.99
81	sonelectrics	Entertainment	    9297	    1.99
89	Zoodom	      Food & Drink	    29619	    14.99
*/

SELECT COUNT(*) FROM fake_apps;
/*
-- Counts how many rows are in the table not=NULL
COUNT(*)
200
*/

SELECT COUNT(*) FROM fake_apps WHERE price = 0;
/*
-- Counts how many rows are in the table with price = 0
COUNT(*)
73
*/

SELECT price, COUNT(*) FROM fake_apps GROUP BY price;
/*
-- grouping by price
price	COUNT(*)
0.0	  73
0.99	43
1.99	42
2.99	21
3.99	9
14.99	12
*/

SELECT price , COUNT(*) FROM fake_apps WHERE downloads > 20000 GROUP BY price;
/*
price	COUNT(*)
0.0	  26
0.99	17
1.99	18
2.99	7
3.99	5
14.99	5
*/

SELECT SUM(downloads) FROM fake_apps;
/*
SUM(downloads)
3322760
*/
