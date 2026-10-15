USE company_database;

-- find the number of employees

SELECT COUNT(*) AS num_of_employees FROM Employees;

-- find the number of female employees born after 1970

SELECT COUNT(*) AS num FROM Employees
WHERE sex = 'F' AND birth_date > '1970-01-01';

-- find the average of all male employee's salaries

SELECT ROUND(AVG(salary),2) AS avg_salary FROM Employees
WHERE sex = 'M';

-- find the sum of all employee's salaries

SELECT SUM(salary) AS sum_of_salaries FROM
Employees;

-- find out how many males and how many females there are

SELECT sex,COUNT(*) AS how_many FROM Employees
GROUP BY sex;

-- find the total sales of each salesman

SELECT * from Works_With;

SELECT emp_id,SUM(total_sales) AS total_sales FROM Works_With
GROUP BY emp_id;