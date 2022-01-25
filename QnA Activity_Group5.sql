-- Creating a database 
CREATE DATABASE Company_DB;
DROP DATABASE Company_DB;

 -- Display the databases 
SHOW DATABASES;
CREATE DATABASE Company_DB;
-- Selecting a database 
USE Company_DB;

 -- creating a table 
CREATE TABLE Employees ( 
EmployeeID VARCHAR(10) NOT NULL PRIMARY KEY,
Name VARCHAR(20), Gender CHAR(5) NOT NULL,
Department VARCHAR(20) NOT NULL, Salary DECIMAL NOT NULL, 
DOB DATE NOT NULL, Date_of_Joining DATE NOT NULL);

-- Display the Structure of the table 
DESCRIBE Employees;

-- Insert the values into the table –
INSERT INTO Employees (EmployeeID,Name,Gender,Department,Salary,DOB,Date_of_Joining) VALUES ('CP0123','Ann Mery','F','HR',45000,STR_TO_DATE('10/Oct/1989', '%d/%M/%Y'),
STR_TO_DATE('1/Jan/2018', '%d/%M/%Y')),
('CP0087', 'Felix','M','Finance',48000,STR_TO_DATE('12/Apr/1981', '%d/%M/%Y'),STR_TO_DATE('10/Dec/2000', '%d/%M/%Y')),
('CP0197', 'Merlin','M','CEO',80000,STR_TO_DATE('01/Mar/1990', '%d/%M/%Y'),STR_TO_DATE('10/May/2011', '%d/%M/%Y')), 
('CP0213', 'Philip','M','Retail',47000,STR_TO_DATE('01/Apr/1991', '%d/%M/%Y'),STR_TO_DATE('11/June/2012', '%d/%M/%Y')), 
('CP0243', 'Michael','M','Retail',40000,STR_TO_DATE('01/Dec/1992', '%d/%M/%Y'),STR_TO_DATE('30/May/2016', '%d/%M/%Y')), 
('CP0289', 'Susan','F','Retail',40000,STR_TO_DATE('01/Jan/1991', '%d/%M/%Y'),STR_TO_DATE('01/Apr/2016', '%d/%M/%Y')), 
('CP0298', 'Abram','M','Relations',30000,STR_TO_DATE('17/Apr/1994', '%d/%M/%Y'),STR_TO_DATE('06/Oct/2016', '%d/%M/%Y')),
('CP0300', 'Alia','F','Relations',30000,STR_TO_DATE('17/Oct/1995', '%d/%M/%Y'),STR_TO_DATE('06/Oct/2016', '%d/%M/%Y')), 
('CP0321', 'Raichal','F','Marketing',34000,STR_TO_DATE('09/Oct/1990', '%d/%M/%Y'),STR_TO_DATE('22/Oct/2016', '%d/%M/%Y')), 
('CP0276', 'Thomas','M','Marketing',44000,STR_TO_DATE('19/Nov/1983', '%d/%M/%Y'),STR_TO_DATE('22/Oct/2018', '%d/%M/%Y'));

-- Display the table all values –
SELECT * FROM Employees;

-- Select employees from Marketing
SELECT * FROM Employees WHERE Department = 'Marketing';

-- Select employees from Retail
SELECT * FROM Employees WHERE Department = 'Retail';

-- Select employees from HR
SELECT * FROM Employees WHERE Department = 'HR';

-- Write SQL queries to create a table only containing female employees
CREATE TABLE Female_Employees as (SELECT * FROM Employees WHERE Gender = 'F');
-- Display the Structure of the table 
DESCRIBE Female_Employees ;
-- Display the table all values 
select *FROM Female_Employees;

-- Write SQL queries to display the Maximum,Minimum and Average Salary
SELECT MAX(Salary) as Maximum_Salary, 
MIN(Salary) as Minimum_Salary, 
AVG(Salary) as Average_Salary
FROM Employees;

-- Write SQL query to display the employee details based on the following conditions.
-- Male employees having salary greater than 40000
SELECT * FROM Employees WHERE Salary > 40000 and Gender="M";

-- Female_employees having salary less than 45000
SELECT * FROM Employees WHERE Salary < 45000 and Gender="F";

-- Employee having salary between 30000 and 60000 and working in Marketing or Retail department.
select * from Employees where (Salary between 30000 and 60000) and (Department='Marketing' or Department='Retail');
