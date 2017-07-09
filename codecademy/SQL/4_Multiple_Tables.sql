-- https://www.codecademy.com/learn/learn-sql

-- SQLITE

/*

Primary Key is a column that serves a unique identifier for row in the table.
Values in this column must be unique and cannot be NULL.
Foreign Key is a column that contains the primary key to another table in the database.
It is used to identify a particular row in the referenced table.
Joins are used in SQL to combine data from multiple tables.

INNER JOIN will combine rows from different tables if the join condition is true.

LEFT OUTER JOIN will return every row in the left table, and if the join condition is not met,
 NULL values are used to fill in the columns from the right table.

AS is a keyword in SQL that allows you to rename a column or table in the result set using an alias.

*/

CREATE TABLE artists(id INTEGER PRIMARY KEY, name TEXT);
/*
Using the CREATE TABLE statement we added a PRIMARY KEY to the id column.

A primary key serves as a unique identifier for each row or record in a given table.
The primary key is literally an id value for a record.
We're going to use this value to connect artists to the albums they have produced.

By specifying that the id column is the PRIMARY KEY, SQL makes sure that:

None of the values in this column are NULL
Each value in this column is unique
A table can not have more than one PRIMARY KEY column.
*/

SELECT * FROM artists;

/*

id	name
1	  The Beatles
2	  Elvis Presley
3	  Michael Jackson
4	  Madonna
5	  Elton John
6	  Led Zeppelin
7	  Pink Floyd

Database Schema

artists
id	   INTEGER
name	 TEXT

*/

SELECT * FROM albums;
SELECT * FROM artists;

/*
We've added data to the albums table for you. Take a look at both tables.

id	name	            artist_id	year
1	  A Hard Days Night	        1	1964
2	  Elvis Presley	            2	1956
3	  1989		                    2014
4	  Yellow Submarine	        1	1968
5	  Hey Jude	                1	1970
6	  Like a Virgin	            4	1984
7	  From Elvis in Memphis	    2	1969
8	  Bad	                      3	1987
9	  Elton John	              5	1970
10	Like a Prayer	            4	1989
11	The Dark Side of the Moon	7	1973
12	Thriller	                3	1982
13	Unorthodox Jukebox		      2012
14	The Wall	                7	1979

Database Schema

albums     14 rows
id	      INTEGER
name	    TEXT
artist_id	INTEGER
year	    INTEGER

*/

SELECT * FROM artists WHERE id=3;
/*
Query Results
id	name
3	  Michael Jackson
*/

SELECT * FROM albums WHERE artist_id = 3;
/*
id	name	    artist_id	year
8	  Bad	      3	        1987
12	Thriller	3	        1982
*/

/*
A foreign key is a column that contains the primary key of another table in the database.
We use foreign keys and primary keys to connect rows in two different tables.
One table's foreign key holds the value of another table's primary key.
Unlike primary keys, foreign keys do not need to be unique and can be NULL.

Here, artist_id is a foreign key in the albums table.
We can see that Michael Jackson has an id of 3 in the artists table.
All of the albums by Michael Jackson also have a 3 in the artist_id column in the albums table.

This is how SQL is linking data between the two tables.
The relationship between the artists table and the albums table is the id value of the artists.
*/

SELECT albums.name,albums.year,artists.name FROM albums,artists;
/*
Write a single query that combines data from both tables.

Query Results
name	            year	name
A Hard Days Night	1964	The Beatles
A Hard Days Night	1964	Elvis Presley
A Hard Days Night	1964	Michael Jackson
A Hard Days Night	1964	Madonna
A Hard Days Night	1964	Elton John
A Hard Days Night	1964	Led Zeppelin
A Hard Days Night	1964	Pink Floyd
Elvis Presley   	1956	The Beatles
Elvis Presley   	1956	Elvis Presley
Elvis Presley   	1956	Michael Jackson
Elvis Presley   	1956	Madonna
Elvis Presley   	1956	Elton John
Elvis Presley   	1956	Led Zeppelin
Elvis Presley   	1956	Pink Floyd
1989            	2014	The Beatles
1989	            2014	Elvis Presley
...
...
*/

SELECT * FROM albums JOIN artists ON albums.artist_id = artists.id;
 /*
 Combine the rows where the album was created by the artist.

 Query Results
id	name	                    artist_id	year	id  name
1 	A Hard Days Night	        1	        1964	1	The Beatles
2 	Elvis Presley	            2	        1956	2	Elvis Presley
4	  Yellow Submarine	        1	        1968	1	The Beatles
5	  Hey Jude	                1	        1970	1	The Beatles
6	  Like a Virgin	            4	        1984	4	Madonna
7	  From Elvis in Memphis	    2	        1969	2	Elvis Presley
8	  Bad	3	1987	              3	                Michael Jackson
9	  Elton John          	    5	        1970	5	Elton John
10	Like a Prayer	4	1989	    4	                Madonna
11	The Dark Side of the Moon	7	        1973	7	Pink Floyd
12	Thriller	                3	        1982	3	Michael Jackson
14	The Wall	                7	        1979	7	Pink Floyd
 */

 /*

SELECT * specifies the columns our result set will have.
Here, we want to include every column in both tables.

FROM albums specifies the first table we are querying.

JOIN artists ON specifies the type of join we are going to use as well as the name of the second table.
Here, we want to do an inner join and the second table we want to query is artists.
albums.artist_id = artists.id is the join condition that describes how the two tables are related to each other.
Here, SQL uses the foreign key column artist_id in the albums table to match it with exactly one row in the artists table with the same value in the id column.
We know it will only match one row in the artists table because id is the PRIMARY KEY of artists.

*/

SELECT * FROM albums LEFT JOIN artists ON albums.artist_id = artists.id;
/*
Not every album in our database has an artist. Let's write a join statement that includes these albums.

Query Results
id	name	            artist_id	year	id	name
1	  A Hard Days Night	1	        1964	1	The Beatles
2	  Elvis Presley	    2	        1956	2	Elvis Presley
3	  1989		                    2014
4	  Yellow Submarine	1	        1968	1	The Beatles
...
*/

/*
Outer joins also combine rows from two or more tables, but unlike inner joins,
 they do not require the join condition to be met.
Instead, every row in the left table is returned in the result set,
 and if the join condition is not met,
 then NULL values are used to fill in the columns from the right table.

The left table is simply the first table that appears in the statement.
Here, the left table is albums.
Likewise, the right table is the second table that appears.
Here, artists is the right table.
*/

SELECT
 albums.name AS 'Album',
 albums.year,
 artists.name AS 'Artist'
FROM
 albums
JOIN artists ON
 albums.artist_id = artists.id
WHERE
 albums.year > 1980;

 /*
 It can be confusing when two tables have a column with the same name.

 Query Results
Album	        year	Artist
Like a Virgin	1984	Madonna
Bad	          1987	Michael Jackson
Like a Prayer	1989	Madonna
Thriller	    1982	Michael Jackson
 */

 /*
 AS is a keyword in SQL that allows you to rename a column or table using an alias.
 The new name can be anything you want as long as you put it inside of single quotes.
 Here we want to rename the albums.name column as 'Album', and the artists.name column as 'Artist'.

It is important to note that the columns have not been renamed in either table.
The aliases only appear in the result set.
*/
