USE employees;

SELECT CONCAT(first_name, ' ', last_name) FROM employees WHERE last_name LIKE 'E%' AND last_name LIKE '%E';  -- Since we're looking for a name with the first and last letters being the same, we can use E%E and just use one "where" statement.

SELECT * FROM employees WHERE month(birth_date) = 12 AND day(birth_date) = 25; -- Can also use "Where birth_date LIKE '12-25'".

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND month(birth_date) = 12 AND day(birth_date) = 25;

SELECT * FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND month(birth_date) = 12 AND day(birth_date) = 25 ORDER BY birth_date, hire_date DESC;

SELECT CONCAT(DATEDIFF(now(), hire_date), ' - ', first_name, ' ', last_name) FROM employees WHERE hire_date BETWEEN '1990-01-01' AND '1999-12-31' AND month(birth_date) = 12 AND day(birth_date) = 25;