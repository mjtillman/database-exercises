USE employees;

-- Find all the employees with the same hire date as employee 101010
-- using a sub-query. (69 Rows)

SELECT CONCAT(last_name, ' ', first_name)
FROM employees
WHERE hire_date IN (
  SELECT hire_date
  FROM employees
  WHERE emp_no = 101010
);

-- Find all the titles held by all employees with the first name Aamod.
-- (314 total titles, 6 unique titles)

SELECT title, COUNT(*)
FROM titles
WHERE emp_no IN (
  SELECT emp_no
  FROM employees
  WHERE first_name = "Aamod"
) GROUP BY title;

-- Find all the current department managers that are female.

SELECT CONCAT(last_name, ' ', first_name) AS name
FROM employees e
WHERE gender = "F" and emp_no IN (
  SELECT emp_no
  FROM dept_manager
  WHERE to_date > now()
);

-- SELECT * FROM EMPLOYES
-- JOIN dept_manager dm on employees.emp_no = dm.emp_no
-- WHERE gender = "F" and dm.to_date > now();