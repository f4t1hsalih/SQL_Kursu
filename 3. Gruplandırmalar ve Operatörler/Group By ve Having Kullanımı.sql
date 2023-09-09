--GROUP BY KOMUTU
--Hangi þehirde kaç öðrenci olduðunu bulur
Select std_city as 'Þehir', COUNT(*) as 'Toplam' from tbl_students group by std_city

--Kýz ve Erkek öðrenci sayýsýný bulur
select std_gender, COUNT(*) from tbl_students group by std_gender

--Her kulüpten kiþi sayýsýný getirir
select std_club, COUNT(*) from tbl_students group by std_club

--2 Öðrenciye sahip olan þehirleri getirir
select std_city, COUNT(*) from tbl_students group by std_city having count(*) = 2

--Kulüpler arasýnda kitaplýk kulübüne kayýtlý kiþi sayýsýný getirir
select std_club, COUNT(*) from tbl_students group by std_club having std_club='Kitaplýk'