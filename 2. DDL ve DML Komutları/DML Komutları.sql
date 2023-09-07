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

