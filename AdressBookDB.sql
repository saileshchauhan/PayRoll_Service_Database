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

INSERT INTO AddressBook VALUES
('SAM','FIGHTER','Street 245','DETROIT','US State','45892',56565656,'samfighter@gmail.com')

SELECT * FROM AddressBook

UPDATE AddressBook
SET City='WASHNGTON'
WHERE FirstName='MICHAEL'

UPDATE AddressBook
SET City='TOKYO'
WHERE FirstName='SAM'

select * from AddressBook

DELETE FROM AddressBook
WHERE FirstName='sam' AND City='TOKYO'

select * from AddressBook

INSERT INTO AddressBook VALUES
('SAM','MIKE','Street 245','DETROIT','US State','45892',56565656,'samfighter@gmail.com'),
('SAROJ','DHARMA','Street 567','MADRID','US State','459692',85693235,'sarojdharma@gmail.com')

Select FirstName from AddressBook
WHERE City='DETROIT'

select lastname from AddressBook
where State='US STATE'

SELECT  COUNT(City)
FROM AddressBook

SELECT firstname from AddressBook
WHERE city=('MADRID')
ORDER BY FirstName

ALTER TABLE AddressBook
ADD Type varchar(100),AdName varchar(100)

SELECT * FROM AddressBook

INSERT INTO AddressBook(Type,AdName) VALUES('FRIEND','SCHOOL')

Alter table AddressBook DROP COLUMN type,AdName

Alter table AddressBook
Add type varchar(100),AdNmae varchar(100)

