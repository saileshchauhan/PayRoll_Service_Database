create database PayRoll_Service13

select * from sys.databases;

use PayRoll_Service13;

select DB_NAME()

create table employee_payroll1
(
Id int identity(1,1) primary key,
name varchar(100) not null,
salary money not null,
start date not null,
gender varchar(1) not null,
);

INSERT INTO employee_payroll1 VALUES
('tom',10000,'2018-02-05','M'),
('harry',23000,'2018-05-16','F'),
('sam',34569,'2017-05-23','M'),
('sandra',78000,'2019-03-02','F')

SELECT * from employee_payroll1

SELECT salary from employee_payroll1 where name='tom'

SELECT * from employee_payroll1 where start between '2019-01-01' and GETDATE()

ALTER table employee_payroll1
Add gender varchar(1)

UPDATE employee_payroll1
set gender='M' where name in ('tom','sam','philip')

SELECT SUM(salary) from employee_payroll1 where gender='f'
Select SUM(salary) from employee_payroll1 group by gender
Select SUM(salary) from employee_payroll1 where gender='m' group by gender
Select MIN(salary) from employee_payroll1
Select MIN(salary) from employee_payroll1 where gender='f'
Select MAX(salary) from employee_payroll1 where gender='m'
Select AVG(salary),gender from employee_payroll1 group by gender

use PayRoll_Service13

/*
DECLARE @ConstraintName nvarchar(200)
SELECT @ConstraintName = Name FROM SYS.DEFAULT_CONSTRAINTS WHERE PARENT_OBJECT_ID = OBJECT_ID('employee_payroll1') AND PARENT_COLUMN_ID = (SELECT column_id FROM sys.columns WHERE NAME = N'__ColumnName__' AND object_id = OBJECT_ID(N'__TableName__'))
IF @ConstraintName IS NOT NULL
EXEC('ALTER TABLE employee_payroll1 DROP CONSTRAINT ' + @ConstraintName)
IF EXISTS (SELECT * FROM syscolumns WHERE id=object_id('employee_payroll1') AND name='Adress')
EXEC('ALTER TABLE employee_payroll1 DROP COLUMN Adress')
*/

ALTER TABLE employee_payroll1 DROP CONSTRAINT [DF__employee___Adres__34C8D9D1]
ALTER TABLE employee_payroll1
ADD Address varchar(250) null
CONSTRAINT DEFAULT_ADRESS DEFAULT 'def_value'
WITH VALUES

ALTER TABLE employee_payroll1
ADD Department varchar(100) not null
CONSTRAINT DEFAULT_DEPARTMENT DEFAULT 'company'

ALTER TABLE employee_payroll1
ADD BasicPay money not null
CONSTRAINT DEFAULT_BASICPAY DEFAULT (0) 

SELECT * FROM employee_payroll1
UPDATE employee_payroll1
SET Net_Pay=6000
WHERE Id in (1,2,3,4,5,6,7)

ALTER TABLE employee_payroll1
ADD Deductions money not null
CONSTRAINT DEFAULT_DEDUCTIONS DEFAULT 4000

ALTER TABLE employee_payroll1
ADD Net_Pay money not null
CONSTRAINT DEFAULT_NETPAY DEFAULT 4000

INSERT INTO employee_payroll1(name,salary,start,gender) VALUES
('terissa',10000,'2015-01-01','F')

use PayRoll_Service13
DROP table employee_payroll1
									/*IMPLEMENTING E-R DIAGRAM*/

CREATE TABLE EmpId_All_Details
(
Emp_Id int identity(1,1) primary key not null,
name varchar(100) not null,
salary money not null,
start date not null,
gender varchar(1) not null,
Address varchar(250) not null,
Department varchar(100) not null,
Basic_Pay money not null,
Deductions money not null,
Net_Pay money not null,
)
Select * from EmpId_All_Details
INSERT INTO EmpId_All_Details(name,salary,start,gender,Address,Basic_Pay,Deductions,Net_Pay) VALUES
('Bill',15000,'2018-05-03','M','STR 100','SALES',15000,3000,12000),
('TOM',17000,'2017-02-03','M','STR 104','OPERATION',17000,4000,13000),
('SAM',14000,'2019-05-13','M','STR 179','MARKETING',14000,3000,11000),
('SANDRA',19000,'2020-05-23','F','STR 07','SALES',19000,2000,17000),
('MICKE',15000,'2018-05-03','M','STR 151','OPERATION',15000,3000,12000),
('TERISSA',17000,'2021-07-23','F','STR 123','SALES',17000,3000,14000)

DELETE FROM EmpId_All_Details where Emp_Id=7;
ALTER table EmpId_All_Details
DROP TABLE EmpId_DepartmentId

CREATE TABLE EmpId_DepartmentId
(
empId int FOREIGN KEY REFERENCES EmpId_All_Details(Emp_Id),
departmentId int FOREIGN KEY REFERENCES DepartmentId_Name(departmentId)
)
SELECT * FROM EmpId_DepartmentId

INSERT INTO EmpId_DepartmentId VALUES
('001'),('002'),('003'),('001'),('002'),('001') 

CREATE TABLE DepartmentId_Name
(
departmentId int PRIMARY KEY identity(1,1) not null,
departmentName varchar(100)
)

INSERT INTO DepartmentId_Name(departmentName) VALUES
('SALES'),('OPERATION'),('MARKETING'),('HUMAN_RESOURCE')
SELECT * FROM DepartmentId_Name

use PayRoll_Service13

ALTER TABLE EmpId_DepartmentId
ADD FOREIGN KEY (empId) REFERENCES EmpId_Salary(empId)

CREATE TABLE EmpId_Salary
(
empId int PRIMARY KEY not null,
Basic_Pay money,
Deductions money,
Net_Pay money,
Taxes money
)
Select * FROM EmpId_Salary










