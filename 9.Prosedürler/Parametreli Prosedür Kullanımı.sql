--Parametreli Prosedür Kullanýmý
create proc bring_product
@value varchar(50)= 'BUZDOLABI' --Baþlangýçtaki deðeri verilir
as
select product_name, 
product_stock, 
product_brand 
from tbl_products
where product_name=@value

exec bring_product @value='ÇAMAÞIR MAKÝNASI'