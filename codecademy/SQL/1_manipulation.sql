-- https://www.codecademy.com/learn/learn-sql

-- SQLITE

-- MANIPULATION

CREATE TABLE celebs (id INTEGER, name TEXT, age INTEGER);

INSERT INTO celebs (id, name, age) VALUES (1, 'Justin Bieber', 21);
INSERT INTO celebs (id, name, age) VALUES (1, 'Madonna', 51);

ALTER TABLE celebs ADD twitter_handle TEXT;

UPDATE celebs SET age = 22 WHERE id = 1;
UPDATE celebs SET twitter_handle = '@taylorswift13' WHERE id = 4;

DELETE FROM celebs WHERE twitter_handle IS NULL;

SELECT name FROM celebs;
SELECT * FROM celebs;
