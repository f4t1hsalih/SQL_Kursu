--Müþteriler tablosundaki müþteri bakiyesi en yüksek olaný deðiþkene atayýp deðiþkeni çaðýrma
Declare @balance int
set @balance = (select max(customer_balance) from tbl_customer)
select @balance

--stock deðiþkenine en fazla stoðu olan ürünün stock adetini atar
declare @stock int
--stock deðiþkenine atamanýn baþka bir yöntemi
select @stock = max(product_stock) from tbl_products
--stock deðiþkenini görüntüler
select @stock
--Ürünstok deðeri stock deðiþkeninden gelen deðere eþik olan ürünü getirir
select * from tbl_products where product_stock = @stock
