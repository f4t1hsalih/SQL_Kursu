--LEFT JOIN
--Left join ile iki tablo birle�tirildi ve iki tablodan tbl_notes daki t�m de�erler
--ve tbl_students daki ortak de�erler getirildi.
select * from tbl_notes
left join tbl_students
on tbl_notes.std_id = tbl_students.std_id