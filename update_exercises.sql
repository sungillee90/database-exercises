USE codeup_test_db;

# All albums in your table.
SELECT 'All albums in your table' AS 'Exercise 3-1';
SELECT * FROM albums;

# Make all the albums 10 times more popular (sales * 10)
UPDATE albums SET sales = sales *10;

# All albums released before 1980
SELECT 'All albums released before 1980' AS 'Exercise 3-2';
SELECT * FROM albums
WHERE release_date <= 1980;


# All albums by Michael Jackson
SELECT 'All albums by Michael Jackson' AS 'Exercise 3-3';
SELECT * FROM albums
WHERE `artist` = 'Michael Jackson';

# Make all the albums 10 times more popular (sales * 10)
# Move all the albums before 1980 back to the 1800s.
UPDATE albums
SET release_date = release_date - 100
WHERE release_date <= 1980;

# Change 'Michael Jackson' to 'Peter Jackson'
UPDATE albums
SET artist = 'Peter Jackson'
WHERE `artist` = 'Michael Jackson';