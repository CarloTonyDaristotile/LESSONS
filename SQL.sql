// MANIPULATION

CREATE TABLE celebs (id INTEGER, name TEXT, age INTEGER);

INSERT INTO celebs (id, name, age) VALUES (1, 'Justin Bieber', 21);
INSERT INTO celebs (id, name, age) VALUES (1, 'Madonna', 51);

ALTER TABLE celebs ADD COLUMN twitter_handle TEXT;

UPDATE celebs SET age = 22 WHERE id = 1;
UPDATE celebs SET twitter_handle = '@taylorswift13' WHERE id = 4;

DELETE FROM celebs WHERE twitter_handle IS NULL;

SELECT name FROM celebs;
SELECT * FROM celebs;

// QUERIES

SELECT name, imdb_rating FROM movies;

SELECT DISTINCT genre FROM movies;

SELECT * FROM movies WHERE imdb_rating > 8;

SELECT * FROM movies WHERE name LIKE 'Se_en';

SELECT * FROM movies WHERE name LIKE 'a%';
