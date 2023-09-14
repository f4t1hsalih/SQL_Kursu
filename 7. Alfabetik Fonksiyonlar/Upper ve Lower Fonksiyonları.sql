--UPPER KOMUTU
--Upper komutu ile mesajý büyük harflerle yazdýrýr
select UPPER('merhaba') as 'Büyü Harf'

--Öðrencilerin adlarýný büyük harfe çevirir
select UPPER(std_name) as 'Öðrenci Adý' from tbl_students

--LOWER KOMUTU
--Lower komutu ile öðrencilerin adýný küçük harf ile yazar
select LOWER(std_name) as 'Öðrenci Adý' from tbl_students

--Ödev
--Þehri Adana ve Kulübü Biliþim olan öðrencinin adýný büyük soyadýný küçük harfle getir
select upper(std_name) as 'Öðrenci Adý', LOWER(std_surname) from tbl_students
where std_city='Adana' and std_club=(select club_id from tbl_club where club_name='Biliþim')