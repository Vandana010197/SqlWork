create Database  joinCommands
use joinCommands

create table Customer
(id int identity, 
Ename varchar(max),
CustomerId varchar(10))

insert into Customer values
('Diya' , '102'),
('Sourav','202'),
('Ravi','504'),
('Radha','808'),
('Karan','404')

alter table customer add ManagerId int
ALTER	table customer alter column customerId varchar(20)

update Customer set ManagerId=13 where Id=5
select*from Customer as Cust
INNER JOIN Customer as M on Cust.id=M.ManagerId

select*from Customer

select E.Ename as Customers,M.Ename as Manager
from Customer as E
INNER JOIN Customer as M
on E.ManagerId = M.CustomerId

create table Employee(Id int primary key identity,
Ename varchar(30),
Email varchar(30),
Countrycode bigint not null)

insert into Employee values 
('Sapna','sapna@gmail.com',2),
('Abhi','abhi@gmail.com',1),
('Chirag','chirag@gmail.com',3),
('Siya','siya123@gmail.com',4),
('Karan','karan@gmail.com',3)

create table Country
(Id int Primary key identity,
Country varchar(30), 
CountryCode bigint, constraint fk_foreign key (Countrycode) references Country(id));

insert into Country values
('India',21),
('America',43),
('Germany',44),
('Shrilanka' 34),
('Nepal',25)




















