create database Customer
Use Customer

create table Customer(CustomerId int identity,CustomerName varchar(20),Contact bigint)
insert into Customer(CustomerName,Contact)values
('Ravi',99999888),
('shivi',77799564),
('Shivani',967889933)

create table Products(ProductId int unique,perchaseItem varchar(20),Quantity int)
insert into Products(ProductId,perchaseItem,Quantity)values
(105,'Shyampoo',2),
(99,'Biscuit',4),
(567,'Choco',9),
(456,'Maggie',5);

select*from Customer
select*from Products



create database Country
Use Country;
create table Country(CountryId int identity,CountryName varchar(20))
insert into Country(CountryName)values
('India'),('Japan'),('Nepal'),('ShriLanka');


create table States(StateId int identity,constraint fk_foreign key(CountryId),StateName varchar(30))
insert into States(countryId,StateName)
(2,'Kanto'),(3,'Gandhak'),(1,'Gujrat'),(1,'Rajasthan')
(2,'Tokho');

select*from Country

Drop table States

--Inner join
create database Learn
use Learn;
create table Customer(Id int not null ,Name varchar(30),Email varchar(40),
Payment varchar(10),primary key(Id));

create table Orders(Id int not null, OrderDescription varchar(50),OrderDate varchar(20),
Price int,primary key(Id),Customer_Id int references Customer(Id));

insert into customer values(5,'Shyam','shyam@gmail.com','Online');

insert into Orders values(4,'L.G','23/5/18','30000',2);

select customer.Name, Customer.Email, Orders.Price , Orders.OrderDate 
From Customer
inner join Orders on Customer.Id=Orders.Customer_Id

--OR----

select C.Name,O.OrderDescription
From Customer as C,Orders as O
where C.Id=O.Customer_Id

--OR---
select customer.Name, Orders.OrderDate From Customer
inner join Orders 
on Customer.Id=Orders.Customer_Id

select*from Customer,Orders where Customer.Id=Orders.Customer_Id;

----Left join

select customer.Name,Orders.Price,Orders.OrderDescription from  Customer Left join Orders on Customer.Id=Orders.Customer_Id;

select customer.Name,Orders.Price,Orders.OrderDescription from  Customer Right join Orders on Customer.Id=Orders.Customer_Id;

select*from Customer
select*from Orders

create table Employee(Id int identity,Name varchar(30),City varchar(20))
insert into Employee values('Purav','Delhi')

select*from Employee

select Employee.Name, Employee.City from Employee self join 
 














--select*from Customer as A
--inner join Customer as B on 
--A.CustomerId=B.Contact

--Select A.CustomerName, B.CustomerId from Customer as A
--inner join Customer as B on
--A.CustomerId=B.Contact

--drop table Customer




