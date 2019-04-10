USE codeup_test_db;

SELECT * from albums \G;

UPDATE albums
SET sales = (sales * 10);

SELECT * from albums \G;

--

SELECT * FROM albums WHERE release_date < 1980 \G;

UPDATE albums
SET release_date < 1980 = release_date - 50;

SELECT * FROM albums WHERE release_date < 1980 \G;

--

SELECT * FROM albums WHERE artist = 'Michael Jackson';

UPDATE albums
SET name = "Peter Jackson";

SELECT * FROM albums WHERE artist = 'Michael Jackson';
