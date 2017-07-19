-- https://www.codecademy.com/learn/learn-sql

-- SQLITE

-- MANIPULATION

/*

SQL is a programming language designed to manipulate and manage data stored in relational databases.

A relational database is a database that organizes information into one or more tables.
A table is a collection of data organized into rows and columns.
A statement is a string of characters that the database recognizes as a valid command.

CREATE TABLE creates a new table.

INSERT INTO adds a new row to a table.

SELECT queries data from a table.

UPDATE edits a row in a table.

ALTER TABLE changes an existing table.

DELETE FROM deletes rows from a table.

*/

CREATE TABLE celebs (id INTEGER, name TEXT, age INTEGER);

INSERT INTO celebs (id, name, age) VALUES (1, 'Justin Bieber', 21);
INSERT INTO celebs (id, name, age) VALUES (2, 'Madonna', 51);
/*
INTEGER TEXT                INTEGER
id      name                age

1       Justin Bieber       21
2       Madonna             51
4       Taylor Swift        33
*/

ALTER TABLE celebs ADD twitter_handle TEXT;
/*
INTEGER TEXT                INTEGER     TEXT
id      name                age         twitter_handle

1       Justin Bieber       21          null
2       Madonna             51          null
4       Taylor Swift        33          null
*/

UPDATE celebs SET age = 25 WHERE id = 1;
/*
INTEGER TEXT                INTEGER     TEXT
id      name                age         twitter_handle

1       Justin Bieber       25          null
2       Madonna             51          null
4       Taylor Swift        33          null
*/

UPDATE celebs SET twitter_handle = '@taylorswift13' WHERE id = 4;
/*
INTEGER TEXT                INTEGER     TEXT
id      name                age         twitter_handle

1       Justin Bieber       25          null
2       Madonna             51          null
4       Taylor Swift        33          @taylorswift13
*/

SELECT name FROM celebs;
/*
TEXT                
name                
Justin Bieber       
Madonna             
Taylor Swift        
*/

SELECT * FROM celebs;
/*
INTEGER TEXT                INTEGER     TEXT
id      name                age         twitter_handle

1       Justin Bieber       25          null
2       Madonna             51          null
4       Taylor Swift        33          @taylorswift13
*/

DELETE FROM celebs WHERE twitter_handle IS NULL;
/*
INTEGER TEXT                INTEGER     TEXT
id      name                age         twitter_handle

4       Taylor Swift        33          @taylorswift13
*/
