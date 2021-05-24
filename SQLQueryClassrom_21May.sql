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



INSERT INTO employee_payroll1(name,salary,start,gender) VALUES
('terissa',10000,'2015-01-01','F'),('terissa',10000,'2015-01-01','F')
/*
DECLARE @ConstraintName nvarchar(200)
SELECT @ConstraintName = Name FROM SYS.DEFAULT_CONSTRAINTS WHERE PARENT_OBJECT_ID = OBJECT_ID('employee_payroll1') AND PARENT_COLUMN_ID = (SELECT column_id FROM sys.columns WHERE NAME = N'__ColumnName__' AND object_id = OBJECT_ID(N'__TableName__'))
IF @ConstraintName IS NOT NULL
EXEC('ALTER TABLE employee_payroll1 DROP CONSTRAINT ' + @ConstraintName)
IF EXISTS (SELECT * FROM syscolumns WHERE id=object_id('employee_payroll1') AND name='Adress')
EXEC('ALTER TABLE employee_payroll1 DROP COLUMN Adress')
*/

/*ALTER TABLE employee_payroll1 DROP CONSTRAINT [DF__employee___Adres__34C8D9D1]*/
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






