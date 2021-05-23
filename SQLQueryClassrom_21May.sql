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