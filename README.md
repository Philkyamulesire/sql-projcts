# sql-projcts

Company Database SQL Project
Overview
This project creates a Microsoft SQL Server database for a fictional company. It stores information about employees, branches, clients, sales, and suppliers.

Database Tables
Employee: Employee details, salaries, supervisors, and branches

Branch: Branch details, managers, and manager start dates

Client: Client details and assigned branches

Works_With: Employee-client sales relationships

Branch_Supplier: Branch suppliers and supplied goods

Relationships

The database uses primary and foreign keys to connect tables and protect data integrity.

Employees can report to supervisors.
Employees belong to branches.
Branches have managers.
Clients are assigned to branches.
Employees can manage client sales.
Branches can have multiple suppliers.

Requirements
Microsoft SQL Server
SQL Server Management Studio or a compatible tool
Permission to create databases and tables

How to Run
Open SQL Server Management Studio.
Connect to a SQL Server instance.
Open the SQL script.
Run the script.
Confirm that company_database and its tables were created.

Example Query
USE company_database;

SELECT *
FROM Employee;

Notes
The script is designed for Microsoft SQL Server.
Running it more than once may cause errors if the database or tables already exist.
The sample data is fictional and for learning purposes.
The script uses sp_rename to rename the employee and branch tables.
Project Purpose
This project demonstrates database creation, data insertion, keys, relationships, normalization, and basic SQL queries.