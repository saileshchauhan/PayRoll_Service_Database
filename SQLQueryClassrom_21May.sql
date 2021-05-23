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



SELECT * from employee_payroll1
