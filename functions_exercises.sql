USE employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND month(birth_date) = 12 AND day(birth_date) = 25 ORDER BY birth_date, hire_date DESC;

SELECT CONCAT(DATEDIFF(now(), hire_date), ' - ', first_name, ' ', last_name) FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND month(birth_date) = 12 AND day(birth_date) = 25;