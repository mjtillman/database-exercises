use adlister;

-- For a given ad, what is the email address of the user that created it?

-- Option 1:
SELECT name
FROM users IN (
SELECT title
FROM Ads
WHERE title = ""
);

SELECT title
FROM Ads
WHERE title LIKE '%a%';





-- Option 2:
SELECT email
FROM users
WHERE id IN (
  SELECT id
  FROM ads
  WHERE id = the ad we want
);

-- Option 3:
select email
from users u
join ads on u.id = Ads.user_id

-------------------------------------------------------------------------
-- For a given ad, what category, or categories, does it belong to?

SELECT category
FROM categories
JOIN ad_cat ON ad.ad_id = ad_cat.ad_id
JOIN categories ON ad_cat.cat_id = categories.id
WHERE ad_id = 3;

-- For a given category, show all the ads that are in that category.

SELECT *
FROM ads
JOIN ad_cat ON ad.ad_id = ad_cat.ad_id
JOIN categories ON ad_cat.cat_id = categories.id
WHERE ad.cat_id = 4;

-- For a given user, show all the ads they have posted.
SELECT *
FROM users
JOIN ads on ads.user_id = users.id;

SELECT *
FROM ads
JOIN users on ads.user_id = users.id
WHERE name = "Dwight";
