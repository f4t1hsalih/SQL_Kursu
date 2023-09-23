--NORTWIND Veritabaný Örnekleri
--Deniz ürünleri kategorisinden ve stokdaki adeti 20'den fazla olan ve satýcý þehri Osaka olan ürünün tüm bilgilerini getirir
select * from Products where CategoryID=(select CategoryID from Categories 
where CategoryName='SeaFood') and UnitsInStock>20
and SupplierID=(select SupplierID from Suppliers where City='Osaka')

--Çalýþan þehri londra olan ve shipvia'sý 3 olan ve Gemi Ülkesi Fransa olan Satýþlarý getiren prosedür
create proc test1
as
select * from Orders where EmployeeID in (select EmployeeID from Employees where City='London')
and ShipVia=3 and ShipCountry='France'

exec test1
