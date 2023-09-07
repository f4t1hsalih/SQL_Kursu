--SELECT KOMUTU
--B�t�n tabloyu getirmeye yarar
select * from tbl_students

--Sadece a ve soyad b�l�mlerini getirir
select std_name, std_surname from tbl_students

--Sadece ismi Ali olan ��rencileri getirecek
select * from tbl_students where std_name = 'Ali'

--�smi Ali olan ��rencilerin �ehirlerini getirecek
select std_city from tbl_students where std_name = 'Ali'

--And birden fazla �art�n tamam�n�n kar��lanmas� gerekti�i durumlarda kullan�l�r
select * from tbl_students where std_city='Adana' and std_club='Kitapl�k'

--Or birden fazla ko�ulun her birinin olabilece�i durumda kullan�l�r
select * from tbl_students where std_city='Adana' or std_club='Satran�'

--INSERT KOMUTU
--Insert Into ile tabloya veri eklendi
insert into tbl_students(std_name, std_surname, std_city) values ('Baran', 'Y�ceda�', 'Elaz��')
insert into tbl_notes (std_id, lesson_id, exam1, exam3) values (6, 2, 88, 67)

--DELETE KOMUTU
--Delete komutu ile t�m dersleri siler
delete from tbl_lessons

--id numaras� 6 olan dersi siler
delete from tbl_lessons where lesson_id = 6

--Truncate Komutu
--Truncate Table ile tablo tamamen s�f�rlan�r
truncate table tbl_lessons
