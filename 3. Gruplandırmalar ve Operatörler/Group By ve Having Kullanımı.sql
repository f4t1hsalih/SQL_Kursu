--GROUP BY KOMUTU
--Hangi �ehirde ka� ��renci oldu�unu bulur
Select std_city as '�ehir', COUNT(*) as 'Toplam' from tbl_students group by std_city

--K�z ve Erkek ��renci say�s�n� bulur
select std_gender, COUNT(*) from tbl_students group by std_gender

--Her kul�pten ki�i say�s�n� getirir
select std_club, COUNT(*) from tbl_students group by std_club

--2 ��renciye sahip olan �ehirleri getirir
select std_city, COUNT(*) from tbl_students group by std_city having count(*) = 2

--Kul�pler aras�nda kitapl�k kul�b�ne kay�tl� ki�i say�s�n� getirir
select std_club, COUNT(*) from tbl_students group by std_club having std_club='Kitapl�k'