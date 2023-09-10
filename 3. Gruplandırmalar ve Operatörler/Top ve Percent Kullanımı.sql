--TOP ve PERCENT KOMUTLARI
--Top ile en üstteki 4 öðrenciyi getirir
select top 4 * from tbl_students

--Top komutu ile en sondaki 4 öðrenxiyi getirir
select top 4 * from tbl_students order by std_id desc

--Öðrenciler tablosunda bulunan kayýtlarýn en üstten yüzde 60 ýný getirir
select top 60 percent * from tbl_students