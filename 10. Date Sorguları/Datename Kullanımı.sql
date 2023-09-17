--DATENAME KOMUTU
--Þu anki ayý getirir
select DATENAME(MONTH,GETDATE())

--2023 Yýlýnýn 1. ayýnýn 15. günü kaçýncý aya denk geliyor
select DATENAME(MONTH,'2023.01.15')

--2023 Yýlýnýn 1. ayýnýn 15. günü hangi güne denk geliyor
select DATENAME(WEEKDAY,'2023.01.15')
