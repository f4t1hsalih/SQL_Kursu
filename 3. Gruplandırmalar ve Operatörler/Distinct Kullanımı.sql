--DISTINCT KOMUTU
--Tekrars�z olarak ��rencilerin �ehirlerini getirir
select distinct std_city from tbl_students

--Tekrars�z olarak ��rencilerin �ehirlerini sayar
select COUNT(distinct(std_city)) from tbl_students

--Tekrars�z olarak ��rencilerin kul�plerini getirir
select distinct std_club from tbl_students