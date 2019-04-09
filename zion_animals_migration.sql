USE codeup_test_db;

DROP TABLE IF EXISTS albums;

-- sales — floating point value for number of records sold (in millions)

CREATE TABLE zion_animals(
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(255),
  name VARCHAR(255),
  release_date INT,
  sales DOUBLE,
  genre VARCHAR(255),
  PRIMARY KEY (id)
);