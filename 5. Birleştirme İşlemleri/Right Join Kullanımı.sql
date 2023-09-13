--RIGHT JOIN
--Right join ile iki tablo birleþtirildi ve iki tablodan tbl_notes daki eþleþen deðerler
--ve tbl_students daki tüm deðerler getirildi.
select * from tbl_notes
right join tbl_students
on tbl_notes.std_id = tbl_students.std_id