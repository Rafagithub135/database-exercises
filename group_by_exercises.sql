USE employees;

-- 1. In your script, use DISTINCT to find the unique titles in the titles table.

SELECT DISTINCT title FROM titles;

-- 2. Find your query for employees whose last names start and end with 'E'. Update the query to find just the unique last names that start and end with 'E' using GROUP BY.

SELECT last_name FROM employees GROUP BY last_name HAVING last_name LIKE 'E%' AND last_name LIKE '%E';

-- 3. Update your previous query to now find unique combinations of first and last name where the last name starts and ends with 'E'. You should get 846 rows.

SELECT first_name, last_name FROM employees GROUP BY first_name, last_name HAVING last_name LIKE 'E%' AND last_name LIKE '%E';

-- 4. Find the unique last names with a 'q' but not 'qu'.

SELECT last_name FROM employees GROUP BY last_name HAVING last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

-- 5. Add a COUNT() to your results and use ORDER BY to make it easier to find employees whose unusual name is shared with others.

SELECT last_name, COUNT(last_name) FROM employees GROUP BY last_name HAVING last_name LIKE '%q%' AND last_name NOT LIKE '%qu%';

-- 6. Update your query for 'Irena', 'Vidya', or 'Maya'. Use count(*) and GROUP BY to find the number of employees for each gender with those names.

SELECT gender COUNT(*) FROM employees GROUP BY gender ORDER BY COUNT(gender) HAVING first_name = 'Irena' OR first_name = 'Vidya' OR first_name = 'Maya';



# SELECT COUNT(*) FROM employees GROUP BY gender first_name ('Irena', 'Vidya', 'Maya');
