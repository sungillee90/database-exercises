# For a given ad, what is the email address of the user that created it?
SELECT ads.id AS Ad_ID,
       users.Email AS Email,
       users.First_Name AS First_Name,
       users.Last_Name AS Last_Name
FROM users
    JOIN ads ON ads.user_id = users.id;

# For a given ad, what category, or categories, does it belong to?
SELECT ads.id AS Ad_ID,
       categories.name AS Category
FROM categories
    JOIN ads ON categories.id = ads.categories_id;

# For a given category, show all the ads that are in that category.
SELECT categories.id AS Category_ID,
       categories.name AS Category,
       ads.title AS Ad_Title
FROM categories
    JOIN ads ON ads.categories_id = categories.id;

# For a given user, show all the ads they have posted.
SELECT users.id AS User_ID,
       users.Email AS Email,
       users.First_Name AS First_Name,
       users.Last_Name AS Last_Name,
       ads.title AS Ad_Title
FROM users
    JOIN ads ON ads.user_id = users.id;





# Used Miscellaneous Output to be more readable to the "users"