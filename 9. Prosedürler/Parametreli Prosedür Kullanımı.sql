--Parametreli Prosed�r Kullan�m�
create proc bring_product
@value varchar(50)= 'BUZDOLABI' --Ba�lang��taki de�eri verilir
as
select product_name, 
product_stock, 
product_brand 
from tbl_products
where product_name=@value

exec bring_product @value='�AMA�IR MAK�NASI'