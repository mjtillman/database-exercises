use adlister;

INSERT INTO Users(name, pass)
VALUES ('Dwight', 'pass'),
       ('Arash', 'pass'),
       ('Mindy', 'macaroni');

SELECT *
FROM Users;

INSERT INTO Ads(title, descr, price)
VALUES ('Bike For Sale', '10-Speed mountain bike in good but used condition, no flat tires', 10.00),
  ('F-150 For Sale', 'Working truck, good A/C, only flipped five times, only cleansed in rain', 2000.00),
  ('BUY MY AWESOME CRIB', 'Overfeatured McMansion that will surely depreciate in value fast,', 80000),
   ('Marry my son!', 'Deadbeat son living in basement of my house needs to go! Perfect partner', 0),
  ('Sick kids need toys', 'Collecting toys in new condition to donate to children''s hospital ward', 0),
  ('Lawn Needs Mowing', 'Need someone to mow my lawn, will pay $40 flat fee', 40.00);

SELECT *
FROM Ads;

DELETE FROM Ads
WHERE id > 0;

INSERT INTO Categories(name)
VALUES ('Community'),
('Personal'),
('Housing'),
('Sale'),
('Jobs');

SELECT *
FROM Categories;


