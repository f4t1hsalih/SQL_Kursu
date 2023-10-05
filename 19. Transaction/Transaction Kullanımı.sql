--TRANSACT�ON KULLANIMI

--Transaction: ��lemlerde hatal� durumlar olu�tu�unda i�lemleri yapmam�� gibi ba�a almaya yarar.

--2 tane �r�n� kategoriler tablosuna ekler ve daha sonra rollback'i g�r�nce kay�tlar� tekrar ��kar�r
begin transaction
insert into tbl_categories (category_name) values ('TV')
insert into tbl_categories (category_name) values ('Hal�')
select * from tbl_categories
rollback

--Commitin �st�nde bulunan i�lemlerin tamam� olumlu bir �ekilde yap�l�rsa i�lemler rollback olmadan kaydedilir
begin transaction
insert into tbl_products(product_name, product_stock) values ('�R�N1', 25)
insert into tbl_products(product_name, product_stock) values ('�R�N2', 40)
select * from tbl_products
commit

--��lemlerden biri hata verdi�inden kay�tlar�n hi�biri ger�ekle�tirilmez
begin transaction
insert into tbl_products(product_name, product_stock) values ('�R�N3', 10)
insert into tbl_products(product_name, product_stock) values ('�R�N4', 'A')
select * from tbl_products
commit