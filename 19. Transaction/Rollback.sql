--TRANSACT�ON KULLANIMI

--Transaction: ��lemlerde hatal� durumlar olu�tu�unda i�lemleri yapmam�� gibi ba�a almaya yarar.

--2 tane �r�n� kategoriler tablosuna ekler ve daha sonra rollback'i g�r�nce kay�tlar� tekrar ��kar�r
begin transaction
insert into tbl_categories (category_name) values ('TV')
insert into tbl_categories (category_name) values ('Hal�')
select * from tbl_categories
rollback

