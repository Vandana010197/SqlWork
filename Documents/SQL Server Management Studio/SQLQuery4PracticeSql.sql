create database PracticeOfSql
use PracticeOfSql

create table GroceryItems
(Id int primary key identity,
ItemName varchar(max),
Amount varchar(max),
Price bigint)

insert into GroceryItems values
('Maggie','4 packets','48'),
('Frooti','2 litre','100'),
('Olive oil','1 litre','200'),
('Choco','2 pack','150')

select*from GroceryItems
select Id,ItemName from GroceryItems
select Id,Price from GroceryItems

select*from GroceryItems where Id>4

Delete GroceryItems where  Id=2


UPdate GroceryItems set Price=50 where ItemName='Maggie'
select*from GroceryItems
select amount from GroceryItems where Id>=2

select amount,price from GroceryItems where Id<=2

insert into GroceryItems(ItemName)
select Price from GroceryItems where price=200

insert into GroceryItems(Amount)
select Amount from GroceryItems where price=200

insert into GroceryItems(Price)
Select  Price from  GroceryItems where Amount = '2pack'
update GroceryItems set ItemName='Refine Oil' where Id=7

select Price,Amount from GroceryItems order by price

select Id , Amount,ItemName from GroceryItems where Id>2 order by  ItemName asc
select Id , Amount,ItemName from GroceryItems where Id>2 order by  ItemName desc

select Id,ItemName,Amount,Price from GroceryItems Order by Price asc
alter table GroceryItems Add ProductDetails varchar(20)

--Increase column size by use this command--
alter table GroceryItems alter column ProductDetails varchar(200)

alter table GroceryItems Drop Column ProductDetails
create index Idx_Id on GroceryItems(Id)


----trial----
alter table GroceryItems truncate Amount 

alter table GroceryItems alter column Price  column PriceDetails varchar(50)

exec Sp_rename 'Price' ,'p' ,'column'
ALTER TABLE GroceryItems RENAME COLUMN Price TO Priced;

--Use for change column name
Sp_Rename 'GroceryItems.Price' ,'Priced'
alter table GroceryItems add  Details varchar(20)


select*from GroceryItems

insert into GroceryItems Details 
UPdate GroceryItems set  Details='Maggie' where Priced=50



























