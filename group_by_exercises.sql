USE employees;

-- SELECT DISTINCT title
-- FROM employees;

SELECT DISTINCT title
FROM employees.titles;

SELECT DISTINCT last_name
FROM employees
WHERE last_name LIKE "E%E";

SELECT COUNT(DISTINCT first_name, last_name)
FROM employees
WHERE last_name LIKE "E%E";

SELECT last_name, COUNT(DISTINCT last_name)
FROM employees
WHERE last_name LIKE "%Q%"
AND last_name NOT LIKE "%QU%"
GROUP BY last_name;

SELECT COUNT(*), gender
FROM employees
WHERE first_name IN ('Irena', 'Vidya', 'Maya')
GROUP BY gender;