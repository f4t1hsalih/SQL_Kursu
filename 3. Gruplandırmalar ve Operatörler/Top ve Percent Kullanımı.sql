--TOP ve PERCENT KOMUTLARI
--Top ile en �stteki 4 ��renciyi getirir
select top 4 * from tbl_students

--Top komutu ile en sondaki 4 ��renxiyi getirir
select top 4 * from tbl_students order by std_id desc

--��renciler tablosunda bulunan kay�tlar�n en �stten y�zde 60 �n� getirir
select top 60 percent * from tbl_students