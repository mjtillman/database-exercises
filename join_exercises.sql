-- USE join_test_db;
--
-- CREATE TABLE roles (
--   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--   name VARCHAR(100) NOT NULL,
--   PRIMARY KEY (id)
-- );
--
-- CREATE TABLE users (
--   id INT UNSIGNED NOT NULL AUTO_INCREMENT,
--   name VARCHAR(100) NOT NULL,
--   email VARCHAR(100) NOT NULL,
--   role_id INT UNSIGNED DEFAULT NULL,
--   PRIMARY KEY (id),
--   FOREIGN KEY (role_id) REFERENCES roles (id)
-- );
--
-- INSERT INTO roles (name) VALUES ('admin');
-- INSERT INTO roles (name) VALUES ('author');
-- INSERT INTO roles (name) VALUES ('reviewer');
-- INSERT INTO roles (name) VALUES ('commenter');
--
-- INSERT INTO users (name, email, role_id) VALUES
-- ('bob', 'bob@example.com', 1),
-- ('joe', 'joe@example.com', 2),
-- ('sally', 'sally@example.com', 3),
-- ('adam', 'adam@example.com', 3),
-- ('jane', 'jane@example.com', null),
-- ('mike', 'mike@example.com', null);
--
-- -- INSERT INTO users (name, email, role_id) VALUES
-- -- ('Rowling', 'rowling@example.com', 2),
-- -- ('Hermann', 'hermann@example.com', 2),
-- -- ('Ernest', 'ernest@example.com', null),
-- -- ('Lacey', 'lacey@example.com', 2);
--
-- SELECT users.name AS user_name, roles.name AS role_name
-- FROM users
-- JOIN roles ON users.role_id = roles.id;
--
-- SELECT roles.name AS role_name, COUNT(users.role_id) AS total_users
-- FROM users
-- JOIN roles ON users.role_id = roles.id
-- GROUP BY roles.id;
--
-- --
-- SELECT users.name AS users_name, roles.name AS role_name
-- FROM users
-- LEFT JOIN roles ON users.role_id = roles.id;
--
-- SELECT roles.name AS role_name, COUNT(users.role_id) AS total_users
-- FROM users
-- LEFT JOIN roles ON users.role_id = roles.id
-- GROUP BY roles.id;
--
-- SELECT users.role_id AS role_name, COUNT(users.role_id) AS total_users
-- FROM users
-- LEFT JOIN roles ON users.role_id = roles.id
-- GROUP BY role_name;
--
-- --
-- SELECT users.name AS users_name, roles.name AS role_name
-- FROM users
-- RIGHT JOIN roles ON users.role_id = roles.id;
--
-- SELECT roles.name AS role_name, COUNT(users.role_id) AS total_users
-- FROM users
-- RIGHT JOIN roles ON users.role_id = roles.id
-- GROUP BY roles.id;
--
-- -------------
USE employees;

SELECT CONCAT(e.first_name, ' ', e.last_name) AS full_name, d.dept_name
FROM employees as e
JOIN dept_emp as de
  ON de.emp_no = e.emp_no
JOIN departments as d
  ON d.dept_no = de.dept_no
WHERE de.to_date = '9999-01-01';

SELECT employees.emp_no, CONCAT(employees.first_name, ' ', employees.last_name) AS full_name, dept_manager.dept_no AS dept_no
FROM employees
JOIN departments ON dept_manager.emp_no;

select *
FROM employees
JOIN employees.dept_manager