--DATEDIFF KOMUTU
--Getdate() --> Bugünün tarihini verir
--1.Parametre: Ne cinsinden geri dönüþ deðeri alacaðýz (GÜN-AY-YIL)
--2.Parametre: Baþlangýç Tarihi
--3.Parametre: Bitiþ Tarihi
--Ýki tarih arasýndaki farký yýl cinsinden verir
select DATEDIFF(YEAR,'2010.01.01',GETDATE())

--Ýki tarih arasýndaki farký ay cinsinden verir
select DATEDIFF(MONTH,'2010.01.01','2015.08.06')

--Ýki tarih arasýndaki farký gün cinsinden verir
select DATEDIFF(DAY,'2010.01.01','2015.08.06')

--Hareketler tablosundaki tarihler ile bugün arasýndaki farklar gün cinsinden
select DATEDIFF(DAY,date,GETDATE()) from tbl_movement
