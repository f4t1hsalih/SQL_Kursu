--DISTINCT KOMUTU
--Tekrarsız olarak öğrencilerin şehirlerini getirir
select distinct std_city from tbl_students

--Tekrarsız olarak öğrencilerin şehirlerini sayar
select COUNT(distinct(std_city)) from tbl_students

--Tekrarsız olarak öğrencilerin kulüplerini getirir
select distinct std_club from tbl_students