--FULL JOIN
--Her iki tabloyuda e�le�tirir ve t�m de�erleri getirir
select * from tbl_notes
full join tbl_students
on tbl_notes.std_id = tbl_students.std_id