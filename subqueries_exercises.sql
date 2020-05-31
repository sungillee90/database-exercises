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

SELECT concat(first_name, ' ' ,last_name) AS 'fullName'
FROM employees
WHERE hire_date IN (
    SELECT hire_date
    FROM employees
    WHERE emp_no = 101010
    );

# Find all the titles held by all employees with the first name Aamod.
# 314 total titles, 6 unique titles
SELECT titles.title, first_name
FROM titles
JOIN employees AS e ON titles.emp_no = e.emp_no
WHERE first_name IN (
    SELECT first_name
    FROM employees
    WHERE first_name = 'Aamod'
    );

# Find all the current department managers that are female.
SELECT concat(first_name, ' ', last_name) AS FullName
FROM employees
JOIN dept_manager AS dm ON employees.emp_no = dm.emp_no
WHERE emp_no IN (
    SELECT emp_no
    FROM dept_manager
    WHERE gender = 'F' AND
          dm.emp_no > curdate()
);

# If I stated both employeees, and dept_manager,
# I can grab the information right?