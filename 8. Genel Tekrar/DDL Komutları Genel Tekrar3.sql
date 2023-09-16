--Keetle �n ismini su �s�t�c� olarak de�i�tir
update tbl_products set product_name='SU ISITICI'where product_name='KETTLE'

--Hangi kategoriden ka� adet �r�n var
select category_name, count(*) as 'Toplam �r�n' from tbl_categories inner join tbl_products
on tbl_categories.category_id=tbl_products.category_id group by category_name order by count(*)

--Kategori ad� bilgisayar olan �r�nlerre 500 tl zam
update tbl_products set product_sprice+=500 where category_id=(select category_id from tbl_categories where category_name='Bilgisayar')

--Toplam �r�n say�s� ve toplam stok adedini ver
select COUNT(*) as '�r�n Say�s�', SUM(product_stock) as 'Toplam Stok' from tbl_products

--�r�n ba�� kar ve toplam kar� ver
select product_id, product_name, product_brand, category_name, product_stock,
(product_sprice-product_bprice) as 'Kar',
(product_sprice-product_bprice)*product_stock as 'Toplam Kar'
from tbl_products
inner join tbl_categories
on tbl_categories.category_id=tbl_products.category_id