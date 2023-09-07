--Bütün tabloyu getirmeye yarar
select * from tbl_students

--Sadece a ve soyad bölümlerini getirir
select std_name, std_surname from tbl_students

--Sadece ismi Ali olan öðrencileri getirecek
select * from tbl_students where std_name = 'Ali'

--Ýsmi Ali olan öðrencilerin Þehirlerini getirecek
select std_city from tbl_students where std_name = 'Ali'