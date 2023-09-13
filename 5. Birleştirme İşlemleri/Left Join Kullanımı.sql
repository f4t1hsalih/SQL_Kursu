--LEFT JOIN
--Left join ile iki tablo birleþtirildi ve iki tablodan tbl_notes daki tüm deðerler
--ve tbl_students daki ortak deðerler getirildi.
select * from tbl_notes
left join tbl_students
on tbl_notes.std_id = tbl_students.std_id