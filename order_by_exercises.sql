USE employees;

-- 1.Modify your first query to order by first name. The first result should be Irena Pelz and the last result should be Vidya Awdeh.
-- 2. Update the query to order by first name and then last name. The first result should now be Irena Acton and the last should be Vidya Zweizig.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY first_name;

-- 3. Change the ORDER BY clause so that you order by last name before first name. Your first result should still be Irena Acton but now the last result should be Maya Zyda.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name, first_name;

-- 4.Update your queries for employees with 'e' in their last name to sort the results by their employee number. Make sure the employee numbers are in the correct order.
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no;

-- 5. Now reverse the sort order for both queries and compare results.
SELECT * FROM employees WHERE first_name IN ('Irena', 'Vidya', 'Maya') ORDER BY last_name DESC, first_name DESC;
SELECT * FROM employees WHERE last_name LIKE 'E%' ORDER BY emp_no DESC;
-- The order reversed on both queries.


SELECT * FROM employees WHERE last_name LIKE '%q%';


SELECT * FROM employees WHERE first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya';


SELECT * FROM employees WHERE (first_name = 'Irena' OR first_name = 'Vidya' OR first_name ='Maya') AND gender = 'M';


SELECT * FROM employees WHERE last_name LIKE 'E%' OR last_name LIKE '%E';


SELECT * FROM employees WHERE last_name LIKE  'E%' AND last_name LIKE '%E';


SELECT * FROM employees WHERE last_name LIKE ('%q%') AND last_name NOT LIKE '%qu%';