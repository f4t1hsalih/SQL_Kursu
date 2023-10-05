--Stokdaki toplam �r�n say�s�n� g�nceller
update tbl_stock set total_product=(select count(*) from tbl_products)

--�r�n say�s� artt�k�a otomatik olarak artan bir trigger olu�turuldu
create trigger Arttir
on tbl_products
after insert
as
update tbl_stock set total_product+=1

--Trigger'� silme i�lemi
drop trigger arttir

--Stokdaki toplam �r�n say�s�n� �r�n sto�u adeti ile g�nceller
update tbl_stock set total_product=(select sum(product_stock) from tbl_products)

