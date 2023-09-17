--Deneme için bir prosedür oluþturuldu
create proc deneme
as
select * from tbl_products where product_stock>10

exec deneme

--Oluþturulan Prosedür Silindi
drop procedure deneme
