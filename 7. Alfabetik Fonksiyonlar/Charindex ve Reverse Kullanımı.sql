--CHARINDEX KOMUTU
--Cahrindex ile a harfinin kaçýncý sýrada olduðunu bulur
select CHARINDEX('a', 'SQL Komutlarýný Öðreniyorum')

--n harfinin kaçýncý sýrada olduðunu bulmaya yarar 15. karekterden sonrasý için bakar
select CHARINDEX('n', 'SQL Komutlarýný Öðreniyorum', 15)

--Öðrenci adlarýnda a harfi kaçýncý sýrada bulunur
select CHARINDEX('a', std_name), std_name from tbl_students

--REVERSE KOMUTU
--Reverse ile metin tersten yazdýrýlýr
select REVERSE('Ali')

--Ders adlarýný tersten yazdýrýr
select REVERSE(lesson_name) from tbl_lessons