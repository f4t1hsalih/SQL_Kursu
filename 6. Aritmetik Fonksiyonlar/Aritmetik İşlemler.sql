--AR�TMET�K ��LEMLER
--select komutu ile aritmetik i�lem yapt�rma
select 20+5 as 'Toplam', 20-5 as 'Fark', 20*5 as '�arp�m', 20/5 as 'B�l�m'

--ders 1'in s�nav 2 sine ait notlar�n tamam�na 10 puan ekler
update tbl_notes set exam2 = exam2 + 10 from tbl_notes where lesson_id=1

--exam 2 den 100 puan�n �zerinde alan ��rencilerin notlar�n� 100 yapar
update tbl_notes set exam2 = 100 where exam2 > 100

--1 numaral� dersin ortalamas�n� verir
select avg(average) from tbl_notes where lesson_id = 1
