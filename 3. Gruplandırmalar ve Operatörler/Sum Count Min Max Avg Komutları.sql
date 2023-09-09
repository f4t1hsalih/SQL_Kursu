--COUNT KOMUTU
--Toplam kay�t say�s�n� getirir
Select count(*) as 'Toplam Kay�t' from tbl_students

--Adana'da ka� ki�i oldu�unu getirir
select count(*) as 'Toplam Ki�i' from tbl_students where std_city = 'Adana'

--SUM KOMUTU
--Birinci s�nav i�in t�m ��rencilerin notlar�n�n toplam�n� verir
select sum(exam1) from tbl_notes

--AVG KOMUTU
--Birinci s�nav i�in t�m ��rencilerin notlar�n�n ortalamas�n� verir
select avg(exam1) from tbl_notes

--MAX KOMUTU
--Birinci s�nav i�in t�m ��rencilerin notlar�n�ndan en y�ksek olan� verir
select max(exam1) from tbl_notes

--M�N KOMUTU
--Birinci s�nav i�in t�m ��rencilerin notlar�n�ndan en d���k olan� verir
select min(exam1) from tbl_notes