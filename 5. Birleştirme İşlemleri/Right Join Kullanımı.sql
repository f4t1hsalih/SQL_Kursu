--RIGHT JOIN
--Right join ile iki tablo birle�tirildi ve iki tablodan tbl_notes daki e�le�en de�erler
--ve tbl_students daki t�m de�erler getirildi.
select * from tbl_notes
right join tbl_students
on tbl_notes.std_id = tbl_students.std_id