create database AddressBook_Service

select * from sys.databases;

use AddressBook_Service;

SELECT DB_NAME()

CREATE table AddressBook
(
Id int Identity(1,1) not null,
FirstName varchar(100)  not null,
LastName varchar(100) not null,
Adress varchar(100) not null,
City varchar(100) not null,
State varchar(100) not null,
Zip varchar(100) not null,
PhoneNumber int not null,
Email varchar(50) not null
)

INSERT INTO AddressBook VALUES
('MICHAEL','JACKSON','Street 123','LASVEGAS','US State','34561',98989898,'michaejohn@gmai.com')



