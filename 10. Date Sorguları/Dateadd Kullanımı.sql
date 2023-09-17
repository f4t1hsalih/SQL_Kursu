--DATEADD KOMUTU
--1.Parametre: Ne eklenecek (AY-YIL-GÜN)
--2.Parametre: Ne kadar eklenecek
--3.Parametre: Nereye eklenecek
--2023 yýlýna 3 yýl ekler
select DATEADD(YEAR,3,'2023.01.01')

--Bugünün üzerine 45 gün ekler
select DATEADD(DAY, 45, GETDATE())

--Bugünün üzerine 450 ay ekler
select DATEADD(MONTH, 450, GETDATE())
