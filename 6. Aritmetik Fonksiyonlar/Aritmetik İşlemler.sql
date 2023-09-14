--ARÝTMETÝK ÝÞLEMLER
--select komutu ile aritmetik iþlem yaptýrma
select 20+5 as 'Toplam', 20-5 as 'Fark', 20*5 as 'Çarpým', 20/5 as 'Bölüm'

--ders 1'in sýnav 2 sine ait notlarýn tamamýna 10 puan ekler
update tbl_notes set exam2 = exam2 + 10 from tbl_notes where lesson_id=1

--exam 2 den 100 puanýn üzerinde alan öðrencilerin notlarýný 100 yapar
update tbl_notes set exam2 = 100 where exam2 > 100

--1 numaralý dersin ortalamasýný verir
select avg(average) from tbl_notes where lesson_id = 1
