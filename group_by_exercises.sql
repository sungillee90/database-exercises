USE employees;

DESCRIBE titles;

select distinct title
from titles;

select title, count(*) from titles group by title;

SELECT last_name
    FROM employees
    WHERE last_name LIKE 'E%'
      AND last_name LIKE '%E'
    GROUP BY last_name
    ORDER BY last_name;

# Update your previous query to now find unique combinations of first and last name
# where the last name starts and ends with 'E'. You should get 846 rows. todo group by two categories;
SELECT first_name, last_name
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY first_name, last_name;

# Find the unique last names with a 'q' but not 'qu'.
SELECT last_name
FROM employees
WHERE last_name LIKE '%q%'
  AND last_name NOT LIKE '%qu%'
GROUP BY last_name;

# Add a COUNT() to your results and use ORDER BY
# to make it easier to find employees whose unusual name is shared with others.
SELECT last_name, count(*)
FROM employees
WHERE last_name LIKE 'E%'
  AND last_name LIKE '%E'
GROUP BY last_name
ORDER BY last_name;

# Update your query for 'Irena', 'Vidya', or 'Maya'.
# Use count(*) and GROUP BY to find the number of employees for each gender with those names.
SELECT count(gender), gender
FROM employees
WHERE first_name = 'Irena'
     OR first_name = 'Vidya'
     OR first_name = 'Maya'
      GROUP BY gender;