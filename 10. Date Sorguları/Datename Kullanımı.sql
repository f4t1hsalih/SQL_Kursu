--DATENAME KOMUTU
--�u anki ay� getirir
select DATENAME(MONTH,GETDATE())

--2023 Y�l�n�n 1. ay�n�n 15. g�n� ka��nc� aya denk geliyor
select DATENAME(MONTH,'2023.01.15')

--2023 Y�l�n�n 1. ay�n�n 15. g�n� hangi g�ne denk geliyor
select DATENAME(WEEKDAY,'2023.01.15')
