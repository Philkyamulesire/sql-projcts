USE company_database;

-- JOINS

SELECT * FROM Branch;
SELECT * FROM Employees;


-- Find all branches and the names of their managers

SELECT b.branch_id , b.branch_name,b.mgr_id,CONCAT(e.first_name,' ',e.last_name) AS manager FROM Branch AS b
INNER JOIN Employees AS e
ON b.mgr_id = e.emp_id;

-- LEFT JOIN

SELECT b.branch_id , b.branch_name,b.mgr_id,CONCAT(e.first_name,' ',e.last_name) AS manager FROM Branch AS b
LEFT JOIN Employees AS e
ON b.mgr_id = e.emp_id;

--RIGHT JOIN

SELECT b.branch_id , b.branch_name,b.mgr_id,CONCAT(e.first_name,' ',e.last_name) AS manager FROM Branch AS b
RIGHT JOIN Employees AS e
ON b.mgr_id = e.emp_id;

-- FULL JOIN

SELECT b.branch_id , b.branch_name,b.mgr_id,CONCAT(e.first_name,' ',e.last_name) AS manager FROM Branch AS b
FULL JOIN Employees AS e
ON b.mgr_id = e.emp_id;

-- OR

(SELECT b.branch_id , b.branch_name,b.mgr_id,CONCAT(e.first_name,' ',e.last_name) AS manager FROM Branch AS b
LEFT JOIN Employees AS e
ON b.mgr_id = e.emp_id)
UNION
(SELECT b.branch_id , b.branch_name,b.mgr_id,CONCAT(e.first_name,' ',e.last_name) AS manager FROM Branch AS b
RIGHT JOIN Employees AS e
ON b.mgr_id = e.emp_id);

-- find the names of employees that
-- have sold over 30000 to a single client, 
-- together with the  total sales,client_id,client_name


SELECT CONCAT(e.first_name,' ',e.last_name) AS employees_name ,w.total_sales,w.client_id, c.client_name AS Employees_name FROM Employees AS e
JOIN Works_With AS w ON e.emp_id = w.emp_id
JOIN Client AS c ON w.client_id = c.client_id
WHERE EXISTS(
SELECT 1 FROM Works_With AS w
WHERE e.emp_id = w.emp_id AND 
total_sales > 30000);