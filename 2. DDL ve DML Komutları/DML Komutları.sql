--SELECT KOMUTU
--Bütün tabloyu getirmeye yarar
select * from tbl_students

--Sadece a ve soyad bölümlerini getirir
select std_name, std_surname from tbl_students

--Sadece ismi Ali olan öðrencileri getirecek
select * from tbl_students where std_name = 'Ali'

--Ýsmi Ali olan öðrencilerin Þehirlerini getirecek
select std_city from tbl_students where std_name = 'Ali'

--And birden fazla þartýn tamamýnýn karþýlanmasý gerektiði durumlarda kullanýlýr
select * from tbl_students where std_city='Adana' and std_club='Kitaplýk'

--Or birden fazla koþulun her birinin olabileceði durumda kullanýlýr
select * from tbl_students where std_city='Adana' or std_club='Satranç'

--INSERT KOMUTU
--Insert Into ile tabloya veri eklendi
insert into tbl_students(std_name, std_surname, std_city) values ('Baran', 'Yücedað', 'Elazýð')
insert into tbl_notes (std_id, lesson_id, exam1, exam3) values (6, 2, 88, 67)

--DELETE KOMUTU
--Delete komutu ile tüm dersleri siler
delete from tbl_lessons

--id numarasý 6 olan dersi siler
delete from tbl_lessons where lesson_id = 6

--Truncate Komutu
--Truncate Table ile tablo tamamen sýfýrlanýr
truncate table tbl_lessons
