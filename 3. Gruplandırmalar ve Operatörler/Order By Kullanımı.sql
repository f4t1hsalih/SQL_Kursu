--ORDER BY KOMUTU
--��renci ad�na g�re s�ralar(varsay�lan olarak asc'dir(A'dan Z'ye))
select * from tbl_students order by std_name
select * from tbl_students order by std_name asc

--��renci ad�na g�re s�ralar(Z'den A'ya)
select * from tbl_students order by std_name desc

--��renci kul�plerini Z'den A'ya do�ru s�ralar
select distinct std_club from tbl_students order by std_club desc