--Alt Sorgu �rnekleri
--Hareket tablosu i�inde bulunan bilgisayar kategorisine ait bilgileri getirir
select * from tbl_movement where product_id in (select product_id from tbl_products where category_id=1)

--Hareket tablosu i�inde bulunan bilgisayar kategorisine ait bilgileri getirir(2 alt sorgu ile)
select * from tbl_movement where product_id in (select product_id from tbl_products where category_id=(select category_id from tbl_categories where category_name='Bilgisayar'))

--�ehri adana olan m��terilerin yapt��� hareketleri g�r�nt�leyen tablo
select * from tbl_movement where customer_id in (select customer_id from tbl_customer where customer_city='Adana')

--Beyaz e�ya kategorindeki �r�nlere ait hareketleri getirir
select * from tbl_movement where product_id in (select product_id from tbl_products where category_id=(select category_id from tbl_categories where category_name='Beyaz E�ya'))

--Adana ve Ankaradaki m��terilerin toplam yapt��� al��veri�in tutar�
select sum(amount) from tbl_movement where customer_id in (select customer_id from tbl_customer where customer_city='Adana' or customer_city = 'Ankara')

--Sat�lan �r�nlerin say�s�n�n �r�n tablosundan d��mesi i�in update sorgusu
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=1) where product_id=1
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=2) where product_id=2
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=3) where product_id=3
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=4) where product_id=4
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=5) where product_id=5
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=6) where product_id=6
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=7) where product_id=7
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=8) where product_id=8
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=9) where product_id=9
update tbl_products set product_stock=product_stock-(select sum(piece) from tbl_movement where product_id=10) where product_id=10

