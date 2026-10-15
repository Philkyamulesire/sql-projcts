--find any clients who are an LLC

SELECT * FROM Client;

SELECT * FROM Client
WHERE client_name LIKE '%LLC%';

-- find any branch suppliers who are in the label business

SELECT * FROM Branch_supplier;

SELECT * FROM Branch_supplier
WHERE supplier_name LIKE '%label%';

--find employees born in october

SELECT * FROM Employees
WHERE birth_date LIKE '____-10-__';

-- find any clients who are schools

SELECT * FROM Client;

SELECT * FROM Client
WHERE client_name LIKE '%school%';


