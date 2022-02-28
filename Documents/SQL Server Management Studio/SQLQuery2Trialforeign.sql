create database LearnSql
use learnSql

create table Customer
(Id int primary key identity, CustName varchar(20),)
insert into Customer values('Riya'),('Sourav'),('Diya'),('Ravi')

CREATE TABLE [Order] (
  Id INT IDENTITY,
  OrderDate DATETIME2 NOT NULL DEFAULT GETDATE(), 
  OrderNumber NVARCHAR(10) NULL,
  CustomerId INT REFERENCES Customer(Id) NOT NULL,
  TotalAmount DECIMAL(12,2) NULL DEFAULT 0,
  CONSTRAINT PK_Order PRIMARY KEY (Id)
)

select*from [Order]
select*from Customer

insert into [Order] values
(GETDATE(),'106',3, 908.00),
(GETDATE(),'103',1, 1000.00),
(GETDATE(),'109',4, 555.00)

ALTER TABLE [Order] 
ADD CONSTRAINT FK_CustomerId FOREIGN KEY (CustomerId) 
    REFERENCES Customer(Id)




