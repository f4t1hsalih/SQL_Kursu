--Keetle ýn ismini su ýsýtýcý olarak deðiþtir
update tbl_products set product_name='SU ISITICI'where product_name='KETTLE'

--Hangi kategoriden kaç adet ürün var
select category_name, count(*) as 'Toplam Ürün' from tbl_categories inner join tbl_products
on tbl_categories.category_id=tbl_products.category_id group by category_name order by count(*)

--Kategori adý bilgisayar olan ürünlerre 500 tl zam
update tbl_products set product_sprice+=500 where category_id=(select category_id from tbl_categories where category_name='Bilgisayar')

--Toplam ürün sayýsý ve toplam stok adedini ver
select COUNT(*) as 'Ürün Sayýsý', SUM(product_stock) as 'Toplam Stok' from tbl_products

--Ürün baþý kar ve toplam karý ver
select product_id, product_name, product_brand, category_name, product_stock,
(product_sprice-product_bprice) as 'Kar',
(product_sprice-product_bprice)*product_stock as 'Toplam Kar'
from tbl_products
inner join tbl_categories
on tbl_categories.category_id=tbl_products.category_id