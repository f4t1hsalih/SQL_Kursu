--MUTLAK DE�ER (ABS) KULLANIMI
--Abs kullanarak negatif bir de�eri pozitif olarak g�sterir
select ABS(-92) as 'Mutlak'

--�S ALMA (POWER) KULLANIMI
--Power komutu ile �s alma i�lemi yapar
select POWER(3, 3) as '�s'

--S�nav1 deki notlar�n karesini al�r
select power(exam1,2) from tbl_notes

--KAREK�K BULMA (SQRT) KULLANIMI
--Sqrt komutu ile karek�k bulma i�lemi yapar
select SQRT(144) as 'Karek�k'

--TABANA ve TAVANA YUVARLAMA
--Floor komutu ile tabana yuvarlar
select FLOOR(4.86) as 'Taban'

--Ceiling komutu ile tavana yuvarlar
select CEILING(4.86) as 'Tavan'