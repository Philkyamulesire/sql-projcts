-- SUBQUERIES

--find the names of employees that
--have sold over 30000 to a single client

SELECT * FROM Employees;
SELECT * FROM Works_With;
SELECT * FROM client;

SELECT CONCAT(first_name,' ',last_name) AS Employees_name FROM Employees AS e
WHERE EXISTS(
SELECT 1 FROM Works_With AS w
WHERE e.emp_id = w.emp_id AND 
total_sales > 30000);

-- OR 

SELECT CONCAT(first_name,' ',last_name) AS Employees_name FROM Employees AS e
WHERE emp_id IN(SELECT emp_id FROM Works_With AS w
WHERE e.emp_id = w.emp_id AND 
total_sales > 30000);

