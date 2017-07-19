-- https://www.codecademy.com/learn/learn-sql

-- SQLITE

/*

Aggregate functions combine multiple rows together to form a single value of more meaningful information.

COUNT takes the name of a column(s) as an argument and counts the number of rows where the value(s) is not NULL.

GROUP BY is a clause used with aggregate functions to combine data from one or more columns.

SUM() takes the column name as an argument and returns the sum of all the values in that column.

MAX() takes the column name as an argument and returns the largest value in that column.

MIN() takes the column name as an argument and returns the smallest value in that column.

AVG() takes a column name as an argument and returns the average value for that column.

ROUND() takes two arguments, a column name and the number of decimal places to round the values in that column.

*/

SELECT * FROM fake_apps;
/*
id	name	        category	        downloads	price
3	siliconphase	Productivity	    17193   	0.0
6	Donzolab	    Education       	4259	    0.99
10	Ittechi	        Reference       	3874	    0.0
13	Subdrill	    Education       	7132	    1.99
14	Anzoom	        Health & Fitness	6941	    14.99
21	kanity	        Health & Fitness	2299	    0.0
25	Zathcare	    Books           	16281	    2.99
30	Basecode	    Sports          	21203	    3.99
45	Hayholding	    Medical         	15845	    14.99
59	Sailflex	    Productivity	    21984	    0.99
60	waretam	        Catalogs	        31090	    2.99
62	Donelectrics	News	            6650	    1.99
81	sonelectrics	Entertainment	    9297	    1.99
89	Zoodom	        Food & Drink	    29619	    14.99
*/

SELECT COUNT(*) FROM fake_apps;
/*
Counts how many rows are in the table not=NULL

COUNT(*)
200
*/

SELECT COUNT(*) FROM fake_apps WHERE price = 0;
/*
Counts how many rows are in the table with price = 0

COUNT(*)
73
*/

SELECT price, COUNT(*) FROM fake_apps GROUP BY price;
/*
grouping by price

price	COUNT(*)
0.0	  73
0.99	43
1.99	42
2.99	21
3.99	9
14.99	12
...
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
...
*/

SELECT SUM(downloads) FROM fake_apps;
/*
SUM(downloads)
3322760
*/

SELECT category, SUM(downloads) FROM fake_apps GROUP BY category;
/*
Calculate the total number of downloads for each category.

category	SUM(downloads)
Books	    160864
Business	178726
Catalogs	186158
Education	184724
Finance	  178163
Games	    256083
Lifestyle	166832
Medical	  77191
Music	    59367
...
*/

SELECT MAX(downloads) FROM fake_apps;
/*
How many downloads does the most popular app have?
MAX(downloads)
31090
*/

SELECT name, category, MAX(downloads) FROM fake_apps GROUP BY category;
/*
Return the names of the most downloaded apps in each category.

name	    category	    MAX(downloads)
Mathzoom	Books	        30862
subzim	  Business	    30269
waretam	  Catalogs	    31087
Solotrax	Education	    28916
Fax-it	  Entertainment	28699
Newlam	  Finance	      30605
Ladex	    Food & Drink	30789
...
*/

SELECT MIN(downloads) FROM fake_apps;
/*
What is the least number of times an app has been downloaded?

MIN(downloads)
1387
*/

SELECT name, category, MIN(downloads) FROM fake_apps GROUP BY category;
/*
Return the names of the apps that have been downloaded the least number of times in each category.

name	      category	MIN(downloads)
Toughlab	  Books   	1731
yearfix  	  Business	4587
Anstreet	  Catalogs	4937
Lamsoncode	Education	3910
...
*/

SELECT AVG(downloads) FROM fake_apps;
/*
Calculate the average number of downloads for an app in the database.

AVG(downloads)
16613.8
...
*/

SELECT price, AVG(downloads) FROM fake_apps GROUP BY price;
/*
Calculate the average number of downloads at each price.

price	 AVG(downloads)
0.0	   15762.2602739726
0.99	 15971.511627907
1.99	 16952.5952380952
2.99	 17725.380952381
...
*/

SELECT price, ROUND(AVG(downloads),2) FROM fake_apps GROUP BY price;
/*
Make the result set more readable by rounding the average number of downloads to two decimal places for each price.

price	ROUND(AVG(downloads),2)
0.0	15762.26
0.99	15971.51
1.99	16952.6
2.99	17725.38
3.99	18741.67
14.99	19368.58
...
*/

SELECT price, ROUND(AVG(downloads)) FROM fake_apps GROUP BY price;
/*
Round the average number of downloads to the nearest integer for each price. In the code editor type:

price	ROUND(AVG(downloads))
0.0 	15762.0
0.99	15972.0
1.99	16953.0
2.99	17725.0
...
*/
