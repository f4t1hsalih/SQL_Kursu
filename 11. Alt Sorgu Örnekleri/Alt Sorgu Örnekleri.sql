--Alt Sorgu �rnekleri
--Hareket tablosu i�inde bulunan bilgisayar kategorisine ait bilgileri getirir
select * from tbl_movement where product_id in (select product_id from tbl_products where category_id=1)

--Hareket tablosu i�inde bulunan bilgisayar kategorisine ait bilgileri getirir(2 alt sorgu ile)
select * from tbl_movement where product_id in (select product_id from tbl_products where category_id=(select category_id from tbl_categories where category_name='Bilgisayar'))

--�ehri adana olan m��terilerin yapt��� hareketleri g�r�nt�leyen tablo
select * from tbl_movement where customer_id in (select customer_id from tbl_customer where customer_city='Adana')

--Beyaz e�ya kategorindeki �r�nlere ait hareketleri getirir
select * from tbl_movement where product_id in (select product_id from tbl_products where category_id=(select category_id from tbl_categories where category_name='Beyaz E�ya'))

