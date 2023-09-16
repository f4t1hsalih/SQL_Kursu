--PROCEDURE KULLANIMI
--Prosedür ile sorgu kaydedilip çekildi
create procedure MOVEMENTS
as
select 
movement_id as 'Hareket ID', 
product_name as 'Ürün', 
customer_name + ' ' + customer_surname as 'Ad Soyad', 
staff_name_surname as 'Personel',
piece as 'Adet',
amount as 'Tutar',
date as 'Tarih'
from tbl_movement 
inner join tbl_products
on tbl_movement.product_id=tbl_products.product_id
inner join tbl_customer
on tbl_movement.customer_id=tbl_customer.customer_id
inner join tbl_staff
on tbl_staff.staff_id=tbl_movement.staff_id

execute MOVEMENTS