--DATEADD KOMUTU
--1.Parametre: Ne eklenecek (AY-YIL-G�N)
--2.Parametre: Ne kadar eklenecek
--3.Parametre: Nereye eklenecek
--2023 y�l�na 3 y�l ekler
select DATEADD(YEAR,3,'2023.01.01')

--Bug�n�n �zerine 45 g�n ekler
select DATEADD(DAY, 45, GETDATE())

--Bug�n�n �zerine 450 ay ekler
select DATEADD(MONTH, 450, GETDATE())
