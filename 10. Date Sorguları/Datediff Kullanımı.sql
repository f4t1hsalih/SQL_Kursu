--DATEDIFF KOMUTU
--Getdate() --> Bug�n�n tarihini verir
--1.Parametre: Ne cinsinden geri d�n�� de�eri alaca��z (G�N-AY-YIL)
--2.Parametre: Ba�lang�� Tarihi
--3.Parametre: Biti� Tarihi
--�ki tarih aras�ndaki fark� y�l cinsinden verir
select DATEDIFF(YEAR,'2010.01.01',GETDATE())

--�ki tarih aras�ndaki fark� ay cinsinden verir
select DATEDIFF(MONTH,'2010.01.01','2015.08.06')

--�ki tarih aras�ndaki fark� g�n cinsinden verir
select DATEDIFF(DAY,'2010.01.01','2015.08.06')

--Hareketler tablosundaki tarihler ile bug�n aras�ndaki farklar g�n cinsinden
select DATEDIFF(DAY,date,GETDATE()) from tbl_movement
