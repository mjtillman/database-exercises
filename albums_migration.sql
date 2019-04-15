USE codeup_test_db;

DROP TABLE IF EXISTS albums;

-- sales — floating point value for number of records sold (in millions)

CREATE TABLE albums (
  id INT UNSIGNED NOT NULL AUTO_INCREMENT,
  artist VARCHAR(255) NOT NULL,
  name VARCHAR(255) NOT NULL,
  release_date INT,
  sales DECIMAL(9, 5),
  genre VARCHAR(255),
  PRIMARY KEY (id)
);