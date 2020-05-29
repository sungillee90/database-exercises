USE employees;

SHOW tables;

DESCRIBE employees;

SELECT hire_date
FROM employees
WHERE emp_no = 101010;

# Find all the employees with the same hire date as employee 101010 using a subquery.
# 69 Rows
SELECT concat(first_name, ' ' ,last_name) AS 'fullName'
FROM employees
WHERE hire_date = '1990-10-22';

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT titles.title
FROM titles
JOIN employees AS e ON titles.title = e.emp_no
WHERE

# Find all the current department managers that are female.
SELECT emp_no
FROM dept_manager
WHERE emp_no IN (
    SELECT first_name, last_name
    FROM employees
    WHERE gender = 'F'
);