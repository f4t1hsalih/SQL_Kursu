--Alt Sorgu Örnekleri
--Hareket tablosu içinde bulunan bilgisayar kategorisine ait bilgileri getirir
select * from tbl_movement where product_id in (select product_id from tbl_products where category_id=1)

--Hareket tablosu içinde bulunan bilgisayar kategorisine ait bilgileri getirir(2 alt sorgu ile)
select * from tbl_movement where product_id in (select product_id from tbl_products where category_id=(select category_id from tbl_categories where category_name='Bilgisayar'))

--Þehri adana olan müþterilerin yaptýðý hareketleri görüntüleyen tablo
select * from tbl_movement where customer_id in (select customer_id from tbl_customer where customer_city='Adana')

--Beyaz eþya kategorindeki ürünlere ait hareketleri getirir
select * from tbl_movement where product_id in (select product_id from tbl_products where category_id=(select category_id from tbl_categories where category_name='Beyaz Eþya'))

