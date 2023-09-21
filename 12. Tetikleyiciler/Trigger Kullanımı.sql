--TRIGGER KULLANIMI
--Trigger kullanarak hareket tablosuna her yeni kayıt eklendiğinde sayaç tablosundaki işlem isimli stunun değeri 1 artacak
CREATE TRIGGER islemartis
on tbl_movement    --Hareket tablosunda çalışacak
after INSERT       --Insert yapıldıktan sonra
AS
UPDATE tbl_counter set process=process+1