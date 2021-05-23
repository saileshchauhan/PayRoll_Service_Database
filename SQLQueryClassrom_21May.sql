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
