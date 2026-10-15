CREATE DATABASE company_database;

USE company_database;

CREATE TABLE employee(
emp_id INT NOT NULL,
first_name VARCHAR(255),
last_name VARCHAR(255),
birth_date DATE,
sex VARCHAR(255),
salary DECIMAL(6,0),
super_id INT,
branch_id INT
);

INSERT INTO employee
VALUES(100,'David','Arinda','1967-11-17','M',250000,NULL,1),
		(101,'Janet','Olwol','1961-05-11','F',110000,100,1),
		(102,'Micheal','Asiimwe','1964-03-15','M',75000,100,2),
		(103,'Angella','Nagawa','1972-06-25','F',63000,102,2),
		(104,'Phil','Kyamulesire','1980-02-05','F',55000,102,2),
		(105,'Stanley','Morton','1958-02-19','M',69000,102,2),
		(106,'Joshua','Baraka','1969-09-05','M',78000,100,3),
		(107,'Andrew','Musinguzi','1973-07-22','M',65000,100,3),
		(108,'Jimmy','Mulongo','1978-10-01','M',71000,106,3);

CREATE TABLE branch(
branch_id INT,
branch_name VARCHAR(255),
mgr_id INT,
mgr_start_date DATE);

INSERT INTO branch
VALUES(1,'Corperate',100,'2006-02-09'),
		(2,'Scranton',102,'1992-04-06'),
		(3,'Stamford',106,'1998-02-13');

CREATE TABLE Client(
client_id INT,
client_name VARCHAR(255),
branch_id INT);

INSERT INTO Client
VALUES(400, 'Dunmore Highschool', 2),
(401, 'Lackawana Country', 2),
(402, 'FedEx', 3),
(403, 'John Daily Law, LLC', 3),
(404, 'Scranton Whitepages', 2),
(405, 'Times Newspaper', 3),
(406, 'FedEx', 2);

CREATE TABLE Works_With(
emp_id INT,
client_id INT,
total_sales DECIMAL(10,0));

INSERT INTO Works_With
VALUES(105, 400, 55000),
(102, 401, 267000),
(108, 402, 22500),
(107, 403, 5000),
(108, 403, 12000),
(105, 404, 33000),
(107, 406, 26000),
(102, 406, 15000),
(105, 406, 13000);

CREATE TABLE Branch_Supplier(
branch_id INT,
supplier_name VARCHAR(255),
supplier_type VARCHAR(255)
);

INSERT INTO Branch_Supplier 
VALUES (2, 'Hammer Mill', 'Paper'),
(2, 'Uni-ball', 'Writing Utensils'),
(3, 'Patriot Paper', 'Paper'),
(2, 'J.T. Forms & Labels', 'Custom Forms'),
(3, 'Uni-ball', 'Writing Utensils'),
(3, 'Hammer Mill', 'Paper'),
(3, 'Stamford Lables', 'Custom Forms');

EXEC sp_rename 'employee','Employee';

EXEC sp_rename 'branch','Branch';

ALTER TABLE Employee
ALTER COLUMN emp_id INT NOT NULL;

ALTER TABLE Employee
ADD CONSTRAINT emp_id_pkey 
PRIMARY KEY(emp_id);

ALTER TABLE Branch
ALTER COLUMN branch_id INT NOT NULL;

ALTER TABLE Branch
ADD CONSTRAINT branch_id_pkey 
PRIMARY KEY(branch_id);

ALTER TABLE Client
ALTER COLUMN client_id INT NOT NULL;

ALTER TABLE Client
ADD CONSTRAINT client_id_pkey
PRIMARY KEY(client_id);

ALTER TABLE Employee
ADD CONSTRAINT sup_id_fkey 
FOREIGN KEY(super_id) REFERENCES Employee(emp_id);

ALTER TABLE Employee
ADD CONSTRAINT br_id_fkey
FOREIGN KEY(branch_id) REFERENCES Branch(branch_id);

ALTER TABLE Branch
ADD CONSTRAINT mgr_id_fkey
FOREIGN KEY(mgr_id) REFERENCES Employee(emp_id);

ALTER TABLE Client
ADD CONSTRAINT clie_br_id_fkey
FOREIGN KEY(branch_id) REFERENCES Branch(branch_id);

ALTER TABLE Branch_Supplier
ALTER COLUMN branch_id INT NOT NULL;

ALTER TABLE Branch_Supplier
ALTER COLUMN supplier_name VARCHAR(255) NOT NULL;

ALTER TABLE Branch_Supplier
ADD CONSTRAINT branch_suppl_prkey
PRIMARY KEY(branch_id,supplier_name);

ALTER TABLE Works_With
ALTER COLUMN emp_id INT NOT NULL;

ALTER TABLE Works_With
ALTER COLUMN client_id INT NOT NULL;

ALTER TABLE Works_With
ADD CONSTRAINT emp_cli_prkey
PRIMARY KEY(emp_id,client_id);

