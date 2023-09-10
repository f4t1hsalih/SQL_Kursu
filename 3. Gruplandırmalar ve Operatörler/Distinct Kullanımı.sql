--DISTINCT KOMUTU
--Tekrarsýz olarak öðrencilerin þehirlerini getirir
select distinct std_city from tbl_students

--Tekrarsýz olarak öðrencilerin þehirlerini sayar
select COUNT(distinct(std_city)) from tbl_students

--Tekrarsýz olarak öðrencilerin kulüplerini getirir
select distinct std_club from tbl_students