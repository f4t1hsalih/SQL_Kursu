--ORDER BY KOMUTU
--Öðrenci adýna göre sýralar(varsayýlan olarak asc'dir(A'dan Z'ye))
select * from tbl_students order by std_name
select * from tbl_students order by std_name asc

--Öðrenci adýna göre sýralar(Z'den A'ya)
select * from tbl_students order by std_name desc

--Öðrenci kulüplerini Z'den A'ya doðru sýralar
select distinct std_club from tbl_students order by std_club desc