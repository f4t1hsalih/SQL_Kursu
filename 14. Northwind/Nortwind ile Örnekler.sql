--NORTWIND Veritaban� �rnekleri
--Deniz �r�nleri kategorisinden ve stokdaki adeti 20'den fazla olan ve sat�c� �ehri Osaka olan �r�n�n t�m bilgilerini getirir
select * from Products where CategoryID=(select CategoryID from Categories 
where CategoryName='SeaFood') and UnitsInStock>20
and SupplierID=(select SupplierID from Suppliers where City='Osaka')

--�al��an �ehri londra olan ve shipvia's� 3 olan ve Gemi �lkesi Fransa olan Sat��lar� getiren prosed�r
create proc test1
as
select * from Orders where EmployeeID in (select EmployeeID from Employees where City='London')
and ShipVia=3 and ShipCountry='France'

exec test1
