USE employees;

# MySQL provides a way to return only unique results from our queries with the keyword DISTINCT.
# For example, to find all the unique titles within the company, we could run the following query:
SELECT DISTINCT title FROM titles;

# List the first 10 distinct last name sorted in descending order.
SELECT DISTINCT last_name FROM employees
ORDER BY last_name DESC
LIMIT 10;

# Find your query for employees born on Christmas and hired in the 90s from order_by_exercises.sql.
# Update it to find just the first 5 employees. Their names should be:
SELECT *
FROM employees
WHERE (
                  hire_date LIKE '199%'
              AND birth_date LIKE '%12-25'
          )
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5;

# Try to think of your results as batches, sets, or pages. The first 5 results are your first page.
# The 5 after that would be your second page, etc.
# Update the query to find the 10 page of results.

SELECT *
FROM employees
WHERE (
                  hire_date LIKE '199%'
              AND birth_date LIKE '%12-25'
          )
ORDER BY birth_date ASC, hire_date DESC
LIMIT 5 OFFSET 45 ;

# todo page # = (limit + offset)/limit
# todo to figure out offset, ( limit * (page # -1) )