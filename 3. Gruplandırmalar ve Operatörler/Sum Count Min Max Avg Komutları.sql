--COUNT KOMUTU
--Toplam kayıt sayısını getirir
Select count(*) as 'Toplam Kayıt' from tbl_students

--Adana'da kaç kişi olduğunu getirir
select count(*) as 'Toplam Kişi' from tbl_students where std_city = 'Adana'

--SUM KOMUTU
--Birinci sınav için tüm öğrencilerin notlarının toplamını verir
select sum(exam1) from tbl_notes

--AVG KOMUTU
--Birinci sınav için tam öğrencilerin notlarının ortalamasını verir
select avg(exam1) from tbl_notes

--MAX KOMUTU
--Birinci sınav için tüm öğrencilerin notlarınından en yüksek olanı verir
select max(exam1) from tbl_notes

--MİN KOMUTU
--Birinci sınav için tüm öğrencilerin notlarınından en düşük olanı verir
select min(exam1) from tbl_notes