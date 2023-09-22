--TRIGGER KULLANIMI
--Trigger kullanarak hareket tablosuna her yeni kayıt eklendiğinde sayaç tablosundaki işlem isimli stunun değeri 1 artacak
CREATE TRIGGER islemartis
on tbl_movement    --Hareket tablosunda çalışacak
after INSERT       --Insert yapıldıktan sonra
AS
UPDATE tbl_counter set process=process+1

--Trigger kullanarak kategoriler tablosuna her yeni kayıt eklendiğinde toplamKategori tablosundaki adet isimli stunun değeri 1 artacak
CREATE TRIGGER kategoriartis
on tbl_categories    --Kategoriler tablosunda çalışacak
after INSERT         --Insert yapıldıktan sonra
AS
UPDATE tbl_totalCategory set piece+=+1

--Trigger kullanarak kategoriler tablosuna her yeni bir kayıt silindiğinde toplamKategori tablosundaki adet isimli stunun değeri 1 azaltır
CREATE TRIGGER kategoriazalis
on tbl_categories
after DELETE
AS
update tbl_totalCategory set piece -= 1