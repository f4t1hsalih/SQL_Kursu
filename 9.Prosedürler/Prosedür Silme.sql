--Deneme i�in bir prosed�r olu�turuldu
create proc deneme
as
select * from tbl_products where product_stock>10

exec deneme

--Olu�turulan Prosed�r Silindi
drop procedure deneme
