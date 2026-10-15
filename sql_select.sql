-- find all employees

SELECT * FROM Employees;

-- find all clients

SELECT * FROM Client;

-- find all employees ordered by salary

SELECT * FROM Employees
ORDER BY salary ASC;

SELECT * FROM Employees
ORDER BY salary DESC;

--find all employees ordered by sex then name

SELECT * FROM Employees
ORDER BY sex ,first_name ,last_name;

-- find the first five employees in the table

SELECT TOP 5 * FROM Employees;

-- find first and last names of all employees

SELECT first_name,last_name FROM Employees;

-- find out all the different genders

SELECT DISTINCT sex FROM Employees;