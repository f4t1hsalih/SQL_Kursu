--B�t�n tabloyu getirmeye yarar
select * from tbl_students

--Sadece a ve soyad b�l�mlerini getirir
select std_name, std_surname from tbl_students

--Sadece ismi Ali olan ��rencileri getirecek
select * from tbl_students where std_name = 'Ali'

--�smi Ali olan ��rencilerin �ehirlerini getirecek
select std_city from tbl_students where std_name = 'Ali'