--CHARINDEX KOMUTU
--Cahrindex ile a harfinin ka��nc� s�rada oldu�unu bulur
select CHARINDEX('a', 'SQL Komutlar�n� ��reniyorum')

--n harfinin ka��nc� s�rada oldu�unu bulmaya yarar 15. karekterden sonras� i�in bakar
select CHARINDEX('n', 'SQL Komutlar�n� ��reniyorum', 15)

--��renci adlar�nda a harfi ka��nc� s�rada bulunur
select CHARINDEX('a', std_name), std_name from tbl_students

--REVERSE KOMUTU
--Reverse ile metin tersten yazd�r�l�r
select REVERSE('Ali')

--Ders adlar�n� tersten yazd�r�r
select REVERSE(lesson_name) from tbl_lessons