--DE���KENL� TR�GGER KULLANIMI

--Yeni eklenen �r�n�n stok adetini de�i�kene atar ve bu de�i�kendeki de�eri toplam �r�n adetine ekler
create trigger arttir
on tbl_products
after insert
as
declare @stoksayi int
--Ekleme i�lemi yap�l���nda stoksayi isimli de�i�kene �r�n stok de�erini atar
select @stoksayi = product_stock from inserted
update tbl_stock set total_product += @stoksayi


--Bir �r�n silindi�i zaman �r�n stok adetini toplam stokdan d��er
create trigger azalt
on tbl_products
after delete
as
declare @stoksayi int
--Silme i�lemi yap�l���nda stoksayi isimli de�i�kene �r�n stok de�erini atar
select @stoksayi = product_stock from deleted
update tbl_stock set total_product -= @stoksayi

--Kod ile �r�n ekleme
insert into tbl_products (product_name, product_stock) values ('Mixer', 80)

